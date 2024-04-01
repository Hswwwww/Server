<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 자바 영역 > 변수 선언 > 변수 종류? = 메서드 안에서 선언된 지역변수..
	// 서블릿 == JSP
    int a = 10; // 지역 변수
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello</h1>
	<p> 안녕하세요</p>
	<div>a : <%= a %></div>
</body>
</html>

// 톰캣이 못 읽는 html소스만 간다. > 자바를 제외한...
// 소스를 보고 자바만 보고 실행 .. > 
