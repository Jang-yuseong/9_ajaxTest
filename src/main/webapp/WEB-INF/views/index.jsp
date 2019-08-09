<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.4.1.min.js"></script>
<script>
$(function(){
	$("#one").on('click',function(){
		$.ajax({
			method : 'get',
			url : 'ajaxone',
			success : one
		})
	})
	$("#two").on('click',function(){
		$.ajax({
			method : 'get',
			url : 'ajaxtwo',
			success : two
		})
	})
	$("#three").on('click',function(){
		$.ajax({
			method : 'get',
			url : 'ajaxthree',
			success : three
		})
	})
	$("#four").on('click',function(){
		$.ajax({
			method : 'get',
			url : 'ajaxfour',
			success : four
		})
	})
});
function one(res){
	var temp = "<p>" + res + "</p>";
	$("#result").html(temp);
}
function two(res){
	var company = res.company;
	var title = res.title;
	
	var tag="회사명 : " + company;
	tag += ", 직책 : " + title +"</p>" 
	
	$("#result").html(tag);
}
function three(resp){
	var tag = '<p>';
	$.each(resp,function(index,item){
		tag += item.company + ", ";
		tag += item.title + "<br />";
	});
	$("#result").html(tag+"</p>");
}
function four(resp){
	var tag = '<p>';
	$.each(resp,function(index,item){
		tag += item.company + ", ";
		tag += item.title + "<br />";
	});
	$("#result").html(tag+"</p>");
}
</script>
</head>
<body>
<p><a href="next">다음 처리 페이지</a></p>
<div id="main">
	<ul>
		<li>
			<input id="one" type="button" value="Ajax 요청---문자열"/>
		</li>
	</ul>
	<ul>
		<li>
			<input id="two" type="button" value="Ajax 요청2---vo"/>
		</li>
	</ul>
	<ul>
		<li>
			<input id="three" type="button" value="Ajax 요청3---ArrayList"/>
		</li>
	</ul>
	<ul>
		<li>
			<input id="four" type="button" value="Ajax 요청4---Map"/>
		</li>
	</ul>
</div>

<div id="result" style="color:red;">
	결과물
</div>
</body>
</html> 