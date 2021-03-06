<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/11/25
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <meta charset="UTF-8">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/flash.js"></script>
    <script type="text/javascript" src="js/show.js"></script>
    <script type="text/javascript" src="js/drawer.js"></script>
    <link rel="stylesheet" href="css/top.css">
    <link rel="stylesheet" href="css/drawer.css">
    <link rel="stylesheet" href="css/tail.css">
    <title>表情搜索</title>
    <style>

        .main{
            width: 100%;
            margin-right: auto;
            margin-left: auto;
            margin-top: 12.5%;
            padding: 1.25% 1.25%;
            font-family: "宋体";
            font-size: 16px;
            color: #555;
        }
        .main div{
            margin-top: 30px;
        }
        .logo{
            text-align: center;
        }
        .search{
            text-align: center;
        }
        #textbox input{
            height:50px;
            width: 500px;
            color: gray;
            padding: 0 15px;
        }
        #submitbox input{
            height: 50px;
            width: 50px;
            background:black;
            color: white;

        }
        .heading{
            width: 550px;
            margin: auto;
            font-size:16px;
            font-weight: bold;
            text-align: center;
        }

        .heading a{
            font-size: 12px;
            color: gray;
            text-decoration: none;
            margin-left: 8px;
            float: left;

        }
        .heading a:hover{
            color: red;
        }
    </style>
</head>

<body>
<div class="top">
        <ul>
            <li>
                <a href="index.html" style="background: url(../../picture/logo.png) no-repeat 33%,5%;background-size: 100% 100%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </li>
            <li>
                <a href="index.html">最新套图</a>
            </li>
            <li>
                <a href="thelatest.html">最新表情</a>
            </li>
            <li>
                <a href="search.html">表情搜索</a>
            </li>
            <li>
                <a href="http://www.doutula.com/maker">
                    <b>表情制作</b>
                </a>
            </li>
            <li>
                <a href="contribute.html">表情投稿</a>
            </li>
            <li>
                <a href="#contact">联系我们</a>
                <ul>
                    <li>
                        <a href="#contact">合作相关</a>
                    </li>
                    <li>
                        <a href="#contact">意见反馈</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="commentPart.html">评论区</a>
            </li>
            <li>
                <a href="downloadPart.html">下载区</a>
            </li>
            <%
                session = request.getSession();
                if (session.getAttribute("isLogin")==null){
                    session.setAttribute("isLogin",false);
                }
                if ((boolean) session.getAttribute("isLogin")==false){
                    out.print("<li style=\"float: right;;\">\n" +
                            "<a href=\"login\">登录</a>\n" +
                            "</li>\n" +
                            "<li style=\"float: right;\">\n" +
                            "<a href=\"register\">注册</a>\n" +
                            "</li>");
                }
                else if ((boolean) session.getAttribute("isLogin")==true){
                    out.print("<li style=\"float: right;;\">\n" +
                            "<a href=\"loginOff\">退出登录</a>\n" +
                            "</li>\n" +
                            "<li style=\"float: right;\">\n" +
                            "<a href=\"personalCenter\">个人中心</a>\n" +
                            "</li>");
                }
            %>
        </ul>
</div>
<div class="top2">
    <a href="index.html" style="background: url(../../picture/logo.png) no-repeat 33%,5%;background-size: 100% 100%;float: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    <img id="ico" src="../../picture/drawer.png" alt="">
</div>
<div class="drawer">
    <ul>
        <li>
            <a href="index.html">最新套图</a>
        </li>
        <li>
            <a href="thelatest.html">最新表情</a>
        </li>
        <li>
            <a href="search.html">表情搜索</a>
        </li>
        <li>
            <a href="http://www.doutula.com/maker">
                <b>表情制作</b>
            </a>
        </li>
        <li>
            <a href="contribute.html">表情投稿</a>
        </li>
        <%
            if ((boolean) session.getAttribute("isLogin")==false){
                out.print("<li style=\"float: right;;\">\n" +
                        "<a href=\"login\">登录</a>\n" +
                        "</li>\n" +
                        "<li style=\"float: right;\">\n" +
                        "<a href=\"register\">注册</a>\n" +
                        "</li>");
            }
            else if ((boolean) session.getAttribute("isLogin")==true){
                out.print("<li style=\"float: right;;\">\n" +
                        "<a href=\"loginOff\">退出登录</a>\n" +
                        "</li>\n" +
                        "<li style=\"float: right;\">\n" +
                        "<a href=\"personalCenter\">个人中心</a>\n" +
                        "</li>");
            }
        %>
    </ul>
</div>
<div class="main">
    <div class="logo">
        <img src="../../picture/logo.png" alt="logo">
    </div>
    <div class="search">

        <span id="textbox"><input type="text" id="keyWord" placeholder="输入表情包名称或关键字"></span>
        <span id="submitbox"><input type="button" value="搜索" onclick="getKeyword()"></span>
    </div>
    <div class="heading">
        <p>实时热搜</p>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=傻逼儿子">傻逼儿子</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=试试就试试">试试就试试</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=嘤嘤嘤">嘤嘤嘤</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=给大佬递刀">给大佬递刀</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=骗我发图">骗我发图</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=我的得意的笑">我的得意的笑</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=阿姨好">阿姨好</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=你该不会是个">你该不会是个</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=无语">无语</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=喷水">喷水</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=大嫂">大嫂</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=打呵欠">打呵欠</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=点点点">点点点</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=开始表演">开始表演</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=呵呵">呵呵</a>
        <a target="_blank"href="http://www.doutula.com/search?keyword=mua">mua</a>
    </div>
    <br>
    <br>
    <br>
    <div class="heading">
        <p>今日热门</p>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=真香警告">真香警告</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=小姐姐">小姐姐</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=早上好">早上好</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=借奶消愁">借奶消愁</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=死鬼">死鬼</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=吃">吃</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=mua">mua</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=哈哈哈哈">哈哈哈哈</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=无语">无语</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=不想努力了">不想努力了</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=富婆">富婆</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=肥宅">肥宅</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=呵垃圾">呵垃圾</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=臭大佬好过分">臭大佬好过分</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=舔狗">舔狗</a>
        <a target="_blank"href=" http://www.doutula.com/search?keyword=叉腰">叉腰</a>
    </div>

</div>

</body>
<script>
    function getKeyword(){
        var keyWord = document.getElementById("keyWord").value;
        if(keyWord.trim()==''){
            alert("请输入表情包名称或关键字");
        }
        else{
            window.location.href="http://www.doutula.com/search?keyword="+keyWord;
        }
    }
</script>
</html>