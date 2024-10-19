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
	td{
		width : 50px;
		height : 50px;
		border : 1px solid;
	}
</style>
<%
	java.util.Scanner sc = new java.util.Scanner(System.in);
	System.out.println("행열 입력 : ");
	int row = sc.nextInt();
	int col = sc.nextInt();
%>




<table>
	<%
		for(int i = 0; i < row; i++) {
			
	%>
	<tr>
		<%
			for(int j = 0; j < col; j++) {
		%>
			<td>
			
			</td>
		<%
			}
		%>
		
	</tr>
	
	<%
		}
	%>
</table>



</body>
</html>