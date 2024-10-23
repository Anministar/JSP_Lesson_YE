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
	String pwd = request.getParameter("pwd");
	
	// 다운캐스팅 이유는 02page라는 Key로 value값을 저장하는데 이는 Object 형태로 받게끔 되어 있기 때문에 뭐든 받을 수 있는 장점이 있음.
	// 그렇지만 다시 03Page에서 getAttribute로 값을 꺼낼 때는 Object 형태이므로 다운 캐스팅을 하고 받아야함.
	String value = (String) request.getAttribute("02page");
	
	
	// 서버측에서 데이터들을 저장하고 가지고 올 때 Attribute 속성을 사용함.
	// ==> 서버측에서 백엔드(서버의 처리작업)처리를 할 때 발생하는 요소(msg == 에러 메세지)들을 Attribute단위에 담아서 저장.
	//	   그리고나서 request 객체에다가 추가해줌(setAttribute()의 역할)
	
	
	// ++) 서버측에서 백엔드 작업할 때 발생하는 요소
//		  : msg와 같은 처리 후 결과 안내 문구들
//		  : 사용자 인증 후 사용자 정보를 저장해서 이후의 요청 시에 사용
//		  : 서블릿간의 데이터 공유 == 다른 파일들과의 데이터 공유
//		  : 서블릿에서 처리한 데이터 (== 현 페이지에서 백엔드 작업한 결과, 내용들)를 JSP로 전달하여 화면 출력


// 		   이렇게 request 객체에다가 담아서 다음 페이지로 전송하게 되면
//	       다음 페이지에서 Attribute단위를 getAttribute() 메서드로 꺼내서 사용하거나, 확인할 수 있음.
//		   == 다른 페이지에 현 페이지에서 발생한 데이터를 전달할 수 있음.


	// ### Parameter와 Attribute의 차이점 ###
	// 기준				getparameter 					getAttribute
	// 용도		: 클라이언트가 전송한 요청 파라미터를 가져옴		서버 측에서 설정한 속성(Attribute)를 가져옴
	// 데이터 소스 : URL 쿼리 스트링, HTML 요청 폼 데이터		서버 측 코드에서 설정한 값(msg 등)
	// 반환값		: 문자열(String) 							객체(Object) 	++) 다운캐스팅이 필요함
	// 사용 시기  : 클라이언트 입력(폼) 데이터 처리 시 사용	    서버 측에서 발생한 데이터 공유 시 사용
	
	request.setAttribute("03page", "03Value");
	
	System.out.println("========================================");
	System.out.println("[03Page] userid : " + userid);
	System.out.println("[03Page] pwd : " + pwd);
	System.out.println("[03Page] 02page : " + value);
	System.out.println("========================================");
	
	// forwarding
	request.getRequestDispatcher("04Page.jsp").forward(request, response);
	



%>

</body>
</html>