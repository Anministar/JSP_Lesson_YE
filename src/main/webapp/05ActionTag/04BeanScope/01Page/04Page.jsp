<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>RESULT</h1>

<jsp:useBean id="bean" class="Ch05.TestDto" scope="page" />

<%
	System.out.println("04Page : " + bean);
%>

</body>
</html>