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
	// scope가 session일 때 유효
	// 기본은 5분임.
	
	// setMaxInactiveInterval() : 세션의 유효시간을 5초로 설정, 즉 5초 후에 세션 만료
	session.setMaxInactiveInterval(5);
%>

<jsp:useBean id="bean" class="Ch05.TestDto" scope="session" />

<%
	System.out.println("04Page : " + bean);

%>

<h1>RESULT</h1>
Bean의 속성 <br />
메세지 1 : <%=bean.getMsg1() %> <br />
메세지 2 : <%=bean.getMsg2() %> <br />
메세지 3 : <%=bean.getMsg3() %> <br />

</body>
</html>