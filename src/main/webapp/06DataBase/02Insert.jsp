<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	 WEB-INF안에 lib 폴더와 web.xml 파일이 있어야 함.
	 없다면 1 )) lib 폴더 만들어주기   2 )) web.xml 파일 만들기
	 1 )) 우클릭 폴더 추가 lib로 만들면 되고
	 2 )) 프로젝트 이름 우클릭 - java EE tools - Generate Deployment Descriptor stub 클릭

 -->
 
 
 <%@page import="java.sql.*, java.util.*, java.lang.ClassLoader" %>
 
 <%
	/* 기본 연결 정보 */
	// String url = "jdbc:oracle:thin:@localhost:1521:xe";
	// String id = "system";
	// String pwd = "1234";
 
 	/* 기본 연결 정보 */
 	String url = "jdbc:mysql://localhost:3306/jspdb";
 	String id = "root";
 	String pwd = "test1234";
 	
 	
 	/* DB연결 관련 JDBC Class 참조변수 */
 	Connection conn = null;
 	PreparedStatement pstmt = null;
 	ResultSet rs = null;
 	
 	/* 연결 Test */
 	try {
 		Class.forName("com.mysql.cj.jdbc.Driver");				// MySQL 드라이버 클래스
 		conn = DriverManager.getConnection(url, id, pwd); 		
 		
 		System.out.println("[Connected] : " + conn);
 		
 		pstmt = conn.prepareStatement("INSERT INTO `jspdb`.`tbl_board` (`title`, `writer`, `content`) VALUES(?,?,?)");
 		
 		pstmt.setString(1, "title1");
 		pstmt.setString(2, "writer1");
 		pstmt.setString(3, "content1");
 		int result = pstmt.executeUpdate();
 		if(result > 0) {
 			System.out.println("INSERT 성공 !!!");
 		} else {
 			System.out.println("INSERT 실패 !!!");
 		}
 	
 		
 	} catch (Exception e) {
 		e.printStackTrace();
 	} finally {
 		try {pstmt.close();}catch(Exception e) {}
 		try {conn.close();}catch(Exception e) {}
 	}
 	
 	
 	
 
 %>

</body>
</html>