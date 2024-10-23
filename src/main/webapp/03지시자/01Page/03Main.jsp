<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="03Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="Ch03.*" %>

<%

	// /01Page/03Main.jsp?username=Hello+world&age=3&addr=Internet
	// 1. 파라미터 받기
	String name = request.getParameter("username");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	
	
	// 2. Validation Check(유효성 검사)
	if(name.isEmpty()) {
		throw new Exception("이름이 공백입니다.");
	}
	
	if(age.isEmpty()){
		throw new Exception("나이가 공백입니다.");
	}
	
	if (addr.isEmpty()) {
		throw new Exception("주소가 공백입니다.");
	}
	
	// 3. Dto 단위의 객체에다가 파라미터 값으로 객체 초기화
	SimpleDto dto = new SimpleDto(name, age, addr);
	
	// 4. Validation에도 문제가 없고 Dto에 잘 담겼으면 out 내장 객체를 이용해서 브라우저에 띄워줌.
	out.println(dto);
	out.println(dto.getName());
	out.println(dto.getAge());
	out.println(dto.getAddr());
	

%>

</body>
</html>