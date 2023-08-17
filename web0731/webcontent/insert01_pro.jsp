<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ='java.sql.*'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = 'dbconn.jsp' %>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	PreparedStatement pstmt = null;
	
	try{
		String sql = "insert into test(userid,pwd,name,email,phone) values(?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setString(4, email);
		pstmt.setString(5, phone);
		pstmt.executeUpdate();
		out.println("Member 테이블에 데이터 삽입 완료");
	}catch(SQLException ex){
		out.println("Member 테이블에 데이터 삽입 실패");
		out.println("SQLException : " + ex.getMessage());
		
	}finally{ // 객체 닫기
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
	}
%>
</body>
</html>