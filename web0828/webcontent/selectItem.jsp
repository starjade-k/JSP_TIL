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
<c:out value = "${param}"/>
<c:if test = "${param.sub == 1}">
	<span style = "sub: java;">java</span>
</c:if>
<c:if test = "${param.sub == 2}">
	<span style = "sub: C++;">C++</span>
</c:if>
<c:if test = "${param.sub == 3}">
	<span style = "sub: Python;">Python</span>
</c:if>
<c:if test = "${param.sub == 4}">
	<span style = "sub: C#;">C#</span>
</c:if>
</body>
</html>