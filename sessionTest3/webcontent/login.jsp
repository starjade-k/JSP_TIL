<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action = "main.jsp">
	<label for="userid">아&nbsp이&nbsp디&nbsp : </label>
	<input type="text" name="id" id ="userid"><br>
	
	<label for="userpwd">패스워드 : </label>
	<input type="password" name="pwd" id ="userpwd"><br>
	
	<input type="submit" value="로그인">
	<input type="button" onclick="location.href='member.jsp'" value="회원가입">
	<input type="button" onclick="location.href='redirect.jsp'" value="종료">
</form>
</body>
</html>