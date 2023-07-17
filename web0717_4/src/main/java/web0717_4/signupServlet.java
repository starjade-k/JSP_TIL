package web0717_4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class signupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public signupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String name = request.getParameter("name");
		String ssn = request.getParameter("ssn");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwdch = request.getParameter("pwdch");
		String mail = request.getParameter("mail");
		String mail_domain = request.getParameter("mail_domain");
		String setmail = request.getParameter("setmail");
		String post = request.getParameter("post");
		String add[] = request.getParameterValues("add");
		String phone = request.getParameter("phone");
		String job = request.getParameter("job");
		String reception = request.getParameter("reception");
		String items[] = request.getParameterValues("item");
		
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("이름은 : " + name);
		out.println("주민번호 : " + ssn);
		out.println("아이디 : " + id);
		out.println("비밀번호 : " + pwd);
		out.println("비밀번호 확인 : " + pwdch);
		out.print("메일 : " + mail);
		out.print("메일도메인 : " + mail_domain);
		if(mail_domain == null) {
			out.print("");
		}
		out.println("메일도메인 : " + setmail);
		if(setmail == null) {
			out.print("");
		}
		out.println("우편번호 : " + post);
		out.print("주소 : ");
		for(String ad: add) {
			out.println(ad + " ");
		}
		out.println("전화번호 : " + phone);
		out.println("직업 : " + job);
		out.println("수신여부 : " + reception);
		if(items == null) {
			out.println("관심분야 없음");
		} else {
			out.println("관심분야:<br>");
			for(String item: items) {
				out.print(item + " ");
			}
		}
		
		out.println("<br><a href = 'javascript:history.go(-1)'>메인으로</a>");
		out.println("</body></html>");
		out.close();
	}

	

}
