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
	session.setAttribute("ID", "example@example.com");
	session.setAttribute("PW", "1111");
	session.setMaxInactiveInterval(10);
	
	
	request.setAttribute("ID2", "example2@example.com");
	request.setAttribute("PW2", "2222");
	
	
	// a 태그는 기본적으로 GetSession으로 request요청을 get방식으로 함.
	// 즉 새로운 요청을 하게 되는거임.
%>

<a href="GetSession.jsp">세션 정보 확인</a>



</body>
</html>