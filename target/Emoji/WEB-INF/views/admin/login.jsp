<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>表情包后台管理</title>

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
	</style>
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
		<form name="form-login" onsubmit="return validateForm()">
			<input name="admin_username" class="input" type="text" placeholder="请输入账号">
			<input name="password" class="input" type="password" placeholder="请输入密码">
			<input class="submit" type="submit" value="登录" hidefocus="true" style="cursor: pointer">
		</form>
	</div>
</div>
<div class="footer">created by Emoji</div>

</body> 
</html>