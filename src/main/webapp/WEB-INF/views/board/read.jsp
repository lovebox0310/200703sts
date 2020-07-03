<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>${vo.title }</h2>
		<p>글번호: ${vo.bno } 작성자: ${vo.writer } 작성일자: ${vo.regDate } 조회수: ${vo.wiewcnt }</p>
		<div class="card">
			<div class="card-body">
				<p class="card-text">${vo.content }</p>
				<button class="btn btn-primary" id="updateBtn">수정</button>
				<button class="btn btn-info" id="listBtn">목록</button>
				<button class="btn btn-danger" id="deleteBtn">삭제</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#updateBtn').click(function(){
				location.assign('/board/update/${vo.bno}');
			});
			$('#listBtn').click(function(){
				location.assign('/board/list');
			});
			$('#deleteBtn').click(function(){
				location.assign('/board/delete/${vo.bno }');
			});
		});
	</script>
</body>
</html>