<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/member/update" method="post">
		ID: <input name="id" value="${dto.id }" readonly="readonly"><br>
		Name: <input name="name" value="${dto.name }"><br>
		Age: <input name="age" value="${dto.age }"><br>
		<input type="submit" value="수정">
	</form>
</body>
</html>