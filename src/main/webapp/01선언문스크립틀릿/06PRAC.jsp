<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<style>
table {
	border : 1px solid;
}
td {
	width : 50px;
	height : 50px;
	border : 1px solid;
	text-align : center;

}
</style>
<!-- 
	### 문제 ###
	구구단을 웹으로 표현하는 과정입니다.
	Scanner를 활용하여 단을 입력받아 out내장 객체를 활용하여 테이블에 결과를 만들어주세요!!

 -->
 
 
 
 <%
 	java.util.Scanner sc =  new java.util.Scanner(System.in);
 	System.out.println("단 입력 : ");
 	int dan = sc.nextInt();
 	int row = 10;
 	int col = 5; 		
 	%>

 <%
 out.print("<table>");
 for(int i = 0; i < row; i++) {
	 out.print("<tr>");
	 
	 out.print("<td>");
	 out.print(dan);
	 out.print("</td>");
	 
	 out.print("<td>");
	 out.print("X");
	 out.print("</td>");
	 
	 out.print("<td>");
	 out.print(i);
	 out.print("</td>");
	 
	 out.print("<td>");
	 out.print("=");
	 out.print("</td>");
	 
	 out.print("<td>");
	 out.print(dan * i);
	 out.print("</td>");
	 
	 out.print("</tr>");
 }
 out.print("</table>");
 %>
 



</body>
</html>