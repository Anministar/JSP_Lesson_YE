<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    
    
    <!-- 
    	isErrorPage="true" : 여기 페이지가 에러 페이지인지 아닌지 알려주는 지시자
    					   : exception 내장 객체와 연관이 있다.
    					   
    	만약, isErrorPage="true"가 없다면 exception 내장객체를 사용할 수 없습니다.
    
    
     -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>ERROR PAGE</h1>

<!-- 
	밑에처럼 적어도 사용할 수 있음.
	그러나 에러 메세지를 직접 출력하면서 페이지 이동을 하는건 보안상 좋지 않음.
 -->
 
 Error : <%=exception.getMessage() %>

</body>
</html>