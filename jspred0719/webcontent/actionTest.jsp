<%@page import = "java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("userId");
    String userPwd = request.getParameter("userPwd");
    String loginCheck = request.getParameter("loginCheck");
    
    if(loginCheck.equals("user")) {
%>
<jsp:forward page="userMain.jsp">
<jsp:param value='<%= URLEncoder.encode("일반모드", "UTF-8") %>' name="userName"/>
</jsp:forward>
<%}else{ %>
<jsp:forward page = "adminMain.jsp">
<jsp:param value='<%= URLEncoder.encode("관리자 모드", "UTF-8") %>' name="userName"/>
</jsp:forward>
<%} %>