<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.io.*" %>
<%
	out.clear();

	// out == (JSP의 출력 스트림이 참조하는 출력 스트림 , JSP의 기본 스트림)

	// JSP에서 사용하던 out이 새로운 출력버퍼로 대체
	// 따라서 이후의 출력은 브라우저가 아니라 새로 생성된 스트림(출력버퍼 = out)으로 들어가게 됨.
	// JSP에서 출력되는 모든 내용(out.println())은 브라우저로 직접 가지 않고 버퍼에 저장
	out = pageContext.pushBody();


	// ### 요약 ###
	// 0. PrintWriter 객체(out 객체)와 OutputStream 객체는 공존 XXXXXXXXXX
	// 		0-1. 출력(out)과 response.getOutputStream()을 함께 사용해야 하는 경우 충돌을 방지하기 위해 pushBody()를 이용
	//		0-2. pushBody()로 out을 버퍼로 전환하면, response.getOutputStream()을 안전하게 사용할 수 있음.
	
	// 1. out 내장객체 == PrintWriter 객체 ( response.getWriter() )
	
	// 2. pageContext.pushBody() 사용 == 임시 버퍼 생성
	
	// 3. 임시 버퍼를 out이 가짐 == JSP 기본 출력 흐름을 브라우저로 보내지 않고 버퍼에 가둠
	
	// =================== 질문 : 원래 스트림은 버퍼를 가지고 있지 않나요? ===================
	// 답변 : 대부분의 스트림에는 기본적인 버퍼링 메커니즘이 존재함. 
	//     : 지금은 개발자가 관리할 수 있는 버퍼를 out에다가 줘서 함부로 동작할 수 없게 제어(관리)하는 것.
	//     : PrintWriter객체와 OutputStream객체를 함께 사용할 수 없기 때문에,
	//     : PrintWriter객체(== out)의 흐름을 버퍼에 가두고 OutputStream을 사용하기 위함.
	
	
	
	
/* 	1. 일반적인 스트림의 버퍼

		(1) 버퍼링의 개념

	•	스트림(입출력 스트림 포함)에서는 데이터를 효율적으로 처리하기 위해 버퍼링을 사용합니다.
	•	버퍼링이란? 데이터를 일정 크기의 메모리 공간(버퍼)에 모아 두었다가, 한꺼번에 처리하는 방식입니다.
	•	입력 스트림: 데이터가 버퍼에 모일 때까지 기다린 후 한 번에 읽음.
	•	출력 스트림: 데이터를 버퍼에 임시 저장했다가 한 번에 출력.

		(2) JSP 출력 스트림의 기본 버퍼링

	•	JSP의 기본 출력 객체(out)도 버퍼링을 사용합니다.
	•	기본적으로 **response.getWriter()**는 내부적으로 버퍼를 가지고 있어, 데이터를 한 번에 브라우저로 전송하지 않습니다. 
	•   일정 크기의 데이터가 쌓이면 브라우저로 전달됩니다. */
	
	// ---------------------------------------------------------------------------------------------------------------------------------------
/* 	2. pageContext.pushBody()와 일반 버퍼의 차이

		(1) 일반 스트림 버퍼의 목적

	•	효율적인 데이터 전송(메모리 관리, 네트워크 성능 최적화 등)을 위해 사용됩니다.
	•	사용자는 버퍼의 존재를 직접적으로 느끼지 못하며, 스트림 사용 시 자동으로 관리됩니다.

		(2) pageContext.pushBody()의 목적

	•	JSP에서 출력 흐름 제어를 위해 사용됩니다.
	•	브라우저로 데이터를 바로 보내지 않고, 출력 데이터를 사용자가 조작하거나 임시 저장하기 위한 별도의 버퍼를 생성합니다.
	•	이는 기본적인 스트림 버퍼링과는 별개의 기능으로, 출력 데이터의 흐름을 프로그래머가 명시적으로 제어할 수 있습니다.*/
	
	
	// ====> pushBody()로 만든 BodyContent (버퍼)는 프로그래머가 스트림 버퍼를 제어할 수 있도록 함.
	
	
	
	// download Path 확인
	// 서블릿 파일의 위치 
	// JSP_STUDYING 프로젝트까지의 절대경로 == 어플리케이션 내 특정 경로의 서버 파일의 절대 경로를 반환
	
	String realPath = pageContext.getServletContext().getRealPath("/") + "07Built_in_Object/03Response/download";
	System.out.println("RealPath : " + realPath);
	
	try {
		// InputStream ( 파일 경로로부터 프로그램 방향으로 스트림 생성 )
		FileInputStream fin = new FileInputStream(realPath + "/TEST.txt");
		
		// OutputStream ( 자바 프로그램에서 브라우저로 내용 전달할 스트림 )
		ServletOutputStream bout = response.getOutputStream();
		
		
		// response 전달 파일 타입 변경
		// 기본 Content-Type으로는 HTML 파일의 경우에는 text/html으로 되어 있음.
		// application/octet-stream 보통 다운로드할 때 파일의 기본 타입.
		// setHeader로 파일타입을 바꾸고 난 후에는 전달되는 내용을 읽으라는 소리가 아니라 다운로드하라는 의미구나 하고 다운로드를 함.
		// 근데 문제가 생김 : JSP 파일을 통째로 다운로드된다는게 문제임.
		response.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
		
		
		// Content-Disposition : 보통 다운로드할 때 알고 있어야하는 Header명임.
		//					   : 브라우저(Client)에게 컨텐츠를 어떻게 처리해야 하는지를 지시하는 헤더
		//
		// attachment 		   : 계속 이어서 파일들을 연결해서 붙이기 위해서 사용됨.
		//					   : 다운로드를 위한 첨부 파일로 처리하라는 의미.
		
		// filename=TEST.txt   : 파일이름을 어떻게 설정해줄지 결정하는 옵션
		//					   : 파일이름을 TEST.txt라는 이름으로 다운로드하겠다.
		response.setHeader("Content-Disposition", "attachment; filename=TEST.txt");

		// 파일에 있는 내용을 브라우저에 전달하겠다 == flush();
		while(true) {
			int data = fin.read();
			if(data == -1) {			// 읽을게 없을 때까지
				break;
			}
			bout.write((byte)data);
			bout.flush();
		}
		bout.close();
		fin.close();
	} catch (Exception e) {
		e.printStackTrace();
	}

%>

</body>
</html>