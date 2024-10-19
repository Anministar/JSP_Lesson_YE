<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- ### JSP와 Servlet  -->
<!-- 
	JSP 			: HTML 내에 삽입된 Script 코드
					  삽입된 코드는 Servlet으로 변환되어 JVM에 의해 해석됨.
					  
	Servlet 		: JSP 이전에 사용되었던 웹페이지 표현방식
					  JAVA 코드 안에 HTML 코드를 중간에 삽입하여 처리
					  기본적으로 하나의 JSP페이지는 하나의 Servlet으로 변환 후 다시 컴파일되어 실행됨.
					  
	## 주석 ##
	Ctrl + Shift + / : 주석 설정
	Ctrl + Shift + \ : 주석 해제

 -->
 
 <!-- 
 
 	JSP ===> java 파일 형태로 변환(java는 속성과 기능(Service)를 가짐)
 	
 	## 종류 ##
 	선언문(Declaration) == class안의 속성(선언할 도구나 속성들)에 해당(속성을 만듦, 멤버변수 혹은 멤버함수)
 	스크립틀릿(Scriptlet) == class안의 기능(로직)에 해당((Service) 내에서 처리해야할 코드들을 적어주는 섹션)
 	표현식(Expression)
 	
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 선언문 -->

<%!
	// 변수 추가
	String hello = "Hello World";

	// 함수 추가
	public String testFunc() {
		System.out.println("선언문 테스트");
		System.out.println("안녕하세요");
		return "abcd";
	}

%>

<!-- 표현식 -->
<%=hello %>
<%=testFunc() %>

</body>
</html>