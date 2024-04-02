<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
/*

	페이지 > (이동) > 페이지
	
	1. HTML
	- <a href = "URL">
	- 사용자가 클릭해야 함
	
	2. JavaScript
	- location.href = 'URL'
	- 자유롭게 프로그램으로 제어 가능 > 클릭 or 호버 or 타이머 등등..
	- 클라이언트측 구현 언어
	
	3. Servlet/JSP
	- response.sendRedirect("URL")
	- 자유롭게 프로그램으로 제어 가능
	- 서버특 구현 언어
	


*/

response.sendRedirect("ex14_response_2.jsp");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>

</style>
</head>
<body>
<!-ex14_response_1.jsp ->

<h1>첫번쨰 페이지</h1>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script>
	//location.href = 'ex14_response_2.jsp';
</script>
</body>
</html>