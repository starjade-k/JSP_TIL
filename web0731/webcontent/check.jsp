<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id = "member" class = "com.koreait.javaBeans.MemberBean" scope="application"/>	
<jsp:setProperty name="member" property="*" />
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <jsp:getProperty name="member" property="name" />님 가입을 환영합니다.
	 <td colspan='2'><input type="button" onclick="location.href='member.jsp'" value="종료">

</body>
</html>