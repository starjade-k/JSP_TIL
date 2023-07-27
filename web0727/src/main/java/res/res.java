package res;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class res extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public res() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
//		int first = Integer.parseInt(request.getParameter("first"));
//		int second = Integer.parseInt(request.getParameter("second"));
		
		int num1 = 20;
		int num2 = 50;
		int add = num1+num2;
		
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("add", add);
		
		
//		PrintWriter out = response.getWriter();
//		HttpSession session = request.getSession();
//		out.println("<html><body>");
//		out.println(first + "+" + second + "=" + (first+second) );
//		out.println("</body></html>");
//		out.close();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("addResult1.jsp");
		dispatcher.forward(request, response);
		
	}

}
