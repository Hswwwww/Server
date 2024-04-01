<%@page import="com.test.jsp.MyUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	 int a = 10; // 지역변수 
	/* jspService 메소드 안이다.! */

%>
<%!

	// 선언부
	int b = 20; // 클래스 멤버 변수
	
	public int c = 20;
	
	public int sum(int a, int b){
		return a+b;
 //이 메소드의 사용범위는 현재 jsp 안에서만 가능 .. public 써도 밖에서 못씀
 
	}
	
	MyUtil util= new MyUtil(); // 프로젝트 전역에서 사용 가능..
	
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- ex08.jsp -->

<div>10+20 = <%= sum(10,20) %></div>
<div>30+40 = <%= sum(30,40) %></div>
<div>50+60 = <%= util.sum(50,60) %></div>

</body>
</html>