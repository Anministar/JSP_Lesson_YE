<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="resources/css/main.css" />

</head>
<body>

<%

	// ## Include 지시자 ##
	// : JSP 페이지의 코드를 Main 페이지에 가져와서 삽입하는데 사용됨.
	
	
	// Ex)
	// 포함될 페이지 ---> 포함시킬 페이지
	// a.jsp  			<%include file="a.jsp" 퍼센트기호>		// 퍼센트기호 오류때문에 한글로 적어둠 ㅠㅜ..

%>





<div class="container">
	<!-- header -->
	<%@include file="resources/module/header.jsp" %>

	<!-- nav-->
	<%@include file="resources/module/nav.jsp" %>
	<section>섹션입니다.</section>
	
	<!-- footer -->
	<%@include file="resources/module/footer.jsp" %>

</div>

</body>
</html>