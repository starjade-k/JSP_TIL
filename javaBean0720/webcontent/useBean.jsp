<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 객체 이름은 usebean의 id값으로 생성된다. -->
<jsp:useBean id = "member" class = "com.koreait.javaBeans.MemberBean"/>
	MemberBean 클래스에 의해 빈 객체를 생성한 후 정보를 출력<br>
	이름 : <%= member.getName() %><br>
	아이디 : <%= member.getUserid() %><br>
	<hr>
	
	<%
	member.setName("홍길동");
	member.setUserid("gildong");
	%>
	
	이름 : <%= member.getName() %><br>
	아이디 : <%= member.getUserid() %><br>
</body>
</html>