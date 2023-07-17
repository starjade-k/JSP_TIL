<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>좋아하는 운동은?</h3>
<hr>
<form method = "get" action ="checkServlet">
	<input type="checkbox" name = "item" value = "야구">야구
	<input type="checkbox" name = "item" value = "농구">농구
	<input type="checkbox" name = "item" value = "축구">축구
	<input type="checkbox" name = "item" value = "배구">배구<br>
	<input type="checkbox" name = "item" value = "탁구">탁구
	<input type="checkbox" name = "item" value = "수영">수영
	<input type="checkbox" name = "item" value = "볼링">볼링
	<input type="checkbox" name = "item" value = "당구">당구<br>
	
	<input type="submit" value="선택">
</form>	
</body>
</html>