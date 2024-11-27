<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="sessionDto" class="Ch08.SessionDto" scope="application" />


<%@page import="java.util.*, javax.servlet.http.*" %>

<%
	try {
		for(String key : sessionDto.getSessionMap().keySet()) { 					// sessionDto에서 SessionMap을 꺼내게 되고 거기 안에
																					// 담겨있는 userid와 session정보를 이루어져있는데,
																					// 거기서 모든 key(userid)를 꺼냄.
			
			HttpSession clientSession = sessionDto.getSessionMap().get(key);
			// foreach문으로 key에 userid를 하나씩 담아올껀데.
			// getSessionMap().get(key)라는 메서드로
			// session 정보, 즉 session의 객체정보(주소값)을 가지고 옴.
			String remoteIp = (String) clientSession.getAttribute("remoteip"); 		// 기본적으로 getAttribute()와 같은건,
																					// 반환형이 Object형태이기 때문에 형변환
			
			out.println("USERID : " + key + " | RemoteIp : " + remoteIp + "<br>");
			
		}
	
	
	} catch(Exception e) {
		
	}

	response.setIntHeader("refresh", 1);		// 1초마다 리프레쉬(새로고침)

%>


</body>
</html>