<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  errorPage="addrbook_error.jsp" import="jspbook.addrbook.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="ab" class="jspbook.addrbook.AddrBean"/> 
<jsp:useBean id="addrbook" class="jspbook.addrbook.AddrBook"/>
<jsp:setProperty name="addrbook" property="*"/> 
<% 
	String action = request.getParameter("action");

	if(action.equals("list")) {
		ArrayList<AddrBook> datas = ab.getDBList();
		request.setAttribute("datas", datas);
		pageContext.forward("addrbook_list.jsp");
	}
	else if(action.equals("insert")) {		
		if(ab.insertDB(addrbook)) {
			response.sendRedirect("addrbook_control.jsp?action=list");
		}
		else
			throw new Exception("DB 입력오류");
	}
	else if(action.equals("edit")) {
		AddrBook abook = ab.getDB(addrbook.getAb_id());
		if(!request.getParameter("upasswd").equals("1234")) {
			out.println("<script>alert('password error.!!');history.go(-1);</script>");
		}
		else {
			request.setAttribute("ab",abook);
			pageContext.forward("addrbook_edit_form.jsp");
		}
	}
	else if(action.equals("update")) {
			if(ab.updateDB(addrbook)) {
				response.sendRedirect("addrbook_control.jsp?action=list");
			}
			else
				throw new Exception("DB Update error");
	}
	else if(action.equals("delete")) {
		if(ab.deleteDB(addrbook.getAb_id())) {
			response.sendRedirect("addrbook_control.jsp?action=list");
		}
		else
			throw new Exception("DB delete error");
	}
	else {
		out.println("<script>alert('action parameter 확인!!!')</script>");
	}
%>