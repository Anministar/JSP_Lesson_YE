<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
	td{
		width : 50px;
		height : 50px;
		border : 1px solid;
	}
</style>
<%
	java.util.Scanner sc = new java.util.Scanner(System.in);
	System.out.println("행열 입력 : ");
	int row = sc.nextInt();
	int col = sc.nextInt();
%>

<%
	// td나 tr태그를 중간에 넣는게 힘드니깐 여러가지 내장 객체를 지원함.
	// 내장 객체의 용도가 저장소로 쓰이기도 하고 브라우저 내용을 출력하기도 함 (out)
	
	// ### 내장 객체 (Built-in Objects) ###
	// JSP 내장 객체는 개발자가 별도로 생성하지 않아도 사용할 수 있는 객체들
	// 다양한 기능을 제공하고 웹 데이터 처리 및 출력에 사용됨.
	
	// 1. out		: JSP 페이지에서 데이터를 클라이언트로 출력하는데 사용.
	// Ex) out.print() 메서드, out.println() 메서드

	// 2. request 	: 클라이언트의 요청 정보를 담고 있는 객체
	// 보통 폼 데이터, 요청 파라미터, 헤더 정보 등을 처리할 수 있음.
	
	// 3. response  : 서버에서 클라이언트로 응답을 보낼 때 사용하는 객체
	// 응답 헤더 설정, 쿠키 추가, 리다이렉트 등을 할 수 있 음.
	
	// 4. session	: 클라이언트와 서버간의 세션을 관리하는 객체
	// 사용자별로 데이터를 저장하고 유지할 수 있음.
	
	// 5. application : 어플리케이션 범위의 데이터를 공유할 수 있는 객체 (모든 사용자, 모든 세션에서 접근 O)
	
	// 6. pageContext : 페이지 범위에서 데이터 공유하거나 페이지에 대한 정보를 얻을 수 있는 객체
	
	// 7. page		  : 현재 JSP 페이지 자신을 나타내는 객체
	
	// 8. config	  : JSP 페이지 설정 정보를 담고 있는 객체
	
	// 9. exception   : JSP 페이지에서 발생한 에외 정보를 담고 있는 객체 (에러 페이지에서 주로 사용.)
	
	// 기본적으로 JSP는 Servlet 파일로 변경돼서, java 파일로 변환돼서 처리가 되는데
	// 선언문 같은 경우는 속성과 기능을 정의하는데 사용, 스크립틀릿같은 경우는 service 함수 내의 삽입되는 코드들을 작성하는데 사용
	// ==> 함수 내에 코드를 삽입하는거다 보니깐 절차지향 문법(for문, if문)을 사용할 수 있는거임.
	
	out.print("<table>");
	for (int i = 0; i < row; i++) {
		out.print("<tr>");
		for (int j = 0; j <col; j++) {
			out.print("<td></td>");
		}
		out.print("</tr>");
	}
	out.print("</table>");
	// 

%>




</body>
</html>