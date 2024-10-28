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
	/* 스크립틀릿과 같은 내용들은 웹 브라우저의 버퍼에 쌓이게 되는데 이는 ActionTag를 만나게 되면 비워버리게 됨(버퍼를 비움) 그리고 나서 다음 위치로 이동함.
	
	
	액션 태그 forwarding과 일반 forwarding 방식 중에서 Servlet으로 넘어가게 되면 자주 사용하는건 일반 forwarding 방식임.

	[ Why ? ]
			1. 액션 태그 포워딩(Action Tag Forwarding)과 일반 포워딩 (Forwarding) 방식의 차이
				1-1) 액션 태그 포워딩 : 액션 태그는 JSP 내부에서 사용되어 다른 리소스로 요청을 전달하는 태그 == <jsp:forward> 태그
				
				Ex)
					<jsp:forward page="page_nmae.jsp">
						<jsp:param name="paramName" value="paramValue" />
					</jsp:forward>
					
				1-2) 일반 포워딩 방식 : 서블릿에서 RequestDispatcher를 사용하여 다른 리소스로 요청을 포워딩하는 방식

				Ex) 
					RequestDispathcer dispatcher = request.getRequestDispatcher("page_name.jsp");
					dispatcher.forward(request, response);
					
					또는
					
					request.getRequestDispatcher("page_name.jsp").forward(request, response);
			
			2. 서블릿 일반 포워딩(forwarding)을 자주 사용하는 이유
				2-1) 컨트롤러(Controller) 역할
 					==> 클라이언트의 요청을 받아 필요한 로직을 처리, 그 결과는 JSP와 같은 뷰로 포워딩
 					
 				2-2) 유연한 처리
					==> 필요한 로직을 수행하고 다양한 조건에 따라 동적으로 포워딩할 페이지를 결정할 수 있음.
					
					Ex) 
						로그인 검증 후 메인 페이지로 이동, 실패하면 로그인 페이지로 포워딩하는 처리
						
				2-3) 데이터 전달의 용이성
					==> 요청 객체(Request)를 그대로 전달할 수 있기 때문에, JSP은 서블릿에서 설정한 속성들을 쉽게 접근할 수 있음.
					
					
					Ex)
						request.getRequestDispatcher("page_name.jsp");
						
			
						JSP에서 데이터 사용
						<p>User Name : ${userData.name}</p>
			
			forward 방식 페이지 요청
			request 값 유지한 채 또 다른 URI 경로로 이동
			주소창의 URL경로는 유지된다.
	
	*/
	http://localhost:8130/JSP_Studying/05ActionTag/01ForwardAction/02Page.jsp?userid=test&pwd=test1234

%>

<form action="02Page.jsp">
	<input type="text" name="userid" />
	<input type="text" name="pwd" />
	<input type="submit" />
</form>

</body>
</html>