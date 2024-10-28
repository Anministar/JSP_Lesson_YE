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
	### Redirect ###
	Redirect : request 내장 ""객체의 내용""을 삭제하고 다른 페이지로 요청
	++) request 내장 객체를 제거하는건 아님 ==> 브라우저에 있는 내용값을 제거한다는 의미 == 버퍼(임시 저장공간)을 비우겠다.
		request.setAttribute("02page", "02Value")를 만나도 해당 버퍼를 비우고 다음으로 이동하기에 내용값이 남아있지 X
		
		
	## Redirect 방식 페이지 요청 ##
	1. response.sendRedirect(경로)
	2. 새로운 request 요청 경로를 전달함으로써 기존 request 값은 제거
	3. URL 정보도 최종 요청한 경로로 변경
	
	## Redirect 그림 설명 ##
	Redirect 같은 경우는 URL1 자원에 대한 요청을 HTTP request 객체가 받아 Server에 HttpServletRequest request 내장 객체에 대한 정보를 전달함.
	이를 다시 URL1에 대한 Response(URL2에 대한 요청을 하라는)를 다시 Client에게 전달하고 URL2에 대한 request 요청, 그 이후 다시 Response(응답)받는 형태.
	
	

	Client 							   	 NETWORK 							Server
																			ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	Http://ServerIp.port/URL1  ======> HTTP Request(URL1) ===============>  |	URL1.jsp 			HttpServletRequest request 		|
	 ㅡㅡㅡㅡㅡ																| 	 ㅡㅡㅡㅡㅡ								 ㅡㅡㅡㅡㅡ	|
	ㅣ		ㅣ	<================= HTTP Response(URL1) <===================	|	ㅣ		ㅣ								ㅣ		ㅣ	|
	ㅣ		ㅣ				(URL2로 이동하라는 요청 정보 == sendRedirect)			|	ㅣ		ㅣ								ㅣ		ㅣ	|
	ㅣ		ㅣ																|	ㅣ		ㅣ								ㅣ		ㅣ	|
	 ㅡㅡㅡㅡㅡ																|	 ㅡㅡㅡㅡㅡ								 ㅡㅡㅡㅡㅡ	|
	↑ 	|																	|		 												|
	|	|																	|														|
	|	|																	|	URL2.jsp 			HttpServletResponse response 	|
	|	↓																	|	 ㅡㅡㅡㅡㅡ								 ㅡㅡㅡㅡㅡ	|
	|	==========================> HTTP Request(URL2) ================>	|	ㅣ		ㅣ								ㅣ 		ㅣ	|
	<==================== HTTP Response(URL2) <===================			| 	ㅣ		ㅣ								ㅣ 		ㅣ 	|
																			|  	 ㅡㅡㅡㅡㅡ								 ㅡㅡㅡㅡㅡ	|
																			|						(response에 URL2에 대한 요청 정보)	|
																			ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ								
																			
	
		
		

 -->
<form action="02Page.jsp">
	<input type="text" name="userid" />
	<input type="text" name="pwd" />
	<input type="submit" value="제출" />
</form>

</body>
</html>