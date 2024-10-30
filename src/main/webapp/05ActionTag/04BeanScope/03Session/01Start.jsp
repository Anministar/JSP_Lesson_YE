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
	
		Session 객체는 request와 response 객체와 상관없이 내가 원하는 일정 시간동안 데이터를 유지시키고 싶을 때 사용.
		
		request보다 Session이 조금 더 상위 Scope.
		
		Session을 지정하면 기본적인 유효범위는 브라우져가 꺼지기 전까지임.	
		
		우리가 그 값, 시간을 지정할 수 있음.
		
		Session은 request와 response의 반복과 상관없이 어떤 데이터를 지속적으로 저장할 때 사용함.
	
	 -->
	 
	 <!-- 
	 	## 왜 Session이 나왔을까!? ##
	 	
	 	==> Client가 특정 Server의 Service(웹페이지)를 요청하는데 Client는 소수가 아니라 다수.
	 	    따라서 모든 Client의 웹페이지 요청에 대한 데이터를 계속해서 Server가 가지고 있으면 메모리 사용량과 필요량이 기하급수적으로 늘어날 것임.
	 	    
	 	    HTTP Protocol(프로토콜) 처음에는 Request에 대한 Response 이후로는 연결이 끊어지게끔 만들어둠(Connectless 형태)
	 	    그 이후 또다른 Request가 있어야만 다시 연결되도록 설정이 되어 있음.
	 	    
	 	    그런데 시간이 지나면서 홈페이지 내에서 작업을 하는 경우가 생김
	 	    예를 들면 쇼핑몰 홈페이지에 로그인을 하고 나서 쇼핑(서칭)도 하고 구매 전에 장바구니에 담는 등의 이런 과정들 
	 	    
	 	    이럴땐 계속적으로 연결이 되어있어야 효율적임. 그래서 브라우져 내에서는 Session이라는 개념을 이용해 지정된 시간동안에는 값을 계속 유지시킬 수 있도록
	 	    저장소를 따로 만들어줌
	 	    
	 	    주의점은 이러한 저장소를 남용하게 되면 서버의 부담을 가중시키게 되므로, Session의 사용은 최소화하는게 좋음
	 	    
	 	    Client 						Network  						Server
	 	    															|ㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	 	    															|Service ㅡㅡ  |	
	 	    Client 	-------------------------------------HTTP Request->	| |resource|  |
	 	    		<-HTTP Response------------------------------------ | |        |  |
	 	    															| |ㅡㅡㅡㅡㅡㅡ  |
	 	    Client 														|ㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	 	    
	 	    
	 	    ## Request Scope와 Session Scope의 차이점 ##
	 	    1. request Scope
	 	   	범위     : HTTP 요청 (request)
	 	    유지기간  : 한번의 요청 (reqeust)에서만 유효, 즉 서버가 응답(response)를 보낼 때까지만 유지됨.
	 	    주기     : 새로운 요청 (Request)마다 새로운 JavaBean 객체가 생성됨.
	 	    특징     : 1 )) 요청과 요청 사이에서는 데이터가 유지되지 않음. 
	 	    		  2 )) '단일' 요청 내에서 데이터를 처리하거나 전달할 때 사용
	 	    
	 	    
	 	    2. Session Scope
	 	    범위		: HTTP 세션 (Session)
	 	    유지기간  : 세션이 유지되는 동안 유효, 세션이 만료되거나 사용자가 로그아웃할 때까지 유지
	 	    주기		: 세션 내에서 한번만 생성, 동일한 세션이 존재하는 동안 여러 요청에서 같은 객체에 접근할 수 있음
	 	    특징 	 	: 1 )) 세션이 지속되는 동안 데이터가 유지됨. 
	 	  			  2 )) 주로 사용자의 상태 정보를 유지하거나 '여러' 요청에 걸쳐 데이터를 공유할 때 사용
	 	    
	 	    
	 	    ## 표 정리 ##
	 	    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	 	    |특성			|	request Scope 				|	Session Scope 														|
	 	    |범위			|	'단일' HTTP 요청				|	HTTP 세션															|
	 	    |유지기간			|	요청이 처리되는 동안				|	세션이 유지되는 동안 													|					
	 	    |주기 			|	요청마다 객체 생성				|	세션 내에서 한번만 객체 생성												|
	 	    |사용 용도		|	단일 요청 내 데이터 처리 및 전달   |	사용자 상태 정보 유지 ( 로그인 정보, 장바구니 상태 등등)  및  요청 간 데이터 공유	|
		 	|ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	 	    
	  -->
	
	

<%
	// scope이 session일 때 유효. 
	// 기본은 5분임.
	
	// setMaxInactiveInterval() : 세션의 유효시간을 5초로 설정, 즉 5초 후에 세션 만료
	session.setMaxInactiveInterval(5);
%>



<jsp:useBean id="bean" class="Ch05.TestDto" scope="session" />
<jsp:setProperty name="bean" property="msg1" value="msg1-Value" />

<%
	System.out.println("01Start : " + bean);

%>

<!-- forwarding(request는 유지된다) -->
<jsp:forward page="02Page.jsp" />




</body>
</html>