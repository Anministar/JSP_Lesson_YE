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
	### 쿠키 ###
	쿠키 : 웹 브라우저 (Client)와 서버(Server) 간의 정보를 저장하고 관리하기 위해 사용되는 ''작은'' 데이터 조각
	    : 보통, 세션 정보, 로그인 상태 등을 저장하는데 사용됨.
	    
	0. 4KB 이하의 데이터를 저장할 수 있음. 초과하게 되면 저장 X or 오류 발생
	    
	1. 문자열 데이터로만 저장 (Key-Value를 한 쌍으로 저장)
	
	2. 여러개의 쿠키 설정 가능 (최대 300개)
	
	3. 도메인당 20개까지 저장 가능
	
	4. 저장한도를 초과하면 최근에 사용되지 않는 쿠키부터 자동 삭제
 -->
 
<%
	// KEY : VALUE
	// 쿠키 생성
	Cookie cookie = new Cookie("C1", "V1");
	cookie.setMaxAge(60 * 60);	
	cookie.setPath("/");
	
	Cookie cookie2 = new Cookie("C2", "V2");
	cookie2.setMaxAge(60 * 60);
	cookie2.setPath("./");				// 현재 폴더에만
										// 현재 02Path에만 쿠키 값이 전달되는 것임.
						
	Cookie cookie3 = new Cookie("C3", "V3");
	cookie3.setMaxAge(60 * 60);		
	cookie3.setPath("/09Cookie/01basic");
	
	
	// 쿠키 전달
	response.addCookie(cookie);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
%>

	<a href="Confirm.jsp">쿠키 확인</a>





</body>
</html>



