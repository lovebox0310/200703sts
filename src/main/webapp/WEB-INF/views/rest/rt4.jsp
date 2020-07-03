<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
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

</head>
<body>
	<h1>THIS IS rt4 TEST PAGE.</h1>
	<button>rt4</button>
	<%
		Object list = request.getAttribute("list");
	
		ObjectMapper mapper = new ObjectMapper();
		String liststr = mapper.writeValueAsString(list);
		pageContext.setAttribute("liststr", liststr);
	%>

	<script type="text/javascript">
		$(document).ready(function() {
			$('body').on('click', 'button', function(){
				let liststr = ${liststr};

				$.ajax({
					type: 'post',
					url: 'rt4',
					headers: {
						'Content-Type' : 'application/json',
						'X-HTTP-Method-Override' : 'POST'
					},
					data: JSON.stringify({
						liststr:liststr
					}),
					dataType: 'text',
					success: function(result){
						console.log(result);
					}
				});
			});
		});
	</script>
</body>
</html>