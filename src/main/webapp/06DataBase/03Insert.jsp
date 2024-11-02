<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="boardDto" class="Ch06.BoardDto" scope="page" />
<jsp:setProperty name="boardDto" property="*" />
 
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
 		
 		pstmt.setString(1, boardDto.getTitle());
 		pstmt.setString(2, boardDto.getWriter());
 		pstmt.setString(3, boardDto.getContent());
 		
 		
 		
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