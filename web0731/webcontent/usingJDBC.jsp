<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<%@page import= "java.util.*, web0801.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

String id = "",
       pwd = "",
       name = "",
       email = "",
       phone = "";
int counter = 0;

try {
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "0000");
	stmt = conn.createStatement();
	rs = stmt.executeQuery("select * from member");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 베이스 연동 </title>
</head>
<body>
<h3>회원정보연동</h3>
<table>
   <tr>
   <td><strong>ID</strong></td>
   <td><strong>PWD</strong></td>
   <td><strong>NAME</strong></td>
   <td><strong>EMAIL</strong></td>
   <td><strong>PHONE</strong></td>
   </tr>
   <%
      if(rs != null) {
    	  while(rs.next()) {
    		  id = rs.getString("id");
    		  pwd = rs.getString("pwd");
    		  name = rs.getString("name");
    		  email = rs.getString("email");
    		  phone = rs.getString("phone");
    %>
    		  <tr>
    		  <td><%=id %></td>
    		  <td><%=pwd %></td>
    		  <td><%=name %></td>
    		  <td><%=email %></td>
    		  <td><%=phone %></td>
    		  <%
    		     counter++;
    	  }
      }
    		  %>
    		  </tr>
    		  </table>
    		  total records : <%=counter %>
    <%
      } catch(SQLException sqlException) {
    	  System.out.println("sql exception");
      } catch (Exception exception) {
    	  System.out.println("exception");
      } finally {
    	  if(rs != null) 
    		  try{
    			  rs.close();
    		  } catch(SQLException e) {  }
    	  if(stmt != null) 
    		  try{
    			  stmt.close();
    		  } catch(SQLException e) {  }
    	  if(conn != null) 
    		  try{
    			  conn.close();
    		  } catch(SQLException e) {  }    		 
    	  }
   %>

</body>
</html>