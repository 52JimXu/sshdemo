<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户信息</title>
</head>
<style type="text/css">
	body{
		background: pink;
		
		}
	#box{
		height:700px;
		width:600px;
		background:white;
		margin: 0 auto;
	}
	table#table {
		margin:0 auto;
		border: 1px solid #000;
		
	}
	td{
		border: 1px solid #000; 
	}
	a{
		text-decoration: none;
	}
</style>
		
<body>
	<div id="box">
		<table id="table">
			<tr style="font-size:17px; font-weight: 700 ">
				<td>用户名</td>
				<td>手机号</td>
				<td>邮箱</td>
				<td>性别</td>
				<td>操作</td>
			</tr>
			
			<c:forEach var="u" items="${requestScope.users}">
				<tr>
					<td>${u.username }</td>
					<td>${u.telephone }</td>
					<td>${u.email }</td>
					<td>${u.sex.sex }</td>
					<td><a href="deleteuser?id=${u.id }">删除</a>/<a href="getuser?id=${u.id }">修改</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>