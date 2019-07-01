const express = require('express')
const mysql = require('mysql')
const router = express.Router()

const conn = mysql.createConnection({
    host: "127.0.0.1",
    user: "root",
    password: "root",
    database: "hero",
    // 开启执行多条Sql语句的功能
    multipleStatements: true
})

// 1.0 监听首页的渲染请求
router.get("/getAll", (req, res) => {
    // 1.1 获取请求数据
    let body = req.query
    // 1.2 编辑sql语句
    let sql = "SELECT c.id,c.callerName,c.callerImg,c.`desc`,s.`name`,s.age FROM callerskill c\
    LEFT JOIN stu_info s ON s.id = c.otherInfo\
    LIMIT ?, ?;SELECT COUNT(id) as count FROM callerskill"
    // 1.3 执行sql语句
    conn.query(sql, [(body.currentPage - 1) * body.pageSize, parseInt(body.pageSize)], (err, result) => {
        if(err) return res.send({ code: 500, "msg": "数据库连接失败" })
        if(result.length <= 0)  return res.send({ code: 501, "msg": "查询结果集为空" })
        let totalPage = Math.ceil(result[1][0].count / body.pageSize)
        res.send({ code: 200, "msg": "查询成功", data: result[0], total: totalPage })
    })
})


module.exports = router