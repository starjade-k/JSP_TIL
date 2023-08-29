<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="fruit.jsp">
	<label for = "fruitSelect">좋아하는 과일 선택</label></br>
	<select id = "fruit" name= "fruit">
		<option value="1">사과</option>
		<option value="2">C++</option>
		<option value="3">Python</option>
		<option value="4">C#</option>
	</select>
	<input type = "submit" value = "전송">
</form>
</body>
</html>