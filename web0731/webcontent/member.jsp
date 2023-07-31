<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 입력</title>
</head>
<body>
<h2>회원 정보 입력 양식</h2>
<form method="post" action = "result.jsp">
	<table border="1">
		<tr>
			<td>이 름</td>
			<td><input type="text" name="name" size="20">
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="userid" size="20">
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd" size="20">
		</tr>
		
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="pwdch" size="20">
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" size="20">
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="phone" size="20">
		</tr>
		<tr>
			<td colspan='2'><input type="submit" value="전송">
			<input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>