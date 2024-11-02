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
	String protocol = request.getProtocol();
	String serverName = request.getServerName();
	int serverPort = request.getServerPort();
	String remoteAddr = request.getRemoteAddr();
	String remoteHost = request.getRemoteHost();
	String method = request.getMethod();
	
	

	// ### URL과 URI의 차이점 ###
	// URI : 식별자		, 리소스의 경로를 나타내는 문자열
	// URL : 식별자 + 위치	, 프로토콜 서버주소(호스트) 포트번호 자원번호
	// --> 모든 URL은 URI이지만 모든 URI가 URL은 아니다.
	
	
	// 언뜻 봤을 땐 URL이 URI를 포함하는 것 같지만
	// URL(Uniform Resource Locator)는 리소스가 실제로 존재하는 위치를 나타냄.
	// URI(Uniform Resource Identifier)는 리소스의 위치(경로) 뿐만 아니라 리소스에 대한 고유 식별자로서 URL의 의미를 포함한다.
	
	// 다시 말해 URI는 리소스의 이름만 나타내고 URL은 이름과 더불어, 어떻게 그 리소스에 도달할 수 있는지 그 위치까지 함께 나타내기 때문임.
	
	// Class 상속개념과도 같다.
	// Animal Class(URI) 그리고 이를 상속받는 Dog Class(URL)가 있다고 가정하면,
	// Animal Class(URI)의 속성(식별자) + 추가 확장 메서드 및 변수(위치)를 가지는게 Dog Class(URL) 이므로,
	// Dog Class(URL)가 더 범위가 넓다고 생각할 수 있음.
	
	// 하지만 Dog Class(URL)은 확장된 요소로 인해 보다 구체적이다 라고 이야기할 수 있고,
	// 		Animal Class(URI)는 보다 상대적으로 추상적이다 라고 이야기할 수 있다.
	// 따라서 수학적인 그림은 Animal Class(URI)가 Dog Class(URL)에 속해있는 것처럼 보일 수 있지만,
	//       국어적인 개념으로는 Animal Class(URI)가 추상적이기 때문에 
	// 		 Animal Class(URI)를 기반으로 구체적인 요소를 가지는 Dog Class(URL)를 포함한다고 볼 수 있음.
	
	// 따라서 모든 URL은 URI에 속하지만(기반으로 구체적인 위치를 추가한게 URL이기 때문)
	// 	    모든 URI가 URL은 아니다.
	
	
	StringBuffer requestURL = request.getRequestURL();
	String requestURI = request.getRequestURI();
	
	
	String Browser = request.getHeader("User-Agent");
	String fileType = request.getHeader("Accept");
%>
프로토콜 : <%=protocol %> <br>
서버이름 : <%=serverName %> <br>
서버포트 : <%=serverPort %> <br>
고객주소 : <%=remoteAddr %> <br>
고객이름 : <%=remoteHost %> <br>
요청함수 : <%=method %> <br>
요청경로 : <%=requestURL %> <br>
요청경로 : <%=requestURI %> <br>
브라우저 : <%=Browser %> <br>
파일타입 : <%=fileType %> <br>


</body>
</html>