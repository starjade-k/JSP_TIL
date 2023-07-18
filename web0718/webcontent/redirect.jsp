<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>네이버 페이지로 이동하기</h3>
<!-- redirect 는 서버가 클라이언트한테 바로 보내줌 -->
<%
	response.sendRedirect("http://www.naver.com");
%>
</body>
</html>