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
	String userid = request.getParameter("userid");
	String pwd    = request.getParameter("pwd");
	
	System.out.println("===========================");
	System.out.println("[02Page] userid : " + userid);
	System.out.println("[02Page] pwd : " + pwd);
	System.out.println("===========================");
	
	
	// SetAttribute : request 객체에 속성을 설정하는 메서드
	// 속성 이름 : 02page
	// 속성 값 : 02Value
	// ==> "request" 객체에 "02page" 속성으로 "02Value" 값을 설정함.
	
	// 추후에 "request" 객체에서 getAttribute() 메서드를 이용해 "02page" 속성에 설정된 값을 가지고 올 수 있음.
	request.setAttribute("02page", "02Value");
	
	
	
	
	
	// forward 방식 페이지요청
	// 02Page.jsp로 제어권을 넘김
	// URL은 변경되지 않는다
	// request 값 유지
	
	// forwarding
	request.getRequestDispatcher("03Page.jsp").forward(request, response);


%>

</body>
</html>