import Mock from "mockjs";

// 模拟分类接口
Mock.mock("http://localhost:9999/api/v1/categories", "get", {
  ok: 1,
  "data|10-20": [
    {
      "id|+1": 1,
      cat_name: "@ctitle"
    }
  ]
});

// 分类做题接口
Mock.mock(
  /http:\/\/localhost:9999\/api\/v1\/categories\/\d+\/question_count_info/,
  "get",
  {
    ok: 1,
    data: {
      total: 100,
      right: 93,
      wrong: 3,
      undo: 2
    }
  }
);

// 根据分类查询题目接口
Mock.mock(
  /http:\/\/localhost:9999\/api\/v1\/categories\/\d+\/questions\?type=(all|wrong|right|undo)/,
  "get",
  {
    ok: 1,
    "data|15-25": [
      {
        "id|+1": 1,
        title: "@ctitle",
        options: "@ctitle(5,10),@ctitle(5,10),@ctitle(5,10),@ctitle(5,10)",
        right: "@integer(0,3)",
        category_id: 1
      }
    ]
  }
);

// 排行榜接口
Mock.mock(/http:\/\/localhost:9999\/api\/v1\/questions\/topn\?\d+/, "get", {
  ok: 1,
  "data|80-160": [
    {
      username: "@cname",
      integral: "@integer(200, 1000)"
    }
  ]
});
