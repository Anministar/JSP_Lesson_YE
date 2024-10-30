<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- forwarding이 되는 동안, 즉 request가 계속 남아있는 동안은 값을 유지할 수 있다는 의미 -->
<jsp:useBean id="bean" class="Ch05.TestDto" scope="request" />
<jsp:setProperty name="bean" property="msg1" value="msg1-Value" />

<%
	System.out.println("01Start : " + bean);

%>

<!-- forwarding(request는 유지된다) -->
<jsp:forward page="02Page.jsp" />




</body>
</html>