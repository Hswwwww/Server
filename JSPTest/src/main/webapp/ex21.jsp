<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//디렉토리 탐색
	String path = application.getRealPath("/pic");
	
	File dir = new File(path);
	File[] list = dir.listFiles();

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
	#list {
		/* outline: 10px solid black; */
		width: 750px;
		display: flex;
		flex-wrap: wrap;
		padding: 0;
		margin-left: 25px;
	}
	#list > div {
		border: 1px solid #999;
		width: 126px;
		height: 126px;
		margin: 11px;
		background-size: cover;
		background-repeat: no-repeat;
		background-position: center center;
		position: relative;
		left: 0;
		top: 0;
	}
	
	#list > div > span {
		position: absolute;
		right: 5px;
		top: 0;
		font-size: 1.5rem;
		cursor: pointer;
		display: none;
	}
	
	#list > div:hover > span {
		display: inline;
	}
</style>
</head>
<body>
	<!-- ex21.jsp -->
	<!--  
		1. 이미지 확대 보기(모달창)
		2. 이미지 정렬
	-->
	<h1>Image Gallery</h1>
	
	<div id="list">
		<% for (File file : list) { %>
		<div style="background-image:url(pic/<%= file.getName() %>);">
			<span title="delete" 
			onclick="del('<%= file.getName() %>');">&times;</span>
		</div>
		<% } %>
	</div>
	
	<hr>
	
	<form method="POST" action="ex21_ok.jsp"
		enctype="multipart/form-data">
	<table class="vertical">
		<tr>
			<th>이미지</th>
			<td><input type="file" name="attach" required></td>
		</tr>
	</table>
	<div>
		<input type="submit" value=" 이미지 업로드 ">
	</div>
	</form>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script>
	
		function del(filename) {
			//alert(filename);
			
			if (confirm('delete?')) { //컨펌
				location.href = 'ex21_del.jsp?filename=' + filename; /* 데이터 전달 */
			}
			
		}
	
	</script>
</body>
</html>









