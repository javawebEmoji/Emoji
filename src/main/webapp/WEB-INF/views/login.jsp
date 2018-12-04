<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/3
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>登录界面</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
</head>
<body>
 <%  session = request.getSession();
     if (session.getAttribute("isLogin")==null){
         session.setAttribute("isLogin",false);
     }
     System.out.println("request.getAttribute(\"LoginResult\") :"+request.getAttribute("LoginResult"));
     if (request.getAttribute("LoginResult")!=null) {
         if ((int) request.getAttribute("LoginResult") == 1) {
             session.setAttribute("isLogin", true);
         }
     }
 %>
<div class="wrap login_wrap">
    <div class="content">
        <div class="logo"></div>
        <div class="login_box">
            <div class="login_form">
                <div class="login_title">
                    登录
                </div>
                <form action="LoginTest" method="post" onsubmit=" return LoginCheck()">

                    <div class="form_text_ipt">
                        <input name="username" id="username" type="text" placeholder="用户名">
                    </div>
                    <div class="ececk_warning"><span>请输入用户名</span></div>
                    <div class="form_text_ipt">
                        <input name="password" id="password" type="password" placeholder="密码">
                    </div>
                    <div class="ececk_warning" id="LoginResult"><span>密码不能为空</span></div>
                    <div class="form_check_ipt">
                        <div class="left check_left">
                            <label><input name="autoLogin" type="checkbox"> 下次自动登录</label>
                        </div>
                        <div class="right check_right">
                            <a href="findkey.html">忘记密码</a>
                        </div>
                    </div>
                    <div class="form_btn">
                        <input type="submit" value="登录"/>
                    </div>
                    <div class="form_reg_btn">
                        <span>还没有帐号？</span><a href="register">马上注册</a>
                    </div>
                </form>
                <div class="other_login">
                    <div class="left other_left">
                        <span></span>
                    </div>
                    <!--<div class="right other_right">
                        <a href="#"><i class="fa fa-qq fa-2x"></i></a>
                        <a href="#"><i class="fa fa-weixin fa-2x"></i></a>
                        <a href="#"><i class="fa fa-weibo fa-2x"></i></a>
                    </div>-->
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="js/jquery.min.js" ></script>
<script type="text/javascript" src="js/common.js" ></script>
<div style="text-align:center;">
</div>
</body>
<script>
    function  LoginCheck() {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        if(username.trim()==''){
            alert("请输入用户名");
            return false;
        }
        if(password.trim()==''){
            alert("请输入密码");
            return false;
        }
        return true;
    }
    if('${LoginResult}'!=''){
        if('${LoginResult}'==0)
            alert("用户名或密码错误，登录失败！");
        if('${LoginResult}'==1){
            alert("登录成功,跳转到首页");
            window.location.href="/"}
    }
</script>
</html>
