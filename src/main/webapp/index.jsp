<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
<style type="text/css">
	
	body{
		background: pink;
		font-size: 12px;
		font-weight: 700;
	}
	#box{
		height:700px;
		width:600px;
		background:white;
		margin: 0 auto;
	}
	h1{
		color: red;
		padding-top:20px;
		text-align: center;
	}
	.tr input{
		width: 250px;
		height: 25px;
		outline:none;
		border-radius:5px;
		border: 1px solid #DBDBDB;
	}
	tr.tr{
		height: 60px;	
	}
	td.td1{
		padding:0 40px 0 80px;
	}
	span.biao{
		color: red;
	}
	td.anniu{
		padding-top:40px;
		font-size:10px;
		text-indent: 105px;
	} 
	button.btn {
		outline:none;
		font-size:12px;
		width: 65px;
		height: 30px;
		background-color: red;
	}
	a.a{
		
		padding:0 0 0 30px;
		text-decoration:none;
		color: blue; 
	}
</style>
</head>
<body>
	<div id="box">
	 	<h1>用户登录</h1>
	 	<form id="form" action="user/login" method="post">
		 	<table>
		 		<tr class="tr">
		 			<td class="td1"><span class="biao">*</span>用户名</td>
		 			<td><input type="text" name="username"   maxlength="12" placeholder="请输入用户名 长度:6-12个字符"/></td>
		 		</tr>
		 		<tr class="tr">
		 			<td  class="td1"><span class="biao">*</span>密码</td>
		 			<td><input type="password" name="password" maxlength="12" placeholder="请输入密码 长度:6-12个字符"/></td>
		 		</tr>
		 		
		 		<tr class="tr">
		 			<td class="td1 anniu" colspan="2">
		 				<button type="submit" class="btn" type="button">登录</button>
		 				<a class="a" href="register.jsp">还没有账号？去注册</a>
		 			</td>
		 		</tr>
		 		
		 		<c:if test="${not empty msg2 }">
		 		<tr class="tr">
		 			<td class="td1">${msg2 }</td>
		 		</tr>
		 		</c:if>
		 
		 	</table>
		 	
	 	</form>	
	</div>
</body>
</html>