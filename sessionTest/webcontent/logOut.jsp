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
	// 모든 세션 삭제
	session.invalidate();
%>
<script>
	alert("로그아웃 되었습니다.");
	// loginForm.jsp 로 가게끔 
	location.href = "loginForm.jsp";
</script>
</body>
</html>