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
Cookie cookie = new Cookie("name","");
cookie.setMaxAge(0);
response.addCookie(cookie);
%>
<h3>쿠키 값이 삭제되었습니다.</h3>
<a href = "getCookie.jsp">삭제된 쿠키 내용 보기</a>
</body>
</html>