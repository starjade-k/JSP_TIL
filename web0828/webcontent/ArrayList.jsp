<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%
	ArrayList<String> familyList = new ArrayList<String>();
	String nameArr[] = {"kim","Lee","Bae","Lim"};
	
	for(int i=0; i < nameArr.length; i++){
		familyList.add(nameArr[i]);
	}
	request.setAttribute("Family", familyList);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${Family[0]} ${Family[1]} ${Family[2]} ${Family[3]}
</body>
</html>