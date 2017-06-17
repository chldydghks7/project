<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>

	<div id="map_div"></div>	<!-- 지도 -->

<form action="createNotice" method="post">
		<input type="hidden" name="gr_id" value="${gr_id}"/>
		<input type="hidden" name="uid" value="${uid}"/>
		
	<input type="hidden" name="gr_name" value="${gr_name1}"><br>
	공지제목 : <input type="text" name="notice_title"> <br>
	<input type="hidden" name="start_point" id="startPoint" value=""> <br>
	<input type="hidden" name="end_point" id="endPoint" value="">	<br>
	라이딩 날짜 : <input type="date" name="ridingDate" id="ridingDate">	<br>
	라이딩 시간 : <input type="time" name="ridingTime">	<br>
	준비물 : <input type="text" name="material">	<br>
	
	<button type="submit">등록</button>
</form>
	

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
			// searchRoute();
			
			// 마커 생성
			var markerLayer = new Tmap.Layer.Markers();
			map.addLayer(markerLayer);
			
			var size = new Tmap.Size(24,38);
			var offset = new Tmap.Pixel(-(size.w/2), -(size.h/2));
			var icon = new Tmap.Icon('https://developers.skplanetx.com/upload/tmap/marker/pin_b_m_a.png', size, offset); 
			// 마커 생성    
			
			map.events.register("click", map, getlonlat)   // 맵 클릭 했을때 
			
			var lonlatcount=0;
			var startlonlat;
			var stoplonlat;
			
			
			function getlonlat(evt){
			lonlatcount+=1;
			if(lonlatcount==1)
			{
			startlonlat = map.getLonLatFromViewPortPx(evt); // 클릭지점 경도, 위도 
			alert("출발지 : " + startlonlat);    
			
			var x = new String(startlonlat).substr(4, 15);   // 경도 자르기
			// alert("경도 : " + x + " 타입 : " + typeof(new Object(x)));   // 경도 Object로 
			
			var y = new String(startlonlat).substr(24);   // 경도 자르기
			// alert("위도 : " + y + " 타입 : " + typeof(new Object(y)));   // 경도 Object로 
			$("#startPoint").val(startlonlat);
			
			return;
			
			}else if(lonlatcount==2){
			stoplonlat = map.getLonLatFromViewPortPx(evt); // 클릭지점 경도, 위도 
			alert("도착지 : " + stoplonlat);    
			
			var x = new String(stoplonlat).substr(4, 15);   // 경도 자르기
			// alert("경도 : " + x + " 타입 : " + typeof(new Object(x)));   // 경도 Object로 
			
			var y = new String(stoplonlat).substr(24);   // 경도 자르기
			// alert("위도 : " + y + " 타입 : " + typeof(new Object(y)));   // 경도 Object로 
			$("#endPoint").val(stoplonlat);
			
			searchRoute(startlonlat, stoplonlat);
			}
			
			}	
			
			
			
			//경로 정보 로드
			function searchRoute(start, stop){
			
			var startx = new String(start).substr(4, 15);   // 경도 자르기
			var starty = new String(start).substr(24);   // 경도 자르기
			
			var stopx = new String(stop).substr(4, 15);   // 경도 자르기
			var stopy = new String(stop).substr(24);   // 경도 자르기
			
			
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