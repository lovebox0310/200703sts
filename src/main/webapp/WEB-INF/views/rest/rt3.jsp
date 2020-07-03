<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {

		$('body').on('click', 'button', function() {

			alert("클릭됨");

			let test1 = "hello";
			let test2 = "world";
			let test4 = [ {
				"id" : "m001",
				"name" : "kim",
				"age" : 12,
				"pw" : "1"
			}, {
				"id" : "m002",
				"name" : "lee",
				"age" : 12,
				"pw" : "1"
			}, {
				"id" : "m003",
				"name" : "parck",
				"age" : 12,
				"pw" : "1"
			} ];

			$.ajax({
				type : 'post',
				url : 'rt3',
				headers : {
					'Content-Type' : 'application/json',
					'X-HTTP-Method-Override' : 'POST'
				},
				data : JSON.stringify({
					test1 : test1,
					test2 : test2,
					test4 : test4
				}),
				dataType : 'text',
				success : function(result) {
					console.log(result);
				},
				error : function(request, status, error) {
					console.log(error);
				}
			})
		})
	})
</script>
</head>
<body>
	<h1>THIS IS rt3 TEST PAGE.</h1>
	<button>RT3</button>

</body>
</html>