<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>THIS IS UPDATE UI PAGE.</h1>
	<form action="/depart/update" method="post">
		<input name="did" value="${dto.did }" type="hidden">
		ID: ${dto.did }<br> 
		Name: <input name="dname" value="${dto.dname }"><br>
		<input type="submit" value="수정등록">
	</form>
</body>
</html>