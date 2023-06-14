<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
		Product p = (Product) request.getAttribute("product");
	%>
	<form action="editproduct" method="post">
		<input type="hidden" value="<%=p.getId()%>" name="id">Name<input
			type="text" name="nm" value="<%=p.getName()%>"><br>

		weight<input type="text" name="weight" value="<%=p.getweight()%>"><br>
		dimesion<input type="text" name="dm" value="<%=p.getdimesion()%>"><br>

		<input type="submit" value="Update">
	</form>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>
