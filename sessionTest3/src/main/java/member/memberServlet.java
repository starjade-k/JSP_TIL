package member;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class memberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public memberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone[] = request.getParameterValues("phone");
		String mail = request.getParameter("mail");
		
		HttpSession session = request.getSession();
		
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		session.setAttribute("pwd", pwd);
		response.sendRedirect("login.jsp");
	}

}
