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
    <a href="#"><img src="picture/latest/1.jpg" id="img1"></a>
    <a href="#"><img src="picture/latest/2.jpg"></a>
    <a href="#"><img src="picture/latest/3.jpg"></a>
    <a href="#"><img src="picture/latest/4.gif"></a>
    <a href="#"><img src="picture/latest/5.jpg"></a>
    <a href="#"><img src="picture/latest/6.jpg"></a>
    <a href="#"><img src="picture/latest/7.jpg"></a>
    <a href="#"><img src="picture/latest/8.jpg"></a>
    <a href="#"><img src="picture/latest/9.gif"></a>
    <a href="#"><img src="picture/latest/10.jpg"></a>
    <a href="#"><img src="picture/latest/11.gif"></a>
    <a href="#"><img src="picture/latest/12.jpg"></a>
    <a href="#"><img src="picture/latest/13.jpg"></a>
    <a href="#"><img src="picture/latest/14.jpg"></a>
    <a href="#"><img src="picture/latest/15.jpg"></a>
    <a href="#"><img src="picture/latest/16.jpg"></a>
    <a href="#"><img src="picture/latest/17.jpg"></a>
    <a href="#"><img src="picture/latest/18.jpg"></a>
    <a href="#"><img src="picture/latest/19.jpg"></a>
    <a href="#"><img src="picture/latest/21.gif"></a>
    <a href="#"><img src="picture/latest/22.jpg"></a>
    <a href="#"><img src="picture/latest/23.jpg"></a>
    <a href="#"><img src="picture/latest/24.jpg"></a>
    <a href="#"><img src="picture/latest/25.jpg"></a>
    <a href="#"><img src="picture/latest/26.jpg"></a>
    <a href="#"><img src="picture/latest/27.jpg"></a>
    <a href="#"><img src="picture/latest/28.gif"></a>
    <a href="#"><img src="picture/latest/29.jpg"></a>
    <a href="#"><img src="picture/latest/30.gif"></a>
    <a href="#"><img src="picture/latest/30.jpg"></a>
    <a href="#"><img src="picture/latest/31.gif"></a>
    <a href="#"><img src="picture/latest/32.jpg"></a>
    <a href="#"><img src="picture/latest/33.jpg"></a>
    <a href="#"><img src="picture/latest/34.jpg"></a>
    <a href="#"><img src="picture/latest/35.jpg"></a>
    <a href="#"><img src="picture/latest/36.gif"></a>
    <a href="#"><img src="picture/latest/37.jpg"></a>
    <a href="#"><img src="picture/latest/38.jpg"></a>
    <a href="#"><img src="picture/latest/39.jpg"></a>
    <a href="#"><img src="picture/latest/40.jpg"></a>
    <a href="#"><img src="picture/latest/41.jpg"></a>
    <a href="#"><img src="picture/latest/42.jpg"></a>
    <a href="#"><img src="picture/latest/43.jpg"></a>
    <a href="#"><img src="picture/latest/44.jpg"></a>
    <a href="#"><img src="picture/latest/45.jpg"></a>
    <a href="#"><img src="picture/latest/46.jpg"></a>
    <a href="#"><img src="picture/latest/47.jpg"></a>
    <a href="#"><img src="picture/latest/48.jpg"></a>
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
