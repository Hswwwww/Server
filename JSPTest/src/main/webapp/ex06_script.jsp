<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	

	//Connection conn;
	//PreparedStatement stat
	//ResultSet rs;
	//rs.getString("name")
	
	String name ="홍길동";
	int age = 20;
	String color = "cornflowerblue";
	String css = "font-size:3rem";
	
	
%>
<%= name %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1{
	color: <%=color %>
	}
	
	div{
		<%=css%>
	}
</style>
</head>
<body>




	<h1> 스크립트릿 + 표현식</h1>
	
	<div>이름 : <%= name %> </div>
	<div>나이 : <%= age %> </div>
	<div style ="background-color: <%= color %>">색상 : </div>
	
	<script>
		alert('<%=name%>');
	</script>	

</body>
</html>






// 자바 변수나 상수는 PCDATE , 상수값 css에든 어디든 쓸 수 있다.
// 자바 표현식은 소스를 만든다.