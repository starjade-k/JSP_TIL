<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var = "msg" value = "hello"/>
\${msg} = ${msg}<br>
<c:set var = "age">
25
</c:set>
|${age} = ${age}<hr>

<c:set var = "member" value =
		"<%= new %>"/>
</body>
</html>