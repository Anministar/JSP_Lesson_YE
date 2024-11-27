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
	
	// 2. 유효성 체크 (Validation Check) - 생략
	
%>

	<jsp:useBean id="sessionDto" class="Ch08.SessionDto" scope="application" />
	

<%
		// 3. Service  실행	
		session.setAttribute("userid", userid);
		session.setAttribute("remoteip", request.getRemoteAddr());		// 클라이언트가 어느 ip에서 접속했는지 확인하기 위해 정보를 session에 저장

		session.setMaxInactiveInterval(60 * 60);
		
		// sessionDto의 속성 중 Map을 Get하여 userid와 session 객체 주소를 저장.
		sessionDto.getSessionMap().put(userid, session);
		
		// 4. View 이동
		response.sendRedirect("main.jsp");

%>



</body>
</html>