package web0717_2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class selectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public selectServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String major = request.getParameter("major");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("가장 좋아하는 운동 : <br>");
		out.println(major);
		out.println("<br><a href = 'javascript:history.go(-1)'>메인으로</a>");
		out.println("</body></html>");
		out.close();
		
	}


}
