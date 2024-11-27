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
	form[action="loginproc.jsp"]>input[name=userid][placeholder="example@example.com"]+input[name=pwd][placeholder="INSERT PASSWORD"]+input:submit

 -->

<form action="loginproc.jsp">
	<input type="text" name="userid" placeholder="example@example.com"/><br>
	<input type="text" name="pwd" placeholder="INSERT PASSWORD"/><br>
	<input type="submit"  />
</form>


</body>
</html>