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
	session.setAttribute("id", "session");
	session.setAttribute("pwd", "test1234");
	session.setAttribute("age", 34);
%>
<h2>session 설정</h2>
</body>
</html>