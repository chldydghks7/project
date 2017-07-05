<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


	
	라이딩 아이디 :		${rInfo.riding_id}		<br>
	사용자 아이디 :		${rInfo.uid}			<br>
	라이딩 시간	 :		${rInfo.alltime}		<br>
	라이딩 날짜	 :		${rInfo.startDate}		<br>
	라이딩 ??? :		${rInfo.alldistance}	<br>
	라이딩 평균속도 :	${rInfo.avgspeed}		<br>
	kml_Id :  ${rInfo.kml_id} <br>
	
	
	
	
<table>
	<tr>
		<th>총시간(초)</th>
		<th>고도</th>
	</tr>
	
	<c:forEach items="${grap}" var="i" varStatus="status">
		<tr>
			<th>${status.count}</th>
			<th>${i.altitude}</th>
		</tr>
	</c:forEach>
</table> <br>

<table>
	<tr>
		<th>총시간(초)</th>
		<th>속도</th>
	</tr>
	
	<c:forEach items="${grap}" var="i" varStatus="status">
		<tr>
			<th>${status.count}</th>
			<th>${i.speed}</th>
		</tr>
	</c:forEach>
</table>
	
	
	
	
	<div id="chart_div" style="width: 800px;"></div>	<!-- 고도 그래프 -->
	
	<div id="chart_div1" style="width: 800px;"></div>	<!-- 속도 그래프 -->
	
	<script>
	google.charts.load('current', {packages: ['corechart', 'line']});
	google.charts.setOnLoadCallback(drawBasic);

	function drawBasic() {

	      var data = new google.visualization.DataTable();
	      data.addColumn('number', 'X');
	      data.addColumn('number', '고도');

	      data.addRows([
	    	  <c:forEach items="${grap}" var="i" varStatus="status">
	    	 	 [${status.count}, ${i.altitude}],
	    	  </c:forEach>
	      ]);

	      var options = {
	        hAxis: {
	          title: '시간(초)'
	        },
	        vAxis: {
	          title: ''
	        },
	        colors: ['red']


	      };

	      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

	      chart.draw(data, options);
	    }
	</script>
	
	<script>
	google.charts.load('current', {packages: ['corechart', 'line']});
	google.charts.setOnLoadCallback(drawBasic);

	function drawBasic() {

	      var data = new google.visualization.DataTable();
	      data.addColumn('number', 'X');
	      data.addColumn('number', '속도');

	      data.addRows([
	    	  <c:forEach items="${grap}" var="i" begin="0" varStatus="status">
	    	  [${status.count}, ${i.speed}],
	    	  </c:forEach>
	      ]);

	      var options = {
	        hAxis: {
	          title: '시간(초)'
	        },
	        vAxis: {
	          title: ''
	        },
	        colors: ['blue']


	      };

	      var chart = new google.visualization.LineChart(document.getElementById('chart_div1'));

	      chart.draw(data, options);
	    }
	</script>
	
	
	
	
	
	
	<script>
		var a = "${rInfo.startDate}"
		var b = "${rInfo.startDate}"
		
		var ridingDate = a.substr(0, 10);	// 2017-06-01
		var ridingTime = b.substr(11,5);		// 13:11
	</script>