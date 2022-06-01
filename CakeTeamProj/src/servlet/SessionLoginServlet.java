package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SessionLogin")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SessionLoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		// id = admin, pwd=1234이면 로그인 성공, 아니면 로그인 실패로 처리
		if(id.equals("admin") && pwd.equals("1234")) {
			HttpSession session = request.getSession();
			session.setAttribute("logOK", id);
			response.sendRedirect(request.getContextPath() + "/sessionLoginForm2.jsp");
		} else {
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert(\"로그인에 실패하였습니다.\");");
			out.print("history.go(-1);");
			out.print("</script>");
		}
	}

}
