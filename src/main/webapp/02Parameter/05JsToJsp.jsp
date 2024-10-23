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
	JavaScript에서 JSP로 전달하는게 원래 불가능함.
	근데 JSP에 있는 form 요청을 통해 (document.frm) const form에다가 담아서 사용
	form 안에 있는 input 태그의 value값을 추가해주는 등의 전달이 가능해졌다.
	
	## 정리 ##
	JavaScript 자체만을 클라이언트에서 서버 측의 JSP에 직접 데이터 전달이 불가능
	But, HTML의 Form 태그, 또는 Ajax 요청을 통해 데이터를 서버로 전송하는게 가능함.
	이 데이터들을 JSP에서 처리할 수 있음.

 -->
 
 <style>
 	td {
 		border : 1px solid; width : 50px; height : 50px;
 	}	
 	
 </style>
 
 <%

	String param1 = request.getParameter("param1");
	String param2 = request.getParameter("param2");
	String param3 = request.getParameter("param3");
	String param4 = request.getParameter("param4");
	System.out.println(param1 + " " + param2 + "  " + param3 + " " + param4);
	if(param1==null && param2 == null && param3 == null && param4 == null) {
		param1 = "lightgray";
		param2 = "lightgray";
		param3 = "lightgray";
		param4 = "lightgray";
	}


%>

<table>
	<tr>
		<td bgcolor="<%=param1 %>"></td>
		<td bgcolor="<%=param2 %>"></td>
	</tr>
	<tr>
		<td bgcolor="<%=param3 %>"></td>
		<td bgcolor="<%=param4 %>"></td>
	</tr>
</table>		
 
 
 <form action="" name="frm">
 	<input type="hidden" name="param1" />
 	<input type="hidden" name="param2" />
 	<input type="hidden" name="param3" />
 	<input type="hidden" name="param4" />
 	<input type="submit" value="전송" />
 	<button onclick="sendtoJsp()">변환</button>
 </form>	
 
 <script>
 	function sendtoJsp() {
 		// 1. 폼태그 생성
 		const form = document.frm;
 		
 		// 2. input 파라미터 생성 + 값채우기
 		form[0].value = "red";
 		form[1].value = "orange";
 		form[2].value = "yellow";
 		form[3].value = "green";
		// 3. 경로 설정하기
 		form.action="05JsToJsp.jsp";
		// 4. submit 하기
 		form.submit();		// 전송
 		
 		
 		
 	}
 </script>
 

</body>
</html>