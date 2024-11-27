<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@page import="java.io.*" %>

<h1>TEST1</h1>

<%

	out.print("<h1>TEST1</h1>");








	// PrintWriter 클래스 : 브라우저로 내용을 송출할 때 html 태그를 포함해서 송출할 수 있음.
	// Servlet을 하다보면 Java Class 파일에서 브라우저 방향으로 out을 보내야하는 경우 response에서 꺼내쓰면 된다는 이야기.
	PrintWriter tout = response.getWriter();
	tout.print("<h1>TEST1</h1>");
	
%>



</body>
</html>