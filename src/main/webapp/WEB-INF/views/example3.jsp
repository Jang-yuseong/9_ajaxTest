<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.4.1.min.js"></script>
<script>
$(function(){
	var item = $("#wrapper").html();
	$("#wrapper input[value='-']").attr('disabled', 'disabled'); //attr : attribute (속성값)
	
	// + 버튼을 클릭했을 때 바로 아래 추가
	$("#wrapper").on('click', 'input[value="+"]', function(){
		
		var company = $(this).parent().find("input[name='company']");
		var title   = $(this).parent().find("input[name='title']");
		
		if(company.val().length == 0 || title.val().length == 0) {
			alert("데이터를 입력하세요");
			company.select();
			return;
		}
		$(this).parent().after(item);
	});
	// - 버튼을 클릭했을 때 삭제
	$("#wrapper").on('click', 'input[value="-"]', function(){
		
		$(this).parent().remove();
	});
})
</script>
<script>
$(function(){
	$("#one").on('click',function(){
		$.ajax({
			method : 'get',
			url : 'hana',
			data : 'name=Takahasi_Jyuri&age=21',
			success : hana
		})
	})
	//두번째 버튼 클릭
	$("#two").on('click',function(){
		var company=$("#company1").val();
		var title=$("#title1").val();
		if(company.length==0 || title.length==0){
			alert("데이터를 입력하시오");
			$("#company1").select();
			return;
		}
		//var sendData='company='+company+'&title='+title;
		var sendData={
				"company":company,
				"title":title,
				"age":14,
		}
		$.ajax({
			method : 'post',
			url : 'dool',
			data : sendData,
			success : dool
		})
	})//end 두번째 버튼
	$("#regist").on('click', function() {
		var sendData = [];
		var data = $(".career")

		$.each(data, function(index, item) {
			var json = {};
			var company = $(item).find(".company").val();
			var title   = $(item).find(".title").val();
			json.company = company;
			json.title = title;
			sendData.push(json);
		});
		console.log(JSON.stringify(sendData));
		// 데이터 수집 완료
		$.ajax({
			method:'post',
			url : 'set',
			data : sendData,
			success : set
		})
	})
});
function hana(RocketPunch){
	alert(RocketPunch);
	$("#result").html(RocketPunch);
}
function dool(woolim){
	alert(JSON.stringify(woolim)); //stringyfy=받은 object데이터를 문자로 변환
}
</script>
</head>
<body>
<div id="main">
	<ul>
		<li><input id="one" type="button" value="1.문자 데이터 전송"></li>
		<li>
		회사명 : <input id="company1" type="text" /><br/>
		직책 : <input id="title1" type="text"/><br />
		<input id="two" type="button" value="2.입력받은 문자 데이터 전송"></li>
	</ul>
</div>
<div id="result" style="color:red;">결과물</div>

<hr>
<h1>[ 경력 관리 ]</h1>
<div id="wrapper">
	<div class="career">
		<label>
			회사명 : <input class="company" type="text" name="company">
		</label>
		<label>
			직책 : <input class="title" type="text" name="title">
		</label>
		<input class="add" type="button" value="+"> 
		<input class="sub" type="button" value="-"> 
	</div>
</div>
	<p><input id="regist" type="button" value="경력정보저장" /></p>
</body>
</html>