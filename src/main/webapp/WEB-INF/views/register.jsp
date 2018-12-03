<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/3
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>注册界面</title>

    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
</head>
<body>
<div class="wrap login_wrap">
    <div class="content">

        <div class="logo"></div>

        <div class="login_box">

            <div class="login_form">
                <div class="login_title">
                    注册
                </div>
                <form action="registerTest" method="post" name="zhuce" onsubmit="return submitCheck()">

                    <div class="form_text_ipt">
                        <input name="phone" type="text" placeholder="手机号">
                    </div>
                    <div class="ececk_warning"><span>手机号不能为空</span></div>
                    <div class="form_text_ipt">
                        <input name="username" type="text" placeholder="昵称">
                    </div>
                    <div class="ececk_warning"><span>昵称不能为空</span></div>
                    <div class="form_text_ipt">
                        <input name="password" type="password" placeholder="密码">
                    </div>
                    <div class="ececk_warning"><span>密码不能为空</span></div>
                    <div class="form_text_ipt">
                        <input name="repassword" type="password" placeholder="重复密码">
                    </div>
                    <div class="ececk_warning"><span>密码不能为空</span></div>
                    <div class="form_text_ipt">
                        <input name="question" type="text" placeholder="输入安全问题（用于找回密码）">
                    </div>
                    <div class="ececk_warning"><span>安全问题不能为空</span></div>
                    <div class="form_text_ipt">
                        <input name="answer" type="text" placeholder="输入答案（用于找回密码）">
                    </div>
                    <div class="ececk_warning"><span>答案不能为空</span></div>
                    <div class="form_btn">
                        <input type="submit" value="注册">
                    </div>
                    <div class="form_reg_btn">
                        <span>已有帐号？</span><a href="login">马上登录</a>
                    </div>
                </form>
                <div class="other_login">
                    <div class="left other_left">
                        <span></span>
                    </div>

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
    function submitCheck(){
        id=document.zhuce.phone.value;
        nickname=document.zhuce.username.value;
        pass=document.zhuce.password.value;
        second=document.zhuce.repassword.value;
        question=document.zhuce.question.value;
        answer = document.zhuce.answer.value;
        if(id.trim()==""){
            alert("手机号不能为空");
            document.zhuce.phone.focus();
            return false;
        }
        else if(id.trim().length!=11){
            alert("手机号错误");
            document.zhuce.phone.focus();
            return false;
        }
        else if(nickname.trim()==""){
            alert("昵称不能为空");
            document.zhuce.username.focus();
            return false;
        }
        else if(pass.trim()==""){
            alert("密码不能为空");
            document.zhuce.password.focus();
            return false;
        }
        else if(pass.trim()!=second){
            alert("两次密码不一致");
            document.zhuce.repassword.focus();
            return false;
        }else if(question.trim()==''){
            alert("安全问题不能为空");
            document.zhuce.question.focus();
            return false;
        }else if(answer.trim()==''){
            alert("问题的答案不能为空");
            document.zhuce.answer.focus();
            return false;
        }
        return true;
    }
    if('${registerResult}'!=''){
        if('${registerResult}'==0)
            alert("注册失败！");
        if('${registerResult}'==1)
            alert("注册成功，点击跳转到登录界面");
            window.location.href="login";
    }
</script>
</html>
