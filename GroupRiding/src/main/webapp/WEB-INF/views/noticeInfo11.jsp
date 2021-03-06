<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div id="map_div"></div>


<%-- 출발지점 : ${info.start_point} <br><br>
도착지점 : ${info.end_point} <br><br> --%>

그룹명 : ${info.gr_name}	<br><br>	
공지제목 : ${info.notice_title} <br><br>
출발날짜 : ${info.ridingDate} <br><br>
출발시간 : ${info.ridingTime} <br><br>
준비물 : ${info.material}<br><br>


<form action="joinNotice" method="post">
	<div id="ox">
		<input type="hidden" name="uid" value="${uid}">
		<input type="hidden" name="noticeId" value="${info.noticeId}">
		<input type="submit" id="o" name="joing" value="참여" />
		<input type="submit" id="x" name="joing" value="불참" />
	</div>
</form>

<form action="updateCheck" method="get">
	<input type="hidden" name="noticeId" value="${info.noticeId}">
	<input type="hidden" name="uid" value="${uid}">
	<input type="submit" style="color:red;" id="oo" name="joing" value="참여" />
	<input type="submit" style="color:red;" id="xx" name="joing" value="불참" />
</form>

<h4 id="ooo">참여됨</h4>
<h4 id="xxx">불참됨</h4>



<script>
	$("#oo").hide();
	$("#xx").hide();
	$("#ooo").hide();
	$("#xxx").hide();

	var joinCheck = "${joinCheck}"
	if(joinCheck=="참여") {
		$("#ox").hide();
		$("#xx").show();
		$("#ooo").show();
	} else if(joinCheck=="불참"){
		$("#ox").hide();
		$("#oo").show();
		$("#xxx").show();
	}
	
</script>

<script>
		map = new Tmap.Map({div:'map_div',
		                        width:'50%', 
		                        height:'400px',
		                        transitionEffect:"resize",
		                        animation:true
		                    }); 
		    map.setCenter(new Tmap.LonLat(14315520.90430,4283115.74626), 11);
		    map.addControl(new Tmap.Control.KeyboardDefaults());
            map.addControl(new Tmap.Control.MousePosition());
		    searchRoute();


		//경로 정보 로드
		function searchRoute(){
			var startPoint = "${info.start_point}";
			var endPoint = "${info.end_point}";
			// lon=14318318.42280631,lat=4286211.12903949
			var startx = new String(startPoint).substr(4, 17);   // 경도 자르기
			var starty = new String(startPoint).substr(26);   // 경도 자르기
              
			var stopx = new String(endPoint).substr(4, 17);   // 경도 자르기
            var stopy = new String(endPoint).substr(26);   // 경도 자르기
                

		    var routeFormat = new Tmap.Format.KML({extractStyles:true, extractAttributes:true});
		    var startX = new Object(startx);
		    var startY = new Object(starty);
		    var endX = new Object(stopx)// 14136027.789587;
		    var endY = new Object(stopy)// 4517572.4745242;
		    var urlStr = "https://apis.skplanetx.com/tmap/routes?version=1&format=xml";
		    urlStr += "&startX="+startX;
		    urlStr += "&startY="+startY;
		    urlStr += "&endX="+endX;
		    urlStr += "&endY="+endY;
		    urlStr += "&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b";
		    var prtcl = new Tmap.Protocol.HTTP({
		                                        url: urlStr,
		                                        format:routeFormat
		                                        });
		    var routeLayer = new Tmap.Layer.Vector("route", {protocol:prtcl, strategies:[new Tmap.Strategy.Fixed()]});
		    routeLayer.events.register("featuresadded", routeLayer, onDrawnFeatures);
		    map.addLayer(routeLayer);
		}
		
		//경로 그리기 후 해당영역으로 줌
		function onDrawnFeatures(e){
		    map.zoomToExtent(this.getDataExtent());
		}	
</script>