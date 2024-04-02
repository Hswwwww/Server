<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 
 request.setCharacterEncoding("UTF-8");
 
 String height = request.getParameter("height");
 String width = request.getParameter("width");
 String color = request.getParameter("color");
 String txt = request.getParameter("txt1");
 String count = request.getParameter("count");
 
 
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


	
	
	
	<% for (int i = 0; i<Integer.parseInt(count); i++){ %>

	<div style="width: <%=width %>px; height: <%=height%>px; background-color: <%=color %>;">
	<%=txt %></div><br>
	<% } %>
	
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script>

</script>
</body>
</html>