<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="02Error.jsp"%>
    <!-- 
    	errorPage : 에러 페이지의 경로를 적어주는 지시자
     -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	// 문자열
	String num = request.getParameter("num");
	String div = request.getParameter("div");
	int n = Integer.parseInt(num);
	int d = Integer.parseInt(div);
	
	out.println("RESULT : " + (n / d));
	
%>

</body>
</html>