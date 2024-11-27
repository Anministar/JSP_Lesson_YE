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
	// 1. Parameter 받기
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	
	// 2. 유효성 체크 (Validation Check)
	if(userid.equals("test@test.com") && pwd.equals("1234")) {
		// 3. Service  실행	
		session.setAttribute("userid", userid);
		session.setMaxInactiveInterval(60 * 5);			// 30분 == 60 * 5초
														// 1시간 == 60 * 60초
														// 1일   == 60 * 60 * 24
														
		// 4. View 이동
		response.sendRedirect("main.jsp");
	} else {
		response.sendRedirect("login.jsp");
	}
	

%>



</body>
</html>