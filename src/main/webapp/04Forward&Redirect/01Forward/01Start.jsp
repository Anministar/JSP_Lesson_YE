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
	### Forward ###
	Forward : request 내장객체의 내용을 유지한 채로 다른 페이지로 요청
	
	## forward 방식 페이지요청 ##
	1. request 값 유지한 채 또 다른 URI 경로로 이동
	2. 주소창의 URL경로는 유지된다.
	
	## Forward 그림 설명 ##
	URL1 자원에 대한 Request 요청 후 URL1.jsp 에서 URL2.jsp로 URL1에 대한 정보를 가지고 이동, 그 이후 URL2에 대한 Response를 전달하는 형태
	
		Client 							   	 NETWORK 							Server
																			ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	Http://ServerIp.port/URL1  ======> HTTP Request(URL1) ===============>  |	URL1.jsp 			HttpServletRequest request 		|
	 ㅡㅡㅡㅡㅡ																|	ㅡㅡㅡㅡㅡ									 ㅡㅡㅡㅡㅡ	|
	ㅣ		ㅣ																|	ㅣ		ㅣ								ㅣ		ㅣ	|
	ㅣ		ㅣ																|	ㅣ		ㅣ								ㅣ		ㅣ	|
	ㅣ		ㅣ																|	ㅣ		ㅣ								ㅣ		ㅣ	|
	 ㅡㅡㅡㅡㅡ																|	 ㅡㅡㅡㅡㅡ								 ㅡㅡㅡㅡㅡ	|
	 	↑																	|		|----- Forwarding 								|
		|																	|		↓												|
		|																	|	URL2.jsp 			HttpServletResponse response 	|
		|																	|	 ㅡㅡㅡㅡㅡ								ㅡㅡㅡㅡㅡ		|
		=========================== HTTP Response(URL2) <================	|	ㅣ		ㅣ								ㅣ 		ㅣ	|
																			| 	ㅣ		ㅣ								ㅣ URL2	ㅣ 	|
																			| 	ㅣ		ㅣ								ㅣ		ㅣ	|
																			|  	 ㅡㅡㅡㅡㅡ								 ㅡㅡㅡㅡㅡ	|
																			|														|
																			ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
																			
	==> 쉽게 말해서 원래 요청을 하고 응답을 하는 형태가 통신의 기본.
	    But Forwarding 방식은 요청을 받았지만 응답하지 않고 그 상태에서 새로운 요청을 계속 이어나간다고 생각하면 편함.
 -->
 
 <!-- form[action="02Page.jsp"]>input[name=userid]+input[name=pwd]+input:submit -->
 
<form action="02Page.jsp">
	<input type="text" name="userid" />
	<input type="text" name="pwd" />
	<input type="submit" />
</form>

</body>
</html>