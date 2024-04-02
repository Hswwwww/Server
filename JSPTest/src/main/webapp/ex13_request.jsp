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

<!-- 상대경로 > 현재파일.으로 / 위아래 찾는거 -->
<!-- 절대경로 > "/jsp" = "webapp" 프로젝트 이름은 wepapp폴더를 가리킨다.  -->

<h1>request > 요청 정보 확인</h1>

<p> 요청 URL : <%= request.getRequestURI() %></p>
<p> 요청 서버 도메인 : <%=request.getServerName() %></p>
<p>요청 서버 포트 : <%=request.getServerPort() %></p>
<p>쿼리 문자열 : <%=request.getQueryString() %></p>
<p>요청 방식 : <%=request.getMethod() %></p>

<p>컨텍스트 경로 : <%=request.getContextPath() %></p>
<p><a href="ex12_form.jsp">12번 상대</a></p> <!--현재폴더가 sub가 되어버림..!  -->
<p><a href="/jsp/ex12_form.jsp">12번 절대</a></p>
<p><a href="<%=request.getMethod() %>/ex12_form.jsp">12번 절대</a></p> <!--컨텍스트 루트 패스가 바겼을때 수정안해도 되도록 톰캣에서 실시간으로 받아오게 한다!! -->
<p>클라이언트 주소 : <%=request.getRemoteAddr() %></p>
<p></p>
<p></p>

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script>
	
</script>
</body>
</html>