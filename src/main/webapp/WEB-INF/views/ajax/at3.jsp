<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script>
    $(document).ready(function() {
        $('#go').click(function() {
            $.ajax({
                type : 'post',
                url : '/ajax/at3',
                dataType : 'text',
                data : {
                    'id' : 'm004',
                    'name' : 'lee',
                    'age' : '33'
                },
                success : function(result) {
                    console.log(result);

                    var obj = JSON.parse(result);
                    console.log(obj.id);
                    console.log(obj.name);
                    console.log(obj.age);

                    $('.name').text(obj.name);
                }
            });
        })
    });
</script>
</head>
<body>
    <h1>THIS IS at3 TEST PAGE.</h1>
    <button id="go">go</button>
    <p class="name"></p>
</body>
</html>