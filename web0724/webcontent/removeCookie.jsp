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
	Cookie cookie = new Cookie("id", "");
	cookie.setMaxAge(0); // 0을 적으면 쿠키의 유효기간을 만료시킴 
	response.addCookie(cookie);
%>
<h3>id 쿠키값이 삭제 되었습니다.</h3>
<a href = "GetCookie.jsp">삭제된 쿠키를 확인 하려면 클릭</a>
</body>
</html>