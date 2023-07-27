<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>자바 코드 방식</h4>
==연산자 사용 : <%= request.getParameter("id")=="test" %><br>
equals() 사용 :  <%= request.getParameter("id").equals("test") %><br>
</body>
</html>