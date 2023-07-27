<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	당신이 입력한 정보는 다음과 같군요<br>
	아이디 : <%=request.getParameter("id") %><br>
	패스워드 : <%=request.getParameter("pwd") %><br><br>
	<hr>
	당신이 입력한 정보는 다음과 같군요(EL 표현)<br>
	아이디 : ${param.id}
	아이디 : ${param.pwd}
</body>
</html>