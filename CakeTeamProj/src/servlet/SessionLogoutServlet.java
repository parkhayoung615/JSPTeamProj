package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SessionLogout")
public class SessionLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public SessionLogoutServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("logOK");
		
		// session 속성 (logOK)을 제거함 : removeAttribute() 또는 invalidate() 실행
		
		if(!id.isEmpty()) {
			session.removeAttribute("logOK"); // 또는 session.invalidate()
			response.sendRedirect(request.getContextPath() + "/sessionLoginForm2.jsp");
		}
	}

}
