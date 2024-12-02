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
	// 삭제할 쿠키이름을 파라미터로 부터 받음.
	String cname = request.getParameter("cname");

	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {							// 쿠키가 있을 때 반복처리
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals(cname)) {	// 파라미터로 받은 이름과 쿠키의 이름이 동일한 경우
				// 쿠키 수명 시간 == 0 == 쿠키 삭제
				cookie.setMaxAge(0);
			
				// 브라우저로 전달	
				response.addCookie(cookie);
			}
		}
		
	}

%>

<a href="Confirm.jsp">쿠키 확인</a>





</body>
</html>