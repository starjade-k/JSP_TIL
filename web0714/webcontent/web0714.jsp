<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src ="param.js"></script>
</head>
<body>
<form method="get" action = "WebPageServlet" name = "frm">
	아&nbsp이&nbsp디 : <input type="text" name = "id"><br>
	나&nbsp&nbsp&nbsp&nbsp&nbsp이 : <input type="text" name = "age"><br>
	생년월일 : <input type = "text" name = birth><br>
	<input type="submit" value ="전송" onclick = "return check()">
</form>
</body>
</html>