<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id = "member" class = "com.koreait.javaBeans.MemberBean"/>
<!-- 새로 입력한 데이터를
setProperty로 입력받은 데이터를 변수에 새로 지정   property로 가져올 값 설정-->
<jsp:setProperty name="member" property = "*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<form method="post" action = "check.jsp">
	<table border = "1">
		<tr>
			<td>이 름:</td>
			<!-- 위에 setProperty로 새로 지정된 변수들의 값을 getProperty로 받아온다 property로 받아올 변수명 입력 -->
			<td><jsp:getProperty name ="member" property ="name"/></td>
		</tr>
		<tr>
			<td>아이디:</td>
			<td><jsp:getProperty name ="member" property ="userid"/></td>
		</tr>
		<tr>
			<td>비밀번호:</td>
			<td><jsp:getProperty name ="member" property ="pwd"/></td>
		</tr>
		<tr>
			<td>비밀번호 확인:</td>
			<td><jsp:getProperty name ="member" property ="pwdch"/></td>
		</tr>
		<tr>
			<td>이메일:</td>
			<td><jsp:getProperty name ="member" property ="email"/></td>
		</tr>
		<tr>
			<td>전화번호:</td>
			<td><jsp:getProperty name ="member" property ="phone"/></td>
		</tr>
		<tr>
			<td colspan='2'><input type="submit" value="확인완료">
			<input type="button" onclick="location.href='member.jsp'" value="다시"></td>
</form>
</table>
</body>
</html>