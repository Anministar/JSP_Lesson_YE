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
	System.out.println("PageContext : " + pageContext);
	System.out.println("Request 객체 꺼내오기 : " + pageContext.getRequest());
	System.out.println("Response객체 꺼내오기 : " + pageContext.getResponse());
	System.out.println("ContextPath 확인 : " + pageContext.getServletContext().getContextPath());
	
	// pageContext.getServletContext().getContextPath()
	// : pageContext 저장소 안에 서블릿 정보를 가지고 와서 그 안에 있는 경로를 가지고 오는 것.
	// : Tomcat Server에 path가 /로 되어 있으면 아무것도 안나옴.
	// :					   /ABCD 이런식으로 경로가 있다면 그 경로를 띄워줌.
%>

<!-- Servlet에서 많이 사용 -->
ContextPath 확인 : ${pageContext.request.contextPath }

</body>
</html>