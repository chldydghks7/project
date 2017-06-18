<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<link rel='stylesheet' type='text/css' href='./resources/calendar/fullcalendar.css' />
<script type='text/javascript' src='./resources/calendar/jquery/jquery.js'></script>
<script type='text/javascript' src='./resources/calendar/jquery/jquery-ui-custom.js'></script>
<script type='text/javascript' src='./resources/calendar/fullcalendar.min.js'></script>



<style type='text/css'>

	body {
		margin-top: 40px;
		text-align: center;
		font-size: 14px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		}

	#calendar {
		width: 900px;
		margin: 0 auto;
		}
		
</style>

<div id='calendar'></div>

<script type='text/javascript'>
	$(document).ready(function() {

		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			editable: true,
			events: [
				
				<c:forEach items="${list}" var="i">
					
					{
						title: "${i.notice_title} 그룹 : ${i.gr_name} (${joinCheck})",
						start: "${i.ridingDate}",
						url: "noticeInfo?noticeId=${i.noticeId}&uid=${uid}"
					},
					
				</c:forEach>
				
			]	// events
		});
		
	});
	
	<c:forEach items="${list}" var="i">
		${i.noticeId}
	</c:forEach>
</script>
