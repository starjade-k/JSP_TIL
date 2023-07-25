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
	if(session.getAttribute("user") == null){
		response.sendRedirect("loginForm.jsp");
	}else{	
%>
<%=session.getAttribute("user") %>님 환영합니다.<br>

홈페이지에 방문해주셔서 감사합니다.<br>
<form method = "post" action = "logOut.jsp">
	<input type="submit" value = "로그아웃">
</form>
<%
	}
%>

</body>
</html>