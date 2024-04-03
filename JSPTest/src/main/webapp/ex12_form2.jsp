<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<script src="https://kit.fontawesome.com/afff3ca9e2.js" crossorigin="anonymous"></script>
<style>

</style>
</head>
<body>
<!- ->

<h1>버튼 만들기</h1>
<form method="POST" action ="ex12_ok2.jsp">
<table class ="vertical">
	<tr>
		<th>너비(px)</th>
		<td><input type="number" name ="width" /></td>
	</tr>
	<tr>
		<th>높이(px)</th>
		<td><input type="number" name ="height" /></td>
	</tr>
	<tr>
		<th>텍스트</th>
		<td><input type="text" name ="txt1" /></td>
	</tr>
	<tr>
		<th>배경색</th>
		<td><input type="color" name ="bgcolor" /></td>
	</tr>
	<tr>
		<th>글자색</th>
		<td><input type="color" name ="fcolor" /></td>
	</tr>
	<tr>
		<th>글자 크기(px)</th>
		<td><input type="number" name = "fsize" /></td>
	</tr>
	<tr>
		<th>버튼 개수(ea)</th>
		<td><input type="number" name ="bcount" /></td>
	</tr>
	<tr>
		<th>버튼 간격</th>
		<td>
		<div>좌우 간격 : <input type="range" min="0" max="50" value="0" name="leftright"></div>
				<div>상하 간격 : <input type="range" min="0" max="50" value="0" name="topbottom"></div>
		</td>
	</tr>
	<tr>
		<th>아이콘</th>
			<td>
				<input type="radio" name="icon" value="none" checked> 없음
				<input type="radio" name="icon" value="fa-solid fa-house"> <i class="fa-solid fa-house"></i>
				<input type="radio" name="icon" value="fa-solid fa-image"> <i class="fa-solid fa-image"></i></span>
				<input type="radio" name="icon" value="fa-solid fa-location-dot"> <i class="fa-solid fa-location-dot"></i></span>
				<input type="radio" name="icon" value="fa-brands fa-github"> <i class="fa-brands fa-github"></i>
				<input type="radio" name="icon" value="fa-solid fa-paperclip"> <i class="fa-solid fa-paperclip"></i>
			</td>
	</tr>
	<tr>
		<th>테두리</th>
		<td>
		<div>
		<select name="sel1" id = "border" >
				<option value="n">감추기</option>
				<option value="y">보이기</option>		
		</select>
		</div>
		<div id ="border-show">
			<div>두께(px) : <input type="number" name ="border-thick" /></div>
			<div>색상 : <input type="color" name ="border-color" /></div>
			<div>스타일 : 
			<select name="sel2">
				<option value="1">실선</option>
				<option value="2">쇄선</option>		
				<option value="3">점선</option>		
		</select></div>
		<div>모서리 : <input type="number" name ="corner" /></div>
		</div>
		</td>
		
			
		
	</tr>

</table>

<div><input type="submit" value ="만들기" /></div>
</form>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<script>
	$('#border-show').hide();
	$('#border').change(function(){
		if($(this).val() =="y"){
			$('#border-show').show();
		}else {
			$('#border-show').hide();
		}
	});
</script>
</body>
</html>