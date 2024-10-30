<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		scope="application"으로 지정하게 되면 기본적으로 tomcat(서버, Server)이 꺼질 때까지 저장소가 유지
		
		Application 으로 데이터를 넣는 일이 많진 않음.
		전역범위에 데이터를 쌓아두는거 자체가 서버에 부담을 많이 주는 일이기 때문임.
		그래서 Session이나 Application의 사용은 최소하는게 좋음.
		데이터를 많이 넣는게 필요하다면 차라리 DataBase를 이용하는게 좋음.
		
		Session Scope일 때 session.setMaxInactiveInterval(); 설정을 하기 전에는 기본 5분임.

	 -->

<%
	// scope가 session일 때 유효
	// 기본은 5분임.
	
	// setMaxInactiveInterval() : 세션의 유효시간을 5초로 설정, 즉 5초 후에 세션 만료
	session.setMaxInactiveInterval(5);
%>

<!-- application은 tomcat이 유지되는 동안에는 계속 유효 -->
<jsp:useBean id="bean" class="Ch05.TestDto" scope="application" />
<jsp:setProperty name="bean" property="msg1" value="msg1-Value" />

<%
	System.out.println("01Start : " + bean);

%>


<!-- Redirect -->
<%
	response.sendRedirect("02Page.jsp");
%>




</body>
</html>