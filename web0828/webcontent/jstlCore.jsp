<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="msg" value="JSTL"/>
\${msg} = ${msg}<br>
<c:set var = "age">
35
</c:set>
\${age} = ${age }<br><br>
<c:set var="add" value= "${10 +5}"/>
\${add } = ${add }<br>
<c:set var="flag" value= "${10 > 5}"/>
\${flag} = ${flag }<br>
</body>
</html>