<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//클라이언트가 서버로 전송하 데이터 수신
	
	/* 
	1. GET
		- URL뒤에 붙여서 전송
		- 택배 상자 겉의 송장에 데이터 추가
		
	2. POST
		- 패킷 본문(body)안에 넣어서 전송
		- 택배 상자 안에 넣어서 전송
		

	 */

	 //데이터 수신하기
	 //- String request.getParameter(String key)
	 
	request.setCharacterEncoding("UTF-8");
	 
	String txt = request.getParameter("txt");
	String num = request.getParameter("num");
	
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
<!- ->

<h1>결과</h1>
<div>txt : <%=txt %></div>
<div>num : <%=num %></div>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script>

</script>
</body>
</html>