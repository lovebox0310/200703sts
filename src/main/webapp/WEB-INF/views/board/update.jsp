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
		<h2>글 수정</h2>
		<p>글번호:<strong>${vo.bno }</strong> 작성일:<strong>${vo.regDate }</strong> 작성자:<strong>${vo.writer }</strong> 조회수:<strong>${vo.wiewcnt }</strong></p>
		<div class="card">
			<div class="card-body">
				<form action="/board/update" method="post">
					<input type="hidden" class="form-control" name="bno" id="bno" value="${vo.bno }" />
					<div class="form-group">
						<label for="title">글제목:</label> <input class="form-control" name="title" id="title" value="${vo.title }" />
					</div>
					<input type="hidden" class="form-control" name="writer" id="writer" value="${vo.writer }" /> <input type="hidden" class="form-control"
						name="regDate" id="regDate" value="${vo.regDate }" />
					<div class="form-group">
						<label for="content">글내용:</label>
						<textarea class="form-control" name="content" id="content" rows="5">${vo.content }</textarea>
					</div>
					<button class="btn btn-primary" id="updateBtn">수정</button>
					<button class="btn btn-info" id="listBtn">목록</button>
					<!-- <button class="btn btn-danger" id="deleteBtn">삭제</button> -->
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#updateBtn').click(function() {
				$('form').submit();
			});
			$('#listBtn').click(function() {
				location.assign('/board/list');
			});
			/* $('#deleteBtn').click(function() {
				location.assign('/board/delete/${vo.bno }');
			}); */
		});
	</script>
</body>
</html>