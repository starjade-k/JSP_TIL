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
	if(session.getAttribute("name") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>
<%= session.getAttribute("name") %>님 회원가입을 환영합니다.<br>
즐거운 시간 되시기 바랍니다.<br>
<form method="post" action="logout.jsp">
	<input type="submit" value="로그아웃">
</form>
<%} %>

</body>
</html>