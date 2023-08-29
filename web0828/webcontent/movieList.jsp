<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] movieList = {"범죄도시3","범죄도시2","범죄도시","극한직업"};
pageContext.setAttribute("movieList", movieList);
%>
<c:forEach var="movie" items="${movieList}">
	${movie}<br>
</c:forEach>
</body>
</html>