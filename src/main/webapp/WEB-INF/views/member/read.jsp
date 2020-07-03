<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	ID: ${dto.id }<br>
	Name: ${dto.name }<br>
	Age: ${dto.age }<br>
	
	<a href="/member/update/${dto.id }">수정</a>
	<a href="/member/delete/${dto.id }">삭제</a>
	<a href="/member/list">목록</a>
	
</body>
</html>