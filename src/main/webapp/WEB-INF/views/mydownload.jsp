<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/5
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/show.js"></script>
    <script type="text/javascript" src="js/drawer.js"></script>
    <script type="text/javascript" src="js/flash.js"></script>
    <link rel="stylesheet" href="css/top.css">
    <link rel="stylesheet" href="css/drawer.css">
    <link rel="stylesheet" href="css/tail.css">
    <link rel="stylesheet" href="css/next.css">
    <link rel="stylesheet" href="css/pc.css">
    <style>
        .photo {
            overflow: hidden;
            height: auto;
            width: auto;
        }
        .photo img {
            overflow: hidden;
            height:160px;
            width: 160px;
            margin: 2px;

        }
    </style>
</head>

<body>
<div class="top">
    <ul>
        <li>
            <a href="index.html" style="background: url(/picture/logo.png) no-repeat 33%,5%;background-size: 100% 100%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
        <li style="float: right">
            <a href="loginOff">退出登录</a>
        </li>
    </ul>
</div>
<div class="top2">
    <a href="index.html" style="background: url(/picture/logo.png) no-repeat 33%,5%;background-size: 100% 100%;float: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    <img id="ico" src="/picture/drawer.png" alt="">
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
        <li>
            <a href="commentPart.html">评论区</a>
        </li>
        <li>
            <a href="downloadPart.html">下载区</a>
        </li>
        <li>
            <a href="loginOff">退出登录</a>
        </li>
    </ul>
</div>
<br><br>
<div id="home">
    <div id="main">
        <div id="sideBar">
            <div id="sideNavBar">
                <ul id="sideNavList">
                    <li><a href="personalCenter" target="_parent" >个人资料</a></li>
                    <li><a href="mycomment" target="_parent">我的评论</a></li>
                    <li><a href="mydownload" target="_parent">我的下载</a></li>
                    <li><a href="mycontribute" target="_parent">我的投稿</a></li>
                </ul>
            </div><!-- sideNavBar 侧边导航栏 -->
        </div><!-- sideBar 侧边栏 -->

        <div id="content">
            <br>我的下载
            <div class="photo">
                <img src="picture/set/fox/1.gif">
                <img src="picture/set/fox/2.gif">
                <img src="picture/set/fox/3.gif">
                <img src="picture/set/fox/4.gif">
                <img src="picture/set/fox/5.gif">
                <img src="picture/set/fox/6.gif">
            </div>
        </div><!-- content 内容 -->
    </div><!-- main 主要部分 -->
</div>
</body>
</html>
