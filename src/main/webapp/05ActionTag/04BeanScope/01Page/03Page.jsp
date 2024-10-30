<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 	<!-- 
 	문제 1)
 	useBean 객체를 만드세요
 	id : bean
 	class : TestDto
 	scope : page
 	
 	-->
 	
 	
 	 
 	<!-- 
	문제 2)
 	Property를 설정
 	bean 객체의 msg3속성에 msg3-Value 값을 설정
	  -->	
	  
	  
	  
	  
 	<!-- 
 	문제 3)
 	스크립틀릿을 이용해서 03Page : (bean객체 toString() 호출 코드) 출력
 	
 	 -->
 	 
 	 
 	 
 	   
  	<!-- 
  	문제 04)
  	jsp forwardAction Tag를 사용해서 04Page.jsp로 forwarding 시키세요!

   -->
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

	<jsp:useBean id="bean" class="Ch05.TestDto" scope="page" />
 
  	<jsp:setProperty name="bean" property="msg3" value="msg3-Value" />
  
  
  <%
  	System.out.println("03Page : " + bean);
  
  %>
  
   
   
  	<jsp:forward page ="04Page.jsp" />
 
   
   
   
</body>
</html>