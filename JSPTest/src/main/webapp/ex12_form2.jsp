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

<h1>버튼 만들기</h1>

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
		<td></td>
	</tr>
	<tr>
		<th>아이콘</th>
		<td>
		<label><input type="radio" name ="rb" value="female" />없음</label>
		<label><input type="radio" name ="rb" value="male" />이미지</label>
			
		</td>
	</tr>
	<tr>
		<th>테두리</th>
		<td>
		<select name="sel1">
				<option value="1">감추기</option>
				<option value="2">보이기</option>		
		</select>
		</td>
		
			두께(px) : <input type="text" name = "enrp"/>
			
		
	</tr>

</table>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script>

</script>
</body>
</html>