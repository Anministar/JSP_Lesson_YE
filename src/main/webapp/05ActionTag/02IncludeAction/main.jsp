<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- Include Action Tag -->
<!-- 
	Include 지시자와 마찬가지로 다른 페이지를 현재 페이지에 포함시킬 수 있는 기능이고
						  다른 점이 있다면 include 지시자는 코드 자체를 가지고 오는거고
						  			   IncludeActionTag는 해당 모듈에서 나온 처리결과를 가져온다는 것 
						  			   == 동적 처리가 가능함.
				
 -->
 <h1>Main Page</h1>
 <p>This is the main JSP page.</p>
 
 <!-- flush 속성의 역할 : 데이터를 전송하고 버퍼를 비우는 역할 -->
 <jsp:include page="header.jsp" flush="true" />
 
 <p>Some content in the main page...</p>
 
 <jsp:include page="footer.jsp" flush="true" />

</body>
</html>