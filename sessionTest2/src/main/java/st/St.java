package st;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class St extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public St() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone[] = request.getParameterValues("phone");
		String gender = request.getParameter("gender");
		String hobby[] = request.getParameterValues("hobby");
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		out.print("<html><body>");
		
		out.println("아이디 : " + id+"<br>");
		
		out.println("비밀번호 : " + pwd+"<br>");
		
		out.println("이름 : " + name+"<br>");
		
		out.println("연락처 : ");
		for(String ph: phone) {
			out.println(ph + " ");
		}
		out.println("<br> 성별 : " + gender+"<br>");
		if(hobby == null) {
			out.println("취미 없음"+"<br>");
		} else {
			out.println("취미:<br>");
			for(String ho: hobby) {
				out.print(ho + " "+"<br>");
			}
		}
		out.println("입력하신 정보가 맞는지 확인 바랍니다.");
		session.setAttribute("name", name);
		out.println("<br><a href = 'main.jsp'>확인완료</a>");
		out.println("</body></html>");
		out.close();
	}

}
