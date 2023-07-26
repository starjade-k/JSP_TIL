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
	// 1. 객체 생성(서버가 생성)
	Cookie c = new Cookie("name", "woo");
	// 2. 클라이언트에 쿠키값을 전송
	response.addCookie(c);
	response.addCookie(new Cookie("pwd","1234"));
	response.addCookie(new Cookie("age","34"));
%>
<h4>Cookie 값 설정 완료</h4>
</body>
</html>