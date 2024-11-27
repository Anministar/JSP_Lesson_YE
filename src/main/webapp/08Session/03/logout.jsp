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
	// 세션 제거
	// invalidate() : session의 내용들을 싹 비워주는 메서드(기능)
	session.invalidate();

	out.println("<script>");
	out.println("alert('로그아웃을 완료하였습니다.')");
	out.println("location.href = 'login.jsp'");
	out.println("</script>");



%>




</body>
</html>