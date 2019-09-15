<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户信息修改</title>
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
</style>
</head>
<body>
	<div id="box">
	 	<h1>用户信息修改</h1>
	 	<form id="form" action="update" method="post">
	 			<input name="id" value="${user.id }" type="hidden"/>
		 	<table>
		 		<tr class="tr">
		 			<td class="td1"><span class="biao">*</span>用户名</td>
		 			<td><input type="text" name="username"   maxlength="12" value="${user.username }"/></td>
		 		</tr>
		 		<tr class="tr">
		 			<td  class="td1"><span class="biao">*</span>原密</td>
		 			<td><input type="password" name="password" maxlength="12" placeholder="请输入密码 长度:6-12个字符"/></td>
		 			<td>
		 				<c:if test="${not empty msg  }">
		 					${msg }
		 				</c:if>
		 			</td>
		 		</tr>
		 		<tr class="tr">
		 			<td  class="td1"><span class="biao">*</span>新密码</td>
		 			<td><input type="password" name="newpassword" maxlength="12" placeholder="请重复输入密码"/></td>
		 			<td>
		 				<c:if test="${not empty msg1  }">
		 					${msg1 }
		 				</c:if>
		 			</td>
		 		</tr>
		 		<tr class="tr">
		 			<td  class="td1"><span class="biao">*</span>手机号码</td>
		 			<td><input type="text" name="telephone" maxlength="11" value="${user.telephone }"/></td>
		 		</tr>
		 		<tr class="tr">
		 			<td class="td1"><span class="biao">*</span>电子邮箱</td>
		 			<td><input type="text" name="email" maxlength="20" value="${user.email }"/></td>
		 		</tr>
		 		<tr  class="">
		 			<td class="td1"><span class="biao">*</span>性别</td>
		 			<td>
	        			<c:if test="${user.sex.sex eq '男' }">
	        				<input type="radio" value="1" checked="checked" name="sexid"/>男
	        				<input type="radio" value="2" name="sexid"/>女
	        			</c:if>
	        			<c:if test="${user.sex.sex eq '女' }">
	        				<input type="radio" value="1" name="sexid"/>男
	        				<input type="radio" value="2" checked="checked" name="sexid"/>女
	        			</c:if>
	        		</td>
		 		</tr>
		 		<tr class="tr">
		 			<td class="td1 anniu" colspan="2">
		 				<button type="submit" class="btn" type="button">修改信息</button>
		 			</td>
		 		</tr>
		 		
		 	</table>
		 	
	 	</form>	
	</div>

</body>
</html>