<%@ page import = "java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>session 객체의 메서드로 정보 알아오기</h2>
<%
	String id_str = session.getId(); // 세션 객체의 id
	// 사용자가 마지막으로 머문 시간을 알수있음, 마지막으로 엑세스한 시간
	long lasttime = session.getLastAccessedTime();
	// 세션이 생성된 시간을 나타냄
	long createdtime = session.getCreationTime();
	// 1000당 1초로 계산됨
	// 아래처럼 계산하면 세션에 얼만큼 머물러 있었는지 알 수 있음
	long time_used = (lasttime - createdtime)/6000;
	// 세션이 새로 만들어 졌는지 알려줌
	boolean b_new = session.isNew();
%>
1.sesison id는 [<%=session.getId() %>] 입니다.<br>
2.웹사이트에 머문 시간은 <%=time_used %> 분 입니다.<br>
3.session이 새로 만들어 졌을까<br>
<%
if(b_new){
	out.println("새롭게 세션이 만들어 졌습니다");
} else{
	out.println("새롭게 만들어진 세션이 없습니다.");
}
%>
</body>
</html>