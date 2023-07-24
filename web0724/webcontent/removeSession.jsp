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
<%
	session.setAttribute("name1", "첫 번째 세션 값");
	session.setAttribute("name2", "두 번째 세션 값");	
	session.setAttribute("name3", "세 번째 세션 값");
	
	out.println("<h4> 세션값을 삭제하기 전</h4>");
	Enumeration names;
	
	names = session.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + ":" + value + "<br>");
	}
	
	//세션의 모든 객체를 삭제한다.
	session.invalidate();
	out.println("<h3>세션을 삭제 한 후</h3>");
	out.println("세션은 유효한가요?<br>");
    if(request.isRequestedSessionIdValid() == true){
    	out.println("유효함");
    } else{
    	out.println("유효하지 않음");
    }
	//세션 객체 삭제
	/*session.removeAttribute("name2");
	out.println("<h4> 세션값을 삭제한 후</h4>");
	
	names = session.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + ":" + value + "<br>");
	}
	*/
%>
</body>
</html>