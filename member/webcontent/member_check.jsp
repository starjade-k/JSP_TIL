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
request.setCharacterEncoding("UTF-8");
%>
<p>아이디 : <%=request.getParameter("id") %>
<p>이름 : <%=request.getParameter("name") %>
<p>암호 : <%=request.getParameter("passwd") %>
<p>이메일 : <%=request.getParameter("email") %>
<p>연락처 : <%=request.getParameter("phone1") %> - <%=request.getParameter("phone2") %> - <%=request.getParameter("phone3") %>

</body>
</html>