<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import= "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Connection SQL</title>
</head>
<body>
<%
	Connection con = null;
	try{
		String url = "jdbc:mysql://localhost:3306/test_db";
		String user = "root";
		String password = "0000";
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user,password);
		out.println("db연결 성공");
	} catch(SQLException e) {
  	  out.println("연결 실패");
  	  out.println("SQLException : " + e.getMessage());
	} finally {
		if(con != null) {
			con.close();
		}
	}
%>
</body>
</html>