<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 기존에 bean이라는 이름의 객체가 있기 때문에 기존 bean이라는 객체를 이용함. 첫번째 코드줄은 유효 X -->
	<jsp:useBean id="bean" class="Ch05.TestDto" scope="session" />
	<jsp:setProperty name="bean" property="msg2" value="msg2-Value" />

	<%
		System.out.println("02Page : " + bean);
	response.sendRedirect("03Page.jsp");
	%>





</body>
</html>