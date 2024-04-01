<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1,div{
	font-size:1.2rem;
	margin:10px;
	}
</style>
</head>
<body>
	<%
	
		Calendar now = Calendar.getInstance();
		int dan = now.get(Calendar.SECOND)%9+1;

	%>
	
	<h1>구구단 <%=dan%>단</h1>
	<% for(int i = 1; i<=9; i++){
		
	
	%>
	<div><%=dan %> X <%=i %> =<%=dan* i%></div>
	<% } %>
	
	
	
	<script>
		//Browser,jQuery> 체크
		document.get
	</script>
</body>
</html>