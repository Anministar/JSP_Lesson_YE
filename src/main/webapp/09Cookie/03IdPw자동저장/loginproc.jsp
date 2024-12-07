<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<jsp:useBean id="BC" class="org.mindrot.bcrypt.BCrypt" scope="page" />

<%
	
	// 1. Parameter 받기
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String idchk = request.getParameter("idchk");
	String pwdchk = request.getParameter("pwdchk");
	
	
	System.out.println("ID : " + userid);
	System.out.println("PW : " + pwd);
	System.out.println("IDCHK : " + idchk);
	System.out.println("PWCHK : " + pwdchk);
	
	
	Cookie id = new Cookie("userid", userid);
	
	// DB로 부터 받은 패스워드 (가정)
	// 첫번째 인자 : 암호화할 password를 전달 = "1234"
	// 두번째 인자 : Salt값 == 패스워드의 복잡성(암호화)을 증가시키기 위한 값
	
	// hashpw() : salt값을 이용해서 pwd를 암호화시키는 것.
	//			: 암호화 진행 시 다시 원문으로 돌릴 수 없음.
	String dbpw = BC.hashpw("1234", BC.gensalt());
	
	
	
	// 2. Validation Check (유효성검사)
	// pwd("1234")와 dbpw(암호화된 1234)값이 서로 일치하지 않는다면
	if(!BC.checkpw(pwd, dbpw)) {
		System.out.println("[LoginProc SYSTEM] : PWD가 일치하지 않습니다.");
		// login.jsp로 리다이렉트(URL을 바꿔서 이동)
		response.sendRedirect("login.jsp");
		return ;
	}
	
	// 아래 코드를 실행한다는건 암호화된 DB 비밀번호와 전달한 비밀번호가 일치하다는 이야기
	Cookie pw = new Cookie("pwd", pwd);
	
	response.addCookie(id);
	response.addCookie(pw);
	
	
	
	
	
	
	
	
	
	
	/* // 2. 유효성 체크 (Validation Check)
	if(userid.equals("test@test.com") && pwd.equals("1234")) {
		// 3. Service  실행	
		session.setAttribute("userid", userid);
		session.setMaxInactiveInterval(60 * 5);			// 30분 == 60 * 5초
														// 1시간 == 60 * 60초
														// 1일   == 60 * 60 * 24
														
		// 4. View 이동
		response.sendRedirect("main.jsp");
	} else {
		response.sendRedirect("login.jsp");
	} */
	

%>



</body>
</html>