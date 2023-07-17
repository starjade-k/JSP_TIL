<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "get" action ="selectServlet">
	<label for ="major">운동</label>
	<select id="major" name="major" size="1">
		<option value="">운동 선택</option>
		<option value="야구">야구</option>
		<option value="농구">농구</option>
		<option value="축구">축구</option>
		<option value="배구">배구</option>
		<option value="탁구">탁구</option>
		<option value="수영">수영</option>
		<option value="볼링">볼링</option>
		<option value="당구">당구</option>
	</select>
	<input type="submit" value="선택">
</form>
</body>
</html>