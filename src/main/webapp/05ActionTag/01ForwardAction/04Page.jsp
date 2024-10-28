<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>04PAGE</h1>

<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	
	String value = (String) request.getAttribute("02page");
	String value1 = (String) request.getAttribute("03page");
	
	
	String page02 = request.getParameter("02page");
	String page03 = request.getParameter("03page");

	System.out.println("========================================");
	System.out.println("[04Page] userid : " + userid);
	System.out.println("[04Page] pwd : " + pwd);
	
	System.out.println("[04Page] 02page Attribute : " + value);
	System.out.println("[04Page] 03page Attribute : " + value1);
	
	System.out.println("[04Page] 02page : " + page02);
	System.out.println("[04Page] 03page : " + page03);
	
	System.out.println("========================================");

%>

</body>
</html>