<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>THIS IS READ PAGE.</h1>
	ID: ${dto.did }<br>
	Name: ${dto.dname }<br>
	<a href="/depart/update/${dto.did }">수정</a>
	<a href="/depart/list">목록</a>
	<a href="/depart/delete/${dto.did }">삭제</a>
</body>
</html>