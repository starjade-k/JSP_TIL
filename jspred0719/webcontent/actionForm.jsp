<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form  action="actionTest.jsp">
	
	<input type = "text" name = "userId"><br>
	<input type = "password" name = userPwd><br>
	
	<input type = "radio" name = "loginCheck" value = "user" checked="checked">사용자 
	<input type = "radio" name = "loginCheck" value = "admin">관리자<br>
	
	<input type= "submit" value="Login">
</form>
</body>
</html>