<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	// 비동기 함수		: setInterval('함수명', 반복시간);		// 반복시간마다 함수안의 로직을 수행
	let max = <%=session.getMaxInactiveInterval()%>; 	// session의 유지시간을 가지고 오는 함수
	
	
	function timer() {
		max = max - 1;
		if (max < 0) {
			clearInterval(currTime);
			alert("세션기간이 만료되었습니다.");
			location.href = "logout.jsp";
		}
		document.getElementById("timer").innerHTML = max;		// timer라는 id를 찾아서 그 요소에 max값을 넣어줌.
	}
	
	
	
	let currTime = setInterval(timer, 1000);		// 특정 로직이 들어가있는 함수 timer를 1초마다 실행
													// 실행에 대한 제어정보를 currTime에 넣어줌.
</script>


<h1>MAIN</h1>
<p id=timer></p>
Userid : <%=session.getAttribute("userid") %> <br>
[30초 뒤면 로그인 아이디 정보가 사라집니다.]

<a href="logout.jsp">로그아웃</a>


</body>
</html>