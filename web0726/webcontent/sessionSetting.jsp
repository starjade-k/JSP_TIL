<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("name", "woo");
	session.setAttribute("pwd", "1234");
	session.setAttribute("age", 34);
%>

<h3>Session 설정</h3>
</body>
</html>