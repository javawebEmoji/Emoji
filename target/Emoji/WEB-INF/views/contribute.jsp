<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/11/25
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/flash.js"></script>
    <script type="text/javascript" src="js/show.js"></script>
    <script type="text/javascript" src="js/drawer.js"></script>
    <script type="text/javascript" src="js/ajaxfileupload.js"></script>
    <link rel="stylesheet" href="css/top.css">
    <link rel="stylesheet" href="css/drawer.css">
    <link rel="stylesheet" href="css/tail.css">
    <link rel="stylesheet" href="css/next.css">
    <style>
        .main{
            width: 66.6%;
            height:auto;
            margin: auto;
            margin-top: 100px;
            font-family: "microsoft yahei";
            background: white;
        }
        .tishi{
            width: 60%;
            margin-left: 15%;
        }
        .tishi p{
            font-size: 14px;
        }
        .text{
            margin-left: 15%;
            font-size: 16px;
            color:rgb(82, 75, 75);
            font-weight: bolder;
            width: 60%;
        }
        .text input{
            height: 35px;
            width: 50%;
            border: 1px solid #eee;
            box-shadow: none;
            transition: .6s;
            padding: 12px 16px;
            background-color: #fff;
            float: right;

        }
        .picture {
            position: relative;
            display: inline-block;
            margin-left: 15%;
            background: #D0EEFF;
            border: 1px solid #99D3F5;
            border-radius: 4px;
            padding: 4px 12px;
            overflow: hidden;
            color: #1E88C7;
            text-decoration: none;
            text-indent: 0;
            line-height: 20px;
        }
        .picture input {
            position: absolute;
            font-size: 100px;
            right: 0;
            top: 0;
            opacity: 0;
        }
        .picture:hover {
            background: #AADFFD;
            border-color: #78C3F3;
            color: #004974;
            text-decoration: none;
        }
        .sc{
            height: 50px;
            width: 250px;
            border-radius: 10px;
            margin-top: 30px;
            margin-left: 30%;
            color:white;
            background:black;
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
                <a href="#contact">表情投稿</a>
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
    <form enctype="multipart/form-data">
        <h2>投稿</h2>
        <div class="tishi">
            <p>1.如果您是表情作者，欢迎投稿上来我们会免费为您首页置顶推广。同时也欢迎老铁们分享其他各类型斗图表情包。</p>
            <p>2.为了更好的推广您的作品，请不要给每个表情都加水印</p>
        </div>
        <div class="text">
            标题
            <input type="text" id="emoji_title" name="emoji_title"><br><br><br>
            表情描述
            <input type="text" id="emoji_description" name="emoji_description"><br><br><br>
            标签
            <input type="text" id="emoji_label" name="emoji_label"><br><br><br>
        </div>

        <div class="picture">
            <input type="file" id="file" name="file" class="filepath" accept="image/*" onchange="changepic(this)" >上传图片
        </div>
        <div id="img_span" style="margin-left: 15%">
        </div>
        <input class="sc" type="button" value="提交" id="sc" name="sc" onclick="uploadWJ()" >
    </form>
   </div>

</body>
<script>
    var i=0;
    var filename ;
    function changepic(obj) {
        filename = getPath(obj);
        document.getElementById("img_span").innerHTML="<img src=\"\" id=\"show\" width=\"100\" style=\"opacity: 0;\"><br>"+filename;
        var newsrc=getObjectURL(obj.files[0]);
        document.getElementById('show').src=newsrc;
        document.getElementById("show").style.opacity=1;
    }
    //建立一个可存取到该file的url
    function getObjectURL(file) {
        var url = null ;
        // 下面函数执行的效果是一样的，只是需要针对不同的浏览器执行不同的 js 函数而已
        if (window.createObjectURL!=undefined) { // basic
            url = window.createObjectURL(file) ;
        } else if (window.URL!=undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file) ;
        } else if (window.webkitURL!=undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file) ;
        }
        return url ;
    }
    //附带不用修改浏览器安全配置的javascript代码，兼容ie， firefox全系列
    function getPath(obj) {
        //参数obj为input file对象
        if(obj) {
            if (window.navigator.userAgent.indexOf("MSIE")>=1) {
                obj.select();
                return document.selection.createRange().text;
            }
            else if(window.navigator.userAgent.indexOf("Firefox")>=1) {
                if(obj.files) {
                    return obj.files.item(0).getAsDataURL();
                }
                return obj.value;
            }
            return obj.value;
        }
    }

    function uploadWJ(){
        debugger;
        var isLogin = <%=(boolean) session.getAttribute("isLogin")%>
        if(isLogin == false){
            alert("请先登陆！")
            return;
        }
        var emoji_title = $("#emoji_title").val()
        var emoji_description = $("#emoji_description").val()
        var emoji_label = $("#emoji_label").val()
        // var filename = $("#file").val();
        //执行上传文件操作的函数

        $.ajaxFileUpload({
            //处理文件上传操作的服务器端地址
            url: '/contribute/upload',
            enctype: "multipart/form-data",
            secureuri: false,                       //是否启用安全提交,默认为false
            fileElementId: 'file',                        //文件选择框的id属性
            dataType: "json",                       //服务器返回的格式,可以是json或xml等
            data: {
                filename:filename,
                emoji_title:emoji_title,
                emoji_description:emoji_description,
                emoji_label:emoji_label
            },
            success: function (data) {
                debugger
                if (data.success == 1) {
                    alert(filename+'上传成功')
                }
                else
                    alert(data.message)
            },
            error: function (msg) {
                alert(msg.responseText);
            }
        });
    }
</script>
</html>