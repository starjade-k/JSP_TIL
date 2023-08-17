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
<table width = "400" border = "1">

	<%
		request.setCharacterEncoding("UTF-8");
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		String id = request.getParameter("id");
		
		try{
			String sql = "select name from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				String name = rs.getString("name");
			%>
	
				<%=name %>님 방문해주셔서 감사합니다.
			
			<% 
			}
			}catch(SQLException e){
				out.println("Member 테이블 호출 실패<br>");
				out.println("SQLException : " + e.getMessage());
			} finally{
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}
	%>

<form method = "post" action = "fix.jsp">
	<input type="submit" value = "수정">
</form>


</body>
</html>