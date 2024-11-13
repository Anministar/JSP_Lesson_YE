<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@ page import="java.io.*" %>


	<%
	
	// ### 01Response.jsp에서 사용되는 관련 클래스 설명 ###
		// 1. HttpServletResponse
		//		: 인터페이스 형태, Servlet이 HTTP 응답(response)를 생성하는 데 사용됨.
		//		: 여러 메서드를 제공하여 응답 헤더(response Header)를 설정하고 클라이언트에게 데이터를 전송할 수 있음.
		
		// 2. ServletOutputStream
		//		: 추상 클래스 형태, 바이트 스트림을 통해 응답 데이터를 쓰는데 사용됨.
		//		: 이 클래스의 인스턴스(객체)는 HttpServletResponse.getOutputStream() 를 통해 획득 가능.
		
		// 3. PrintWriter
		//		: 클래스 형태 	   , 문자 데이터를 응답으로 전송하는데 사용됨.
		//		: 이 클래스의 인스턴스(객체)는 HttpServletResponse.getWriter() 를 통해 획득 가능.
		
		// 4. PageContext
		//		: 클래스 형태	   , JSP페이지의 Context 정보를 제공함.
		//		: pushBody()를 사용하여 새로운 BodyContent 객체를 생성하고 out 내장객체를 이 새로운 객체로 초기화
		
		
		
		// ++)
		// 5. BodyContent
		// 		: 서브 클래스 형태 , JSPWriter의 서브 클래스, JSP 페이지의 텍스트 데이터를 버퍼링하는데 사용됨.
		// 		: pageContext.pushBody()는 out 객체를 새로운 BodyContent로 대체함.
		
		
		
		// 추가사항)
		// 스트림 (Stream) : 데이터의 흐름
		// 				  : 연속적인 데이터의 흐름을 읽거나 쓰기 위한 추상화 개념
		//				  : 데이터 소스(파일, 네트워크 연결 등)와 데이터 목적지(메모리, 파일 등) 사이에서 데이터를 효율적으로 전송 O
		
		// 스트림의 종류 : 1. 바이트 스트림(Byte Stream)
		//				|___ 바이트 단위로 데이터 처리, 주로 바이너리 데이터를 읽고 씀.
		//				|___ 추가적인 클래스 : 1)) InputStream
		//				|						|___ FileInputStream, BufferedInputStream, DataInputStream, ObjectInputStream
		//				|_________________ 2)) OutputStream
		//										|___ FileOutputStream, BufferedOutputStream, DataOutputStream, ObjectOutputStream, ServletOutputStream
		//
		//				2. 문자 스트림(Character Stream)
		//				|___ 문자 단위로 데이터 처리, 주로 텍스트 데이터를 읽고 씀.
		//				|___ 추가적인 클래스 : 1)) Reader 
		//				|						|___ FileReader, BufferedReader, InputStreamReader, StringReader
		//				|_________________ 2)) Writer
		//										|___ FileWriter, BufferedWriter, OutputStreamWriter, StringWriter
		
		// 응답 헤더 (Response Header)
		// 	: Server가 Client에게 응답(response)를 보낼 때 HTTP 헤더 부분에 포함되는 메타 데이터.
		//  : 응답에 대한 정보(ex. 콘텐츠 타입, 길이, 상태 코드 등)을 전달하는 데 사용됨.
		//  : name : value 형식으로 구성
		
		// 
	
	
	
	
		// response.sendRedirect("../02Request/01Result.jsp");			// 다음 요청 URL 전송
		
		// response 헤더정보 지정
		// response.setIntHeader("Refresh", 3); 			 			// 3초마다 새고고침이 됨.
		// response.sendError(404, "SpringBoot 싫다 싫어 !!!");			// 에러 페이지 전송
		
		// response.outStream 꺼내오기
		// 만약 아래 코드를 쓰기 않으면
		// java.lang.IllegalStateException: 응답이 이미 커밋된 후에는 sendError()를 호출할 수 없습니다.. 라는 예외가 뜬다.
		// out.clear()와 pageContext.pushbody()를 넣음으로써
		// 이전에 어딘가 출력 스트림을 사용하고 종료하지 않은 상태에서 getOutputStream() == 새로운 스트림을 생성하며 생기는 충돌 문제를 해결할 수 있음.
		// 
		/* out.clear();						// 현재 출력 스트림의 버퍼를 비우기
		out = pageContext.pushBody();		// pageContext.pushBody() : 새로운 출력 스트림을 생성하고 이를 현재 출력 스트림으로 사용하도록 설정
								// pushBody() == 기존 본문(PrintWriter 출력 스트림)이 아니라 새로운 본문(OutputStream)으로 전환한다(밀어넣다 == push)
								// == PrintWriter가 아니라 현재 페이지에서 OutputStream을 사용하기 위해 스트림을 교체함.
	
		ServletOutputStream bout = response.getOutputStream(); 		// 바이트 데이터를 쓰기 위해 ServletOutputStream 	객체를 가지고 오기
		bout.write(102);
		bout.flush();		// 버퍼 초기화 ( 버퍼를 비워 Client로 데이터를 보냄 )
		bout.close();		// 닫기 ( 스트림 닫기 ) */
		
		// out과 같은거임
		PrintWriter o = response.getWriter();			// 문자 데이터를 쓰기 위해 PrintWriter 객체를 가지고 오기
		o.println("<h1>TEST</h1>");						// println : 텍스트 데이터를 씀. html 코드를 클라이언트에게 보냄
		o.close();	 							// PrintWriter의 자원을 운영체제에게 반환
	%>
	<%=new java.util.Date().toString() %>

</body>
</html>