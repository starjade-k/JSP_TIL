<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "selectItem.jsp">
	<label for = "subject">과목을 선택 하세요</label><br>
	<select id = "sub" name="sub">
		<option value="1">java</option>
		<option value="2">C++</option>
		<option value="3">Python</option>
		<option value="4">C#</option>
		
	</select>
	<input type = "submit" value = "전송">
</form>
</body>
</html>