<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>表情包后台管理</title>
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<%--jquery表单插件--%>
	<script src="http://libs.cdnjs.net/jquery-validate/1.14.0/jquery.validate.min.js"></script>
	<style>
		*{
			margin: 0px;
			padding: 0px;
		}
		a{
			text-decoration: none;
			color: #787d82;
		}
		a:hover{
			color: red;
		}
		body{
			color: #787d82;
		}
		#head{
			background-color: #edf1f2;
			text-align: center;
			height: 120px;
		}
		#head img{
			margin-top: 37px;
		}
		.container{
			text-align: center;
			width: 320px;
			margin: auto;
		}
		.login-head{
			height: 32px;
			margin: 50px auto 30px auto;
		}
		.login-head h1{
			float: left;
			font-weight: 400;
			font-size: 24px;
			color: #14191e;
		}
		.login-head a{
			float: right;
			margin-top: 13px;
			color: #f01400;
			font-size: 14px;
		}
		.login-head span{
			float: right;
			margin-top: 13px;
			color: #787d82;
			font-size: 14px;
		}
		.login-body .input{
			width: 290px;
			margin-bottom: 15px;
			padding: 12px 14px;
			background-color: #fff;
			box-shadow: 2px 0 5px 0 #fff;
			border: 1px solid rgba(84,92,99,.6);
			border-radius: 6px;
			color: #1c1f21;
			line-height: 20px;
			outline: 0;
		}
		.login-body div label, .login-body div input{
			float: left;
			font-size: 0.8em;
		}
		.login-body div input{
			margin: 4px 10px 0px 0px;
		}
		.login-body div a{
			float: right;
		}
		.submit{
			clear: both;
			width: 320px;
			background-color: #2B333E;
			border: 1px solid #2B333E;
			margin-top: 20px;
			padding: 11px 32px;
			font-size: 16px;
			line-height: 24px;
			border-radius: 4px;
			color: #fff;
		}
		.login-footer span{
			float: left;
			font-size: 0.8em;

		}
		.login-footer img{
			margin-top: -10px;
		}
		.footer{
			text-align: center;
			margin: 100px auto 0px auto;
		}
		#tip{
			position: relative;
			padding: .75rem 1.25rem;
			margin-bottom: 1rem;
			border: 1px solid transparent;
			border-radius: .25rem;
		}
	</style>
	<script type="text/javascript">
        $(function(){
            // 等文档加载完成以后再执行本脚本
            // 给验证码绑定点击事件
            // vimg
            <%--$("#vimg").click(function(){--%>
            <%--$(this).attr("src","${ctx}/createCode?timer="+new Date().getTime());--%>
            <%--}).mouseover(function(){--%>
            <%--$(this).css("cursor","pointer");--%>
            <%--});--%>

            /** 回车键事件
             event :事件源,代表按下的那个按键
             */
            $(document).keydown(function(event){
                if(event.keyCode == 13){
                    $("#login").trigger("click");
                }
            });

            /** 1.异步登录功能  */
            $("#login").bind("click",function(){
                var account = $("#admin_account").val();
                var password = $("#admin_password").val();
                console.log(password);
                // var vcode = $("#vcode").val();
                // 定义一个校验结果
                var msg = "";
                if(!/^\w{2,20}$/.test(account.trim())){
                    msg = "登录名必须是2-20个的字符";
                }else if(!/^\w{6,20}$/.test(password)){
                    msg = "密码必须是6-20个的字符";
                }
                // else if(!/^\w{4}$/.test(vcode)){
                //     msg = "验证码格式不正确";
                // }

                if(msg!=""){
                    // 校验失败了
                    // $.messager.alert("登录提示","<span style='color:red;'>"+msg+"</span>","error");
                    $("#tip").css("background-color","#f8d7da")
                    $("#tip").css("color","#721c24")
                    $("#tip").html(msg);
                    return ; // 结束程序
                }

                var params = $("#loginForm").serialize();
                /** 发起异步请求登录 */
                $.ajax({
                    url:"loginAjax",
                    type: "post",
                    dataType : "json",
                    data : params ,
                    async : true ,  // 是异步还是异步中的同步
                    success : function(data){
                        console.log(data);
                        if(data.status == 1){
                            /** 跳转到主界面上去  */
                            window.location = "user";
                        }else{
                            $("#vimg").trigger("click");
                            $("#tip").css("background-color","#f8d7da")
                            $("#tip").css("color","#721c24")
                            $("#tip").html(data.tip);
                        }

                    },error : function(){
                        $("#tip").css("background-color","#f8d7da")
                        $("#tip").css("color","#721c24")
                        $("#tip").html("您登陆失败了！");
                    }
                })

            })


        })

	</script>
</head>
<body>
<div id="head">
	<img src="../picture/logo.png" alt="logo">
</div>
<div class="container">
	<div class="login-head">
		<h1>欢迎登录表情包后台管理系统</h1>
	</div>
	<div class="login-body">
		<div id="tip"></div>
		<form id="loginForm" action="loginTest">
			<input id="admin_account" name="admin_account" class="input" type="text" placeholder="请输入账号">
			<input id="admin_password" name="admin_password" class="input" type="password" placeholder="请输入密码">
			<input id="login" class="submit" type="button" value="登录" hidefocus="true" style="cursor: pointer">
		</form>
	</div>
</div>
<div class="footer">created by Emoji</div>

</body> 
</html>