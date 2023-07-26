<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//session.setAttribute("name", request.getParameter("name"));
//session.setAttribute("id", request.getParameter("id"));
//session.setAttribute("pwd", request.getParameter("pwd"));

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");

if(id.equals(request.getParameter("id")) &&
		pwd.equals(request.getParameter("pwd")) ){
	// user라는 새로운 이름에 name 값을 넣는다.
	// String user = "길동"; 이것과 비슷
	session.setAttribute("name", name);
	response.sendRedirect("main.jsp");
}else {
	response.sendRedirect("longin.jsp");
}

%>