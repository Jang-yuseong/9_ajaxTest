<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<script src="resources/jquery-3.4.1.min.js"></script>
<script>
$(function(){
	$("#send").on('click', function(){
		$.ajax({
			method:'get',
			url : 'firstAjax',
			data : 'msg=Hi~',
			success : function(res){
				alert(res.name);
			}
		}) //XMLHttpRequest 객체를 생성 , method 대신 type 써도 된다
		alert("abc");
	});
})
</script>
<title>Insert title here</title>
</head>
<body>
<input id="send" type="button" value="Click Me!" /><br/>
<img src="https://scontent-icn1-1.cdninstagram.com/vp/dd00f3ea49f17a30b8be7869b816f06b/5DE78749/t51.2885-15/sh0.08/e35/p640x640/66395123_862010787516928_7570564923930963920_n.jpg?_nc_ht=scontent-icn1-1.cdninstagram.com" width=300>
</body>
</html> 