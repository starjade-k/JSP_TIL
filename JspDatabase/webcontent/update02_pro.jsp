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
	
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	try{
		String sql = "select id, passwd from member where id= ?";
		pstmt = conn.prepareStatement(sql);	
		pstmt.setString(1,id);	
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String rId = rs.getString("id");
			String rPasswd = rs.getString("passwd");
		
		
			if(id.equals(rId) && passwd.equals(rPasswd)){
				sql = "update member set name =?  where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,name);
				pstmt.setString(2,id);
				pstmt.executeUpdate();
				out.println("정보 수정 완료");
			} else {
				out.println("일치하는 비밀번호가 없습니다.");
			}
		} else{
			out.println("일치하는 아이디가 없습니다.");
		}
	} catch(SQLException e){
		out.println("SQLException : " + e.getMessage());
	} finally{
		// 모든 객체 해제
		if(rs != null){
			rs.close();
		}
		if(pstmt != null){
			pstmt.close();
		}
		if(conn != null){
			conn.close();
		}
	}
%>
</body>
</html>