<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 백엔드로 처리되는 코드이기 때문에 DOCUMENT 위에 붙어있어도 OKAY -->

<%
	String title = request.getParameter("title");				// 이동하바보
	String bgcolor = request.getParameter("bgcolor");			// 노랑
	
	
	
	// 만약에 bgcolor가 etc라면 == etc(기타)를 선택했다면
	if (bgcolor.equals("etc")) {
		bgcolor = "blue";			// 임의의 값으로 blue 컬러 넣어준다.
	}
	
	System.out.println("TITLE : " + title);
	System.out.println("BGCOLOR : " + bgcolor);

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body bgcolor="<%=bgcolor %>">

<h1>TITLE : <%=title %></h1>



</body>
</html>