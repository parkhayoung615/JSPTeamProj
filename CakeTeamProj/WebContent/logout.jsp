<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("logOK");
	
	// session 속성 (logOK)을 제거함 : removeAttribute() 또는 invalidate() 실행
	if(!id.isEmpty()) {
		session.removeAttribute("logOK"); // 또는 session.invalidate() 실행
		response.sendRedirect("index.jsp");
	}
%>