// 创建路由
const router = require('express').Router();
// 接口名称
const apiName = 'answer';
// 引入数据库
const db = require('../db');

// 添加
router.post(`/${apiName}`, (req, res) => {
    /* 接口数据并验证 */
    let ques_id = req.body.ques_id || ''; // 回答的问题id
    let user_id = req.body.user_id || ''; // 回答者id
    let content = req.body.content; //回答内容
    let time = new Date(); // 回答时间
    let agree = req.body.agree || 0; // 赞同数
    let disagree = req.body.disagree || 0; // 不赞同数
    // 问题名称
    let question = req.body.question;
    // 回答者昵称
    let nickname = req.body.nickname;

    if (content.length == 0) {
        res.json({
            "code": 400,
            "error": "回答内容不能为空"
        })
        return
    }

    /** 插入到数据库中 */
    let sql = "INSERT INTO answer SET ?";
    let data = {
        ques_id,
        user_id,
        content,
        time: new Date(),
        agree,
        disagree,
        question,
        nickname
    }
    db.query(sql, data, (error, results, fields) => {
        if (error) {
            res.json({
                "code": 400,
                "error": "添加失败！"
            })
            console.log(error);
            return
        }
        // 查询该回答的id
        let sql2 = `select * from answer where user_id = ${user_id} order by time desc limit 1`;
        db.query(sql2, (error2, results2) => {
            if (error) return console.log(error);
            res.json({
                "code": 200,
                "answer_id": results2[0].id
            })
        })
    })
})

// 删除
router.delete(`/${apiName}/:id(\\d+)`, (req, res) => {
    let id = req.params.id;
    let sql = `DELETE FROM answer WHERE id = ?`;
    db.query(sql, id, (error, results, fields) => {
        if (error) {
            res.json({
                'code': 400,
                'error': error.message
            })
        } else {
            res.json({
                'code': 200
            })
        }
    })
});

// 查询单个 ，根据 用户id 

router.get(`/${apiName}_user/:id`, (req, res) => {
    let id = req.params.id
    let sql = 'SELECT *FROM answer WHERE user_id = ? order by time'
    db.query(sql, [id], (error, results, fields) => {
        if (error) {
            res.json({
                "code": 400,
                "error": error.message
            })
        } else {
            res.json({
                "code": 200,
                "data": results
            })
        }
    })

})



// 查询多个
// 根据问题id查询多个
router.get(`/${apiName}`, (req, res) => {
    // 接收查询参数
    let page = req.query.page || 1;
    let per_page = req.query.per_page || 5;
    let ques_id = req.query.ques_id;
    let sortway = req.query.sortway || 'desc';



    /** 根据查询参数拼 SQL 语句 */
    let where = `WHERE ques_id = ${ques_id}`;
    let data = [];
    // if (name) {
    //     where = `WHERE answer LIKE ?`
    //     data[0] = `%${name}%`
    // }

    // 排序
    let order = `ORDER BY id ${sortway}`;

    // 翻页
    let offset = (page - 1) * per_page;
    let limit = `LIMIT ${offset},${per_page}`;

    // 查询总的记录数
    let sql1 = `SELECT count(*) total FROM answer ${where}`
    db.query(sql1, data, (err, results, fields) => {
        if (err) return res.json({ "code": 400 })
        // 总的记录数
        let total = results[0].total;

        // 查询数据
        let sql2 = `SELECT * FROM answer ${where} ${order} ${limit}`
        db.query(sql2, data, (err, results, fields) => {
            if (err) return res.json({ "code": 400 })
            res.json({
                "code": 200,
                "total": total,
                "data": results
            })
        })
    })
})

// 主页查询
router.get(`/${apiName}_index`, (req, res) => {
    // 接收查询参数
    let num = Number(req.query.limit) || 10;



    // 随机查询数据
    let sql1 = `SELECT * FROM ANSWER limit ${num}`;
    // 查询数据
    db.query(sql1, (error, results, fields) => {
        if (error) return console.log(error);
        res.json({
            "code": 200,
            "data": results
        })
    })
})

// 修改
router.put(`/${apiName}/:id(\\d+)`, (req, res) => {
    let id = req.params.id;
    /** 接口数据并验证 */
    console.log(req.body);

    let sql1 = `select * from answer where id = ${id}`
    db.query(sql1, (error1, results1) => {
        if (error1) return console.log(error1);
        let content = req.body.content || results1[0].content;
        let agree = Number(req.body.agree) || results1[0].agree;
        let disagree = Number(req.body.agree) || results1[0].disagree;

        let data = {
            content,
            agree,
            disagree
        }
        /** 修改到数据库中 */
        let sql2 = `UPDATE answer SET ? WHERE id = ?`;
        // 执行SQL
        db.query(sql2, [data, id], (error2, results2, fields) => {
            console.log(results2);
            if (error2) {
                res.json({
                    "code": 400,
                    "error": error2.message
                })
                console.log(error2);
            } else {
                res.json({
                    "code": 200
                })
            }
        })
    })
})

// 导出路由
module.exports = router;