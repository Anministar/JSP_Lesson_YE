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
	String [] hobbys = request.getParameterValues("hobbys");
	// getParameter() : 해당되는 파라미터 값 하나만 가지고 옴.
	// getParameterValues() : 해당되는 파라미터 값을 배열 형태로 가지고 옴. (여러가지 값 O)

	for(String hobby : hobbys)	{
		out.println("ParamVal : " + hobby + "<br>");
	}


%>
</body>
</html>