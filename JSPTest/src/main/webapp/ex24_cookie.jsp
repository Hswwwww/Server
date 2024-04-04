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

<h1>쿠키<small>Cookie</small></h1>

<div>
	<input type="button" value="쿠키에 데이터 저장하기"  id="btn1"/>
	<input type="button" value="쿠키의 데이터 읽기"  id="btn2"/>
</div>


<div>
		<a href="ex24_cookie_1.jsp">이동하기</a>
	
</div>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src ="/jsp/js/cookie.js"></script>
<script>
	$('#btn1').click(function(){
		// 쿠키 쓰기 == 저장
		// 내가 그 가게를 방문해서 주인이 카드를 만들어줘야 생성!
		
		//console.log(document.cookie);
		//console.log(typeof document.cookie); //String
		//document.cookie ='홍길동';
		
		//document.cookie ="name=홍길동&kor=100&eng=90&math=80";
		
		//js는 매개변수 다 안맞춰도 됨 > 오버로딩 따로  없음
		setCookie('name','홍길동');
		setCookie('kor','100');
		setCookie('eng','90');
		setCookie('math','80');
		
			
	});
	
	
	$('#btn2').click(function(){
		console.log(getCookie('name'));
		console.log(getCookie('kor'));
		console.log(getCookie('eng'));
		console.log(getCookie('math'));
		
	});
</script>
</body>
</html>