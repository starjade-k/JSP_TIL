<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<h2>로그인</h2>
<form method="post" action = "result.jsp">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" size="20">
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="passwd" size="20">
		</tr>
		<tr>
			<td><input type="submit" value="로그인">
			<button type="button" onclick="location.href='signup.jsp' ">회원가입</button></td>
		</tr>
	</table>
</form>
</body>
</html>