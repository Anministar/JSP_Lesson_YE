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
	 JavaBean : JAVA언어로 작성된 재사용 가능한 소프트웨어 컴포넌트
	 		  : HTML에서 Java 클래스의 객체를 쉽게 생성하도록 도와주는 기능
	 		  
	 1. Properties
	 	: Java의 속성을 나타내는 변수
	 	: 속성은 private으로 선언
	 	: ==> Getter와 Setter 메서드가 존재해야 Property 사용 O
	 	
	 2. Constructor
	 	: 디폴트 생성자 (Default Constructor)를 사용
	 	: ==> 디폴트 생성자 없으면 Bean 생성 X
 -->
 
 <!-- 
 	jsp:useBean 태그 : 'dto'라는 ID를 가진 SimpleDto 클래스 객체를 생성
 	이 객체는 page 범위에 저장됨.
 	scope 속성이 page로 설정되어 있어 현재 JSP 페이지에서만 유효함.
 	
 	
 	
 	
 	++) # scope의 종류 #
 	1. page (scope 지정 X ==> page == Default Setting)
 		: Bean 객체가 현재 페이지에서만 유효함.
 		범위 : 요청 처리동안, 현재 JSP 페이지 내에서만 객체 사용 O
 		
 	2. request
 		: Bean 객체가 하나의 요청(request)내에서 유효함.
 		범위 : 요청이 시작되어 종료까지 객체를 사용할 수 있음.
 			: 여러 JSP 페이지가 하나의 요청을 처리할 때, 해당 요청 내에서 객체 공유
 			
 	3. session
 		: Bean 객체가 세션(session) 동안 유효함.
 		범위 : 사용자가 웹 어플리케이션에 접속 후 연결을 끊을 때까지 객체 사용 O
 			: 하나의 세션 동안 객체가 유지, 동일한 세션을 사용하는 모든 JSP 페이지 객체 공유 O
 			
 	4. application
 		: Bean 객체가 웹 어플리케이션 전체에서 유효
 		범위 : 웹 어플리케이션이 시작될 때 생성, 종료까지 객체 유지
 			: 모든 JSP 페이지 && 서블릿에서 객체 공유 O
  -->
  
  
  
  <jsp:useBean id="dto" class="Ch05.SimpleDto" scope="page" />
  <%
  
  	// jsp:useBean 태그를 사용하면 객체가 만들어짐
  	// 객체를 만들고 나서 pageContext 저장소 안에 setAttribute()로 저장되어 있음.
  	// 이를 getAttribute()로 꺼내오는 작업
  	System.out.println("BEAN : " + pageContext.getAttribute("dto"));
  	System.out.println("BEAN : " + dto);
  
  %>
  
  
  
  <!-- 
  	jsp:setProperty 태그 : dto 객체의 name 속성을 홍길동으로 설정
  	이때 (name속성에 홍길동을 넣을때) Setname 메서드를 호출하여 이름을 설정
   -->
   <jsp:setProperty name="dto" property="name" value="홍길동" />
   
  

<%
	System.out.println("BEAN : " + dto); 	// 이름 속성만 설정 상태 => dto 객체 확인
	dto.setAge("55");			// 나이 속성 설정 : 55 
	dto.setAddress("대구");			// 주소 속성 설정 : 대구
	System.out.println("BEAN : " + dto);	// dto 객체 상태 확인 
%>

	<!--
  	jsp:getProperty 태그 : dto 객체의 name 속성을 가져와 출력함.
  	이때 (name속성을 가지고 올 때) getName 메서드를 호출하여 이름 값을 얻음. 
   -->
   확인 : <jsp:getProperty name="dto" property="name" /> <br>
   확인 : <%=dto.getAge() %> <br>
   <!-- 
   		EL(Expression Language) : EL을 사용하여 dto 객체의 addr 속성을 가져와 출력
   		JSP 페이지에서 EL 구문을 사용하여 데이터를 표현하는 방법.
    -->
   확인 : ${dto.getAddress() } <br>
   
   
  
</body>
</html>