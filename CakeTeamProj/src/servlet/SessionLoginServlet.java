package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import work.User;

@WebServlet("/login")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SessionLoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String id, pwd;
		boolean result = false;
		PrintWriter out = response.getWriter();
		
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		
		User dao = new User();
		result = dao.getMemeberPwd(id, pwd);
		
		if(result) {
			HttpSession session = request.getSession();
			session.setAttribute("loginOK", id);
			response.sendRedirect("index.jsp");
		} else {
			out.println("<script> alert('로그인에 실패하였습니다.'); history.back(); </script>");
		}
	}

}
