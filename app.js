const express=require('express');
const app=express();
const md5=require('md5');
const cors=require('cors');
const bodyParser=require('body-parser');
const mysql=require('mysql');
const pool=mysql.createPool({
    //Mysql数据库服务器地址
    host:'127.0.0.1',
    //端口号
    port:'3306',
    //数据库用户的用户名
    user:'root',
    //数据库用户的密码
    password:'',
    //数据库名称
    database:'gspro',
    //最大连接次数
    connectionLimit:10
})

//cors跨域
app.use(cors({
    origin:['http://127.0.0.1:8080','http://127.0.0.1:8081','http://localhost:8080','http://localhost:8081']
}));

//应用中间件
app.use(bodyParser.urlencoded({
    extended:false
}));

//获取房源分类的接口
app.get('/category',(req,res)=>{
    let sql='SELECT id,imgs FROM gspro_carousel';
    pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send({message:'查询成功',code:1,results:results});
        console.log(results);
    });
});

//用户注册的接口
app.post('/register',(req,res)=>{
    let username=req.body.username;
    let password=req.body.password;
    let sql='SELECT id FROM gspro_user WHERE username=?'
    pool.query(sql,[username],(err,results)=>{
        if(err) throw err;
        if(results.length == 0){
            sql = 'INSERT INTO gspro_user(username,password) VALUES(?,MD5(?))';
            poll.query(sql,[username,password],(err,results)=>{
                if(err) throw err;
                res.send({message:'注册成功',code:1});
            });
        }else{
            res.send({message:'注册失败',code:0});
        }
    });
});

//用户登录接口
app.post('/login',(req,res)=>{
    let username=req.body.username;
    let password=md5(req.body.password);
    let sql='SELSECT id,name,nickname,avatar FROM gspro_user WHERE username=? AND password=?'
    pool.query(sql,[username,password],(err,results)=>{
        if(err) throw err;
        if(results.length == 1){
            res.send({message:'登陆成功',code:1,info:results[0]});
        }else{
            res.send({message:'登陆失败',code:0})
        }
    })
})

app.listen(3000,()=>{
    console.log('server is runing...');
})