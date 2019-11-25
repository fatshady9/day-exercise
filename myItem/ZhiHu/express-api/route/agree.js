// 创建路由
const router = require('express').Router();
// 接口名称
const apiName = 'agree';
// 引入数据库
const db = require('../db');

// 添加
router.post(`/${apiName}`, (req, res) => {
    /* 接口数据并验证 */
    let answer_id = req.body.answer_id || ''; // 赞同的回答id
    let user_id = req.body.user_id || ''; // 赞同者id
    let time = new Date(); // 赞同时间
    let status = req.body.status || ''; // 状态(赞同-0，反对-1，取消-2)

    if (status.length == 0) {
        res.json({
            "code": 400,
            "error": "状态不能为空"
        })
        return
    }

    /** 插入到数据库中 */
    let sql = "INSERT INTO agree SET ?";
    let data = {
        answer_id,
        user_id,
        time,
        status
    }
    db.query(sql, data, (error, results, fields) => {
        if (error) {
            console.log(error);
            res.json({
                "code": 400,
                "error": "添加失败！"
            })
        } else {
            res.json({
                "code": 200
            })
        }
    })
})

// 查询
// let str = 'select * from agree where answer_id = ? and user_id = ?'
router.get(`/${apiName}`, (req, res) => {
    
    // let id = req.params.id;
    let sql = `select * from agree where answer_id = ? and user_id = ?`;
    let answer_id = Number(req.query.answer_id)
    let user_id = Number(req.query.user_id)
    // let time= new Date()
    let data = [
        answer_id,
        user_id,
        // time:time,
        // status:0
    ]
    db.query(sql, data, (error, results, fields) => {
        if (error) {
            res.json({
                "code": 400,
                "error": error.message
            })
        } else {
            res.json({
                "code": 200,
                "data": results[0]
            })
        }
    })
})

// 导出路由
module.exports = router;