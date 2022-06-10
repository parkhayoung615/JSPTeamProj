<%@page import="work.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 String id, password, passwordOK, name, email, phone, addr, m_addr, d_addr, birth;
 User user = new User();
 int n = 0;
 
 
 id = request.getParameter("userid");
 password = request.getParameter("userPass");
 passwordOK = request.getParameter("userpassOK");
 name = request.getParameter("userName");
 email= request.getParameter("userEmail");
 phone = request.getParameter("userAddr");
 addr = request.getParameter("postcode");
 m_addr = request.getParameter("address");
 d_addr = request.getParameter("detailAddress");
 birth = request.getParameter("birth");
 
 n = user.insertUser(id, password, passwordOK, name, email, phone, addr, m_addr, d_addr, birth);
 
 if(n>0)
	 response.sendRedirect("index.jsp");
 else
	 out.println("<script>alert('조건을 확인하세요');</script>");
	 out.print("<script> history.back() </script>");
 	 
%>
</body>
</html>