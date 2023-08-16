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

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	PreparedStatement pstmt = null;
	
	try{
		String sql = "insert into member(id,passwd,name) values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
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