<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@page import="java.util.List"%>
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
		List<Product> products = (List<Product>) request.getAttribute("products");
	%>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>weight</th>
			<th>Edit</th>
			<th>Delete</th>
			
		</tr>
		<%
		for (Product p : products) {
		%>
		<tr>
			<td><%=p.getId()%></td>
			<td><%=p.getName()%></td>
			<td><%=p.getdimesions()%></td>
			<td><%=p.getWeight()%></td>
			<td><a href="find?pid=<%=p.getId()%>">Edit</a></td>
			<td><a href="deleteproduct?pid=<%=p.getId()%>">Delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>
