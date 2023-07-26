<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>session 값 가지고 오기</h3>
<%
	String name = (String)session.getAttribute("name");
	String pwd = (String)session.getAttribute("pwd");
	Integer age = (Integer)session.getAttribute("age");
%>
name : <%=name %>
pwd : <%=pwd %>
age : <%=age %>
</body>
</html>