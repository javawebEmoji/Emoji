<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/4
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>找回密码</title>
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
                    找回密码
                </div>
                <form action="findkey" method="post" name="findkey" onsubmit="return submitCheck()">

                    <div class="form_text_ipt">
                        <input name="phone" type="text" placeholder="手机号">
                    </div>
                    <div class="ececk_warning"><span>手机号不能为空</span></div>
                    <div class="form_text_ipt">
                        <input name="question" type="text" placeholder="输入您设置好的安全问题">
                    </div>
                    <div class="ececk_warning"><span>请输入安全问题</span></div>
                    <div class="form_text_ipt">
                        <input name="answer" type="text" placeholder="答案">
                    </div>
                    <div class="ececk_warning"><span>答案不能为空</span></div>
                    <div class="form_text_ipt">
                        <input name="password" type="password" placeholder="输入新的密码">
                    </div>
                    <div class="ececk_warning"><span>密码不能为空</span></div>
                    <div class="form_text_ipt">
                        <input name="repassword" type="password" placeholder="确认密码">
                    </div>
                    <div class="ececk_warning"><span>确认密码不能为空</span></div>
                    <div class="form_btn">
                        <input type="submit" value="提交">
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
<script>
    function submitCheck(){
        phone=document.findkey.phone.value;
        pass=document.findkey.password.value;
        second=document.findkey.repassword.value;
        question=document.findkey.question.value;
        answer = document.findkey.answer.value;
        if(phone.trim()==""){
            alert("手机号不能为空");
            document.findkey.phone.focus();
            return false;
        }
        else if(phone.trim().length!=11){
            alert("手机号错误");
            document.findkey.phone.focus();
            return false;
        }
        else if(question.trim()==''){
            alert("安全问题不能为空");
            document.findkey.question.focus();
            return false;
        }
        else if(answer.trim()==''){
            alert("问题的答案不能为空");
            document.findkey.answer.focus();
            return false;
        }
        else if(pass.trim()==""){
            alert("密码不能为空");
            document.findkey.password.focus();
            return false;
        }
        else if(pass.trim()!=second){
            alert("两次密码不一致");
            document.findkey.repassword.focus();
            return false;
        }
        return true;
    }
    if('${findKeyResult}'!=''){
        if('${findKeyResult}'==0)
            alert("安全问题错误，请重新输入！");
        if('${findKeyResult}'==1){
            alert("密码找回成功，点击跳转到登录界面");
            window.location.href="login";
        }
        if('${findKeyResult}'==2)
            alert("该手机号不存在！");

    }
</script>
</body>
</html>
