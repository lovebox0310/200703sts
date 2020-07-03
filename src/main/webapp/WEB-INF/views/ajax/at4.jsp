<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.domain.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<MemberDTO> list = new ArrayList<MemberDTO>();
	list.add(new MemberDTO("m001", "kim", 22, "1"));
	list.add(new MemberDTO("m002", "lee", 22, "1"));
	list.add(new MemberDTO("m003", "pack", 22, "1"));
	
	ObjectMapper mapper = new ObjectMapper();
	String listStr = mapper.writeValueAsString(list);
	pageContext.setAttribute("listStr", listStr);
%>
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
        $('#go').click(function() {
            $.ajax({
                type : 'post',
                url : '/ajax/at4',
                dataType : 'text',
                data : {
                    listStr : JSON.stringify(${listStr})
                },
                success : function(result) {
                    console.log(result);

                    var obj = JSON.parse(result);
                    // alert(obj[0]['id']);
                    $('p').text(obj[0]['id']);
					for (let i = 0; i < obj.length; i++) {
                        const item = obj[i];
                        for (const key in item) {
                            if (item.hasOwnProperty(key)) {
                                const element = item[key];
                                // console.log(key);
                                // console.log(item[key]);
                                $('tbody').add('<td>'+item[key]+'</td>');
                            }
                        }
                    }
                }
            });
        })
    });
</script>
</head>
<body>
	<h1>THIS IS at4 TEST PAGE.</h1>
    <button id="go">go</button>
    <p></p>
    <div id="table_div">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Pw</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>

    </div>
</body>
</html>