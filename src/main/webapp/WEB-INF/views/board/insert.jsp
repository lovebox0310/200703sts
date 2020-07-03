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
		<h1>글쓰기</h1>
		<div class="card">
			<div class="card-body">
				<form action="/board/insert" method="post">
					<div class="form-group">
						<label for="title">제목</label> <input name="title" id="title" class="form-control">
					</div>
					<div class="form-group">
						<label for="writer">작성자</label> <input name="writer" id="writer" class="form-control">
					</div>
					<div class="form-group">
						<label for="content">내용</label> <textarea name="content" id="content" class="form-control" rows="5"></textarea>
					</div>
				</form>

				<div class="form-group">
					<button class="btn btn-primary" id="insertBtn">등록</button>
					<button class="btn btn-info" id="listBtn">목록</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#insertBtn').click(function() {
				$('form').submit();
			});
			$('#listBtn').click(function() {
				location.href = '/board/list';
			});
		});
	</script>
</body>
</html>