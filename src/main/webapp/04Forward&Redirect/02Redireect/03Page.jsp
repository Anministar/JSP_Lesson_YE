<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>03PAGE</h1>


<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String value = (String) request.getAttribute("02page");
	
	request.setAttribute("03page", "03Value");
	
	System.out.println("========================================");
	System.out.println("[03Page] userid : " + userid);
	System.out.println("[03Page] pwd : " + pwd);
	System.out.println("[03Page] 02page : " + value);
	System.out.println("========================================");
	
	// Redirect
	response.sendRedirect("04Page.jsp");



%>




</body>
</html>