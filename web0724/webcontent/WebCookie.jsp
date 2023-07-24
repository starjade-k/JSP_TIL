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
	// 쿠키 객체 생성
	Cookie info = new Cookie("id","Cookie");
	// 쿠키 유효 기간 설정
	info.setMaxAge(365*24*60*60);
	// 쿠키 전송
	response.addCookie(info);
	// 쿠키 생성하여 클라이언트에게 전송
	response.addCookie(new Cookie("pwd","test1234"));
	response.addCookie(new Cookie("age","34"));
%>

<h3>쿠키 설정</h3>
</body>
</html>