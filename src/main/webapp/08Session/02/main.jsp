<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>MAIN</h1>
Userid : <%=session.getAttribute("userid") %> <br>
[30초 뒤면 로그인 아이디 정보가 사라집니다.]

<div id="countdown">30</div>

<script>
	// 초기 카운트 값 설정
	let count = 30;
	
	// 카운트 다운 함수
	function countdown() {
		// 카운트가 0보다 큰 경우에만 감소하고 업데이트
		if (count > 0) {
			count--;
			document.getElementById('countdown').innerText = count;
		} else {
			// 카운트가 0이 되면 원하는 동작 수행(예 : 어떤 액션 실행)
			// alert('30초가 경과했습니다.');
		}
	}
	
	
	
	// 1초마다 countdown 함수 호출
	setInterval(countdown, 1000);
</script>

<a href="logout.jsp">로그아웃</a>


</body>
</html>