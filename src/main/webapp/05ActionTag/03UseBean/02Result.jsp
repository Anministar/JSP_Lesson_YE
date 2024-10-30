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

	// 1. 파라미터 받기 : request.getParameter()
	String bookcode = request.getParameter("bookcode");
	String bookname = request.getParameter("bookname");
	String price = request.getParameter("price");
	System.out.println(bookcode + " " + bookname + " " + price);
	
	
	// 2. useBean. : 객체를 JSP코드로 만드는 기술
%>
<!-- BookDto 빈객체 생성 -->
<jsp:useBean id="bookdto" class="Ch05.BookDto" scope="page" />
<!-- 모든 파라미터 값을 bookdto에 저장(Setter 함수 이용) -->

<jsp:setProperty name="bookdto" property="*" />

<%
/* 	BookDto bookdto = new BookDto();
	bookdto.bookcode = 1001;
	bookdto.bookname = 곰돌이의 모험;
	bookdto.price = 35000; */
%>

도서번호 : <jsp:getProperty name="bookdto" property="bookcode" /> <br>
도서이름 : <jsp:getProperty name="bookdto" property="bookname" /> <br>
도서가격 : <jsp:getProperty name="bookdto" property="price" /> <br>

</body>
</html>