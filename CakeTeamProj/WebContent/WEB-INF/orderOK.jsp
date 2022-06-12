<%@page import="work.Order"%>
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
	String cake, taste, color, text, want;
	Order order = new Order();
	int n = 0;

	cake = request.getParameter("cake");
	taste = request.getParameter("taste");
	color = request.getParameter("color");
	text = request.getParameter("text");
	want = request.getParameter("want");
	
	application.setAttribute("cake", cake);
	application.setAttribute("taste", taste);
	application.setAttribute("color", color);
	application.setAttribute("text", text);
	application.setAttribute("want", want);

	if (taste.isEmpty() && color.isEmpty()) {
		out.println("<script>alert('필수선택 종목을 확인해주세요');</script>");
		out.print("<script> history.back() </script>");

	} else
		n = order.insertOrder(cake, taste, color, text, want);
	if (n > 0)
		response.sendRedirect("index.jsp");
	%>
</body>
</html>