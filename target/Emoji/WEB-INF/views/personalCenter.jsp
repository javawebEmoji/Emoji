<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/5
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/show.js"></script>
    <script type="text/javascript" src="js/drawer.js"></script>
    <script type="text/javascript" src="js/flash.js"></script>
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="css/top.css">
    <link rel="stylesheet" href="css/drawer.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/tail.css">
    <link rel="stylesheet" href="css/next.css">
    <link rel="stylesheet" href="css/pc.css">
    <title>个人中心</title>
    <script>
        function changeInformation(){
            var email = document.getElementById("email").value;
            if(email!=''){
                var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
                if(!re.test(email)){
                    alert("邮箱格式错误");
                    return;
                }
            }
            document.getElementById("change").submit();
        }
    </script>

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
            <a href="loginOff">退出登录</a>
        </li>
    </ul>
</div>
<br><br>
<div id="home">
    <div id="main">
        <div id="sideBar">
            <div id="sideNavBar" style="width: 120px;">
                <ul id="sideNavList">
                    <li><a href="personalCenter" target="_parent" >个人资料</a></li>
                    <li><a href="collection" target="_parent">我的收藏</a></li>
                    <li><a href="download" target="_parent">我的下载</a></li>
                    <li><a href="mycontribute" target="_parent">我的投稿</a></li>
                </ul>
            </div><!-- sideNavBar 侧边导航栏 -->
        </div><!-- sideBar 侧边栏 -->

        <div id="content">
            <div id="imgShow1" >
                <br>个人资料&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="modal" data-target="#myModal">修改</a><br>
                <img src="picture/nc.png">用户名：<c:if test="${user.username != null}" >${user.username}</c:if><br>
                <img src="picture/yx.jpg">邮箱：<c:if test="${user.email != null}" >${user.email}</c:if><br>
                <img src="picture/xb.png">性别：<c:if test="${user.sex != null}" >${user.sex}</c:if><br>
                <img src="picture/sr.png">生日：<c:if test="${user.birthday != null}" >${user.birthday}</c:if><br>
                <img src="picture/ah.png">爱好：<c:if test="${user.hobby != null}" >${user.hobby}</c:if><br>
            </div>
        </div><!-- content 内容 -->
    </div><!-- main 主要部分 -->
</div>
<%--模态框--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
            </div>
            <div class="modal-body">
                <div class="logo"></div>

                <div class="login_box">

                    <div class="login_form">
                        <div class="login_title">
                            修改资料
                        </div>
                        <form action="changeInformation" method="post" id="change">

                            <div class="form_text_ipt">
                                <input name="email" id="email" type="text" placeholder="邮箱地址" <c:if test="${user.username != null}" >value="${user.email}"</c:if>>
                            </div>
                            <div class="form_text_ipt">
                                <select name="sex" >
                                    <c:if test="${user.sex != null}" ><option value="${user.sex}">${user.sex}</option></c:if>
                                    <option value="null">性别</option>
                                    <option value="女">女</option>
                                    <option value="男">男</option>
                                </select>
                            </div>

                            <div class="form_text_ipt">
                                <input name="birthday" id="birthday" type="date" placeholder="生日" <c:if test="${user.username != null}" >value="${user.birthday}"</c:if>>
                            </div>

                            <div class="form_text_ipt">
                                <input name="hobby" id="hobby" type="text" placeholder="爱好" <c:if test="${user.username != null}" >value="${user.hobby}"</c:if>>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消更改
                </button>
                <button type="button" class="btn btn-primary" onclick="changeInformation()">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

</body>

</html>
