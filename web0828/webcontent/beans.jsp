<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="web0828.ELBean"/>
<jsp:setProperty name = "bean" property = "siteName"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
사이트 이름 : <jsp:getProperty property="siteName" name="bean"/>
사이트 이름 : ${bean.siteName}
</body>
</html>