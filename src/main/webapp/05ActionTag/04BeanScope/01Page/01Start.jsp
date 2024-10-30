<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- scope는 저장소와 연결이 되어있는데 현 페이지에 저장할 수 있는 범위로 이 Bean을 만드는 것임. -->
<!-- 저장 범위가 이 페이지니깐 02Page.jsp로 넘어가면 이 Bean은 못씀. -->

<jsp:useBean id="bean" class="Ch05.TestDto" scope="page" />
<jsp:setProperty name="bean" property="msg1" value="msg1-Value" />

<%
	System.out.println("01Start : " + bean);

%>

<!-- forwarding(request는 유지된다) -->
<jsp:forward page="02Page.jsp" />




</body>
</html>