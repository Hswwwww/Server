<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>

</style>
</head>
<body>
<!- ->

<%@include file="/WEB-INF/views/inc/header.jsp" %>

<div id ="main">
	<h1>게시판 <small>삭제하기</small></h1>
	<form method ="POST" action="/toy/board/del.do">
	
	<div class="group">
		<button type="button" class ="back" onclick ="location.href='/toy/board/view.do?seq=${seq}';"> 돌아가기</button>
		<button type="submit" class ="del primary"> 삭제하기</button>
	</div>
	<!-- hidden 은 페이지 소스 보기 해서 잘 작동 되는지 확인하기 -->
	<input type="hidden" name="seq" value ="${seq}" /> 
	</form>
</div>

<script>

</script>
</body>
</html>