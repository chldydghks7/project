<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<form action="createNotice" method="post">
	<input type="hidden" name="gr_name" value="${gr_name1}"><br>
	공지제목 : <input type="text" name="notice_title"> <br>
	출발지 : <input type="text" name="start_point"> <br>
	도착지 : <input type="text" name="end_point">	<br>
	라이딩 날짜 : <input type="date" name="ridingDate" id="ridingDate">	<br>
	라이딩 시간 : <input type="time" name="ridingTime">	<br>
	준비물 : <input type="text" name="material">	<br>
	
	<button type="submit">등록</button>
</form>


<button id="cc">aa</button>

<script>
	$("#cc").on("click", function(){
		window.alert($("#ridingDate").val());
	});
</script>
