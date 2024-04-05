<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>시작 페이지</h1>

<div>
<!-- 값이 없으면 null로 나옴 -->
<% if(session.getAttribute("id")==null){ %>
<input type="button" value ="로그인" onclick ="location.href ='/auth/auth/login.jsp';" />
<% } else { %><input type="button" value ="로그아웃" onclick ="location.href ='/auth/auth/logoutok.jsp';" /><% } %>
</div>

<% if (session.getAttribute("id")!=null){ %>
<div class ="message short"  title ="개인 정보">
<div>아이디 :${id}</div>
<div>이름 : ${name }</div>
<div>등급 : ${lv==1 ? "일반회원" : "관리자"}</div>
<% } %>
</div>

<hr />

<div><!-- 방법1 -->
<!-- # : 빈 링크
 #! 비어 있는 앵커를 만들떄 쓰는 방법 -->
	<% if(session.getAttribute("id")==null){ %>
	<a href="#!" onclick ="alert('회원만 접근 가능합니다.');">회원 전용 페이지</a><% } else { %>
	<a href="/auth/member/member.jsp">회원 전용 페이지</a> <%} %>
</div>

<div>
<!-- 방법2 -->
	<% if(session.getAttribute("id")!=null){ %>
	<a href="/auth/member/member.jsp">회원 전용 페이지</a> <%} %>
</div>

<div>
<!-- 방법2 -->
	<% if(session.getAttribute("id")!=null 
	&& session.getAttribute("lv").toString().equals("2")){ %>
	<a href="/auth/member/member.jsp">관리자 전용 페이지</a> <%} %>
</div>

<%-- <%= session.getAttribute("id") %> --%>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script>

</script>
</body>
</html>