<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/11/25
  Time: 19:49
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
    <link rel="stylesheet" href="css/next.css">
    <style>
        .main{
            width: auto;
            height: auto;
            margin-left: 20%;
            margin-right: 20%;
            margin-top: 100px;
            padding: 14px 28px;
            overflow: hidden;
            background: white;

        }
        .main a{
            display: block;
            float: left;
            margin:5px;

        }
        .main img{
            width: 196px;
            height: 184px;
        }
        .main img:hover{
            /* 鼠标选中时，图片周围出现阴影效果 */
            box-shadow: 2px 2px 5px #a0a0a0;
        }


        .comment, .commentBody{
            width: 92%;
            background-color: #ffffff;
            border: 1px solid #e3e3e3;
            border-radius: 10px;
            box-shadow: 0 1px 1px rgba(0,0,0,.05);
            background-color:  #fdfdfd;;
            margin: 20px auto 50px auto;
            padding: 20px;
        }

        .inputForm{
            font-size: 16px;
            margin: 10px 0px;
            padding: 20px 12px;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }

        .comment input{
            width: 50%;
            height: 20px;
        }

        .comment textarea{
            width: 90%;
            height: 200px;
        }

        .comment .commentBtn{
            width: 70px;
            height: 30px;
            text-align: center;
            color: #333;
            background-color: #fff;
            border: 1px solid #ccc;
            cursor: pointer;
            padding: 6px 12px;
            border-radius: 4px;
        }

        .comment .commentBtn:hover{
            color: #333;
            background-color: #d4d4d4;
            border-color: #8c8c8c;
        }

        .commentItem{
            width: 100%;

        }

        .commentItemBody{
            width: 90%;
            word-wrap: break-word;
            margin-top: 10px;
        }
    </style>
    <script>
        console.log(${isLogin});
        function addComment(){
            if(!${isLogin}){
                alert("请先登录");
                return false;
            }
        }
    </script>
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
                        "<a href=\"login.html\">注册</a>\n" +
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
<div class="main" id="imgdiv">
    <h2>评论区</h2>
    <hr>

    <!-- 评论模块 -->
    <div class="commentContainer">
        <div class="comment">
            <h4>发表评论</h4>
            <form action="/commentPart/addComment" onsubmit="return addComment()">
                <textarea id="commentText" class="inputForm" placeholder="发表你的看法" name="content"></textarea><br>
                <input id="commentBtn" class="commentBtn" type="submit" value="提交">
            </form>
        </div>


        <%--<div id="commentBody" class="commentBody">--%>
            <%--<div class="commentItem">--%>
                <%--<span>昵称: </span><span>发表于2018年11月21日18:12</span>--%>
                <%--<div class="commentItemBody">--%>
                    <%--testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <c:forEach items="${comments}" var="comment" varStatus="stat">
            <div id="commentBody" class="commentBody">
                <div class="commentItem">
                    <span>${comment.comment_username}: </span><span>发表于${comment.getComment_timeToString()}</span>
                    <div class="commentItemBody">
                        ${comment.comment_content}
                    </div>
                </div>
            </div>
        </c:forEach>

    </div>
</div>
<br>
<br>

<div class="next">
    <a href="#"><</a>
    <a href="#" style="background: black; color: white;">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">6</a>
    &nbsp;&nbsp;...
    <a href="#" style="float: right;">></a>
    <a href="#" style="float: right;">10</a>
</div>
<div class="tail">
    <hr>
    <div>
        <img src="../../picture/logo.png" alt="logo">
    </div>
    <div style="width: 30%;">
        <p>版权声明</p>
        <p>本站资源均收集整理于互联网，如果有侵犯您权利的资源，请来信告知，我们将尽快作出处理。</p>
    </div>
    <hr>
</div>

</body>

</html>
