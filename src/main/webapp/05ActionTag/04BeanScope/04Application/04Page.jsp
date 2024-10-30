<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="bean" class="Ch05.TestDto" scope="application" />

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