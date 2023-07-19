<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action = "MemberServlet">
	<label for="userId">아이디 : </label>
	<input type="text" name="id" id ="userId"><br>
	
	<label for="userpwd">패스워드 : </label>
	<input type="password" name="pwd" id ="userpwd"><br>
	
	<input type="submit" value="가입">
	
</form>
</body>
</html>