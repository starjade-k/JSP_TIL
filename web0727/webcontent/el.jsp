<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${"Hello"}<br><!-- 표현언어(EL) -->
	<%="Hello" %><br><!-- 표현식 -->
	<% out.println("Hello"); %><br><!-- 스크립트릿 -->
	
	정수형 : ${10}<br>
	실수형 : ${5.6}<br>
	문자열 : ${"hello" }<br>
	논리형 : ${true}<br>
	null : ${null}<br>
</body>
</html>