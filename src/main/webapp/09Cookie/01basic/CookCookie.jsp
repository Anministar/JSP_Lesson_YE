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
	Cookie cookie = new Cookie("mycookie1", "Value1");
	// 쿠키 유지 시간 | -1(기본값) : 파일 생성은 되지 않으나 브라우저가 종료될때까지 쿠키정보 저장, 브라우저 종료시 삭제
	cookie.setMaxAge(60 * 60);	
	
	Cookie cookie2 = new Cookie("mycookie2", "Value2");
	cookie2.setMaxAge(60 * 60);
	
	// 쿠키 전달
	response.addCookie(cookie);
	response.addCookie(cookie2);
%>

	<a href="Confirm.jsp">쿠키 확인</a>

</body>
</html>