
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
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
Calendar date = Calendar.getInstance();
SimpleDateFormat today = new SimpleDateFormat("YYYY년 MM월 dd일");
SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
%>

오늘은 <%=today.format(date.getTime()) %>입니다.<br>
지금 시간은 <%= now.format(date.getTime()) %>입니다.
</body>
</html>