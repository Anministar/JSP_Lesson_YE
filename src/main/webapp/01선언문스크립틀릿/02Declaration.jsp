<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	// 1. 반복분기문 사용 불가
	// ## 반복문 X ##
	/* 
	
	for(int i = 0; i < 10; i++) {
		System.out.println("HELLO WORLD");
	} 

	*/

	// ## if문 X ##
	/* 
	
	if (true) {
		System.out.println("TEST");
	} 
	*/
	
	// 2. 산술연산식 가능
	int a = 0;
	public int addone() {
		a++;
		return a;
	}
	
	// ### 반복문이나 if문과 같은 문법적인 요소를 사용할 수 없는 이유 ###
	// ==> 선언문은 속성이나 기능을 정의하는 문장 코드들이다.
	// ==> 그런데 이를 자바 파일에서 클래스 파일로 변환했을 때 반복문이나 조건문 등이 기능 내의 코드에서 동작하는 속성이나 기능을 대체할 수 없기 때문이다.
%>

<%=addone() %>

</body>
</html>