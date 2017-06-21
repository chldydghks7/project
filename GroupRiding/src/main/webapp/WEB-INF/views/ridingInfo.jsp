<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



	
	라이딩 아이디 :		${rInfo.riding_id}		<br>
	사용자 아이디 :		${rInfo.uid}			<br>
	라이딩 시간	 :		${rInfo.alltime}		<br>
	라이딩 날짜	 :		${rInfo.startDate}		<br>
	라이딩 ??? :		${rInfo.alldistance}	<br>
	라이딩 평균속도 :	${rInfo.avgspeed}		<br>
	
	
	<script>
		var a = "${rInfo.startDate}"
		var b = "${rInfo.startDate}"
		
		var ridingDate = a.substr(0, 10);	// 2017-06-01
		var ridingTime = b.substr(11,5)		// 13:11
		alert(ridingTime);
	</script>