<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.util.*, Ch03.SimpleDto" %>


<%
	// ### 지시자 ###
	// JSP 지시자 : <%@
	// @의 의미 == 지시자 코드를 의미함.
	// JSP 코드를 처리할 떄 필요한 정보들을 처리하는 parser(해석기)에게 알려주는 것.
	
	// 1. Page 지시자
	// 2. Include 지시자
	// 3. Taglib 지시자 : 외부 정보들(EL, JSTL 등)을 들고올 때 쓰는 것.
	// ++) JSTL은 스크립틀릿과 표현식 등의 표현을 사용하기 불편해서 개발되어 나온 것.

	// 1. page 지시자
	// Error 페이지 만드는 작업(isErrorPage, errorPage)
	// 자바 클래스 경로를 등록시키는 작업(import)

%>
<%
	Scanner sc = new Scanner(System.in);
	SimpleDto dto = new SimpleDto("홍길동", "33", "대구");
	out.println(dto);

%>
</body>
</html>