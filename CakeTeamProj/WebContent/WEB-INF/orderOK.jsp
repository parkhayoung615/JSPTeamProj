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
	String cake, name, refund, sell, taste, color, text, want;
	Order order = new Order();
	int n = 0;

	cake = request.getParameter("cake");
	name = request.getParameter("name");
	refund = request.getParameter("refund");
	sell = request.getParameter("sell");
	taste = request.getParameter("taste");
	color = request.getParameter("color");
	text = request.getParameter("text");
	want = request.getParameter("want");

	if (name.isEmpty() && taste.isEmpty() && color.isEmpty()) {
		out.println("<script>alert('조건을 확인하세요');</script>");
		out.print("<script> history.back() </script>");

	} else
		n = order.insertOrder(cake, name, refund, sell, taste, color, text, want);
	if (n > 0)
		response.sendRedirect("index.jsp");
	%>
</body>
</html>