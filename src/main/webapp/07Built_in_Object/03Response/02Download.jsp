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
	out = pageContext.pushBody();


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