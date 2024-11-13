<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.io.*, java.util.zip.*" %>
<%
	out.clear();
	out = pageContext.pushBody();
	
	// download Path 확인
	// 서블릿 파일의 위치
	String realPath = pageContext.getServletContext().getRealPath("/") + "07Built_in_Object/03Response/download";
	System.out.println("RealPath : " + realPath);
	

	try {
		
		File dir = new File(realPath);			// File dir 경로 설정 == 폴더와 연결 단계(과정)
		
		// listFiles() : 해당 경로 안에 있는 파일 리스틀ㄹ filelist배열 안에 넣어줌.
		File[] filelist = dir.listFiles();		// dir 안 모듈 파일정보를 File 배열 형태로 받기
		
		
		
		// ipOutputStream을 이용하여 여러 파일을 압축하고, ZipEntry를 이용하여 압축 파일에 포함될 각 파일의 정보를 설정.
		// 파일을 압축하는 과정에서 zout.write((byte) data)를 통해 파일의 각 바이트를 압축 파일에 쓰고 있음.
		FileInputStream fin = null;
		ZipEntry zipEntry = null;				// Zip 묶여지는 단일파일 단위
		
		out.clear();
		out = pageContext.pushBody();
		
		ServletOutputStream bout = response.getOutputStream();
		
		// response 헤더 설정
		response.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
		response.setHeader("Content-Disposition", "attachment; filename=TestCollection.zip");
		
		// bout을 넣게되면서 파일 여러개를 zout 스트림을 통해 압축해서 Client 전달할 수 있음.
		// OutputStream의 보조 스트림으로 ZipOutputStream이 들어가고 있는 것임.
		ZipOutputStream zout = new ZipOutputStream(bout);
		
		for(File file : filelist) {
			fin = new FileInputStream(file);
			ZipEntry zip = new ZipEntry(file.getName().toString());	// 파일이름만 ZipEntry에 넣어줌. 그걸 zip 참조변수와 연결
			zout.putNextEntry(zip);					// zip이 참조하는 ZipEntry 객체 ( 첫번째 파일의 이름 ) putNextEntry로 zip 파일 안에 넣게 됨.
													// 이걸 파일이 세개이므로 세번 반복
													// putNextEntry() == 파일 열기
													
													
			// --------------------------------내용들을 넣어주는 코드(== 내용 넣기)--------------------------------										
			while(true) {
				int data = fin.read();
				if(data == -1) {
					break;
				}
				zout.write((byte) data);
			}
			// ------------------------------------------------------------------------------------------------
			
			zout.closeEntry();			// 내용을 다 넣었으면 Entry단위를 닫아주는 코드
			fin.close();				// 경로의 첫번째 파일과의 Connection을 끊는 과정 
		}
		zout.close();
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}

%>

</body>
</html>