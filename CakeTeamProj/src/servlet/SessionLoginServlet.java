package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import work.User;

@WebServlet("/SessionLogin")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SessionLoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		User user = new User();
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		ArrayList<String> list = user.loginUser(id, pwd);
//		System.out.print(list);
		
		if (list.isEmpty()) {
			out.print("<script>");
			out.print("alert('로그인에 실패하였습니다.');");
			out.print("history.go(-1);");
			out.print("</script>");	
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("logOK", id);
			response.sendRedirect("index.jsp");
		}
		
	}

}
