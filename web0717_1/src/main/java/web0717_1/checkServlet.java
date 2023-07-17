package web0717_1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class checkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public checkServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String items[] = request.getParameterValues("item");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		if(items == null) {
			out.println("좋아하는 운동이 없군요");
		} else {
			out.println("좋아하는 운동은 다음과 같습니다.<br>");
			for(String item: items) {
				out.print(item + " ");
			}
		}
		out.println("<br><a href = 'javascript:history.go(-1)'>메인으로</a>");
		out.println("</body></html>");
		out.close();
	}

}
