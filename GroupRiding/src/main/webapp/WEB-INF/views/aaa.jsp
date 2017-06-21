<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./resources/slider/src/style11.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>




		<a href="#"><div id="map_div"></div></a>
		<button id="click1">1</button>
		<button id="click2">2</button>
		<button id="click3">3</button>
		<button id="click4">4</button>
		<button id="click5">5</button>



<script>
var startPoint=[];
var endPoint=[];
		map = new Tmap.Map({div:'map_div',
		                        width:'600px', 
		                        height:'450px',
		                        transitionEffect:"resize",
		                        animation:true
		                    }); 
		    map.setCenter(new Tmap.LonLat(14315520.90430,4283115.74626), 11);
		    map.addControl(new Tmap.Control.KeyboardDefaults());
            map.addControl(new Tmap.Control.MousePosition());
		
            
		    
		<c:forEach items="${list}" var="i">
			startPoint.push("${i.start_point}");
			endPoint.push("${i.end_point}");
		</c:forEach>
	
	
	var i = 0;
		
	searchRoute(startPoint[0],endPoint[0]);	
	
	$("#click1").on("click", function(){
		searchRoute(startPoint[0],endPoint[0]);
	});
	
	$("#click2").on("click", function(){
		searchRoute(startPoint[1],endPoint[1]);
	});
	
	$("#click3").on("click", function(){
		searchRoute(startPoint[2],endPoint[2]);
	});
	
	$("#click4").on("click", function(){
		searchRoute(startPoint[3],endPoint[3]);
	});
	
	$("#click5").on("click", function(){
		searchRoute(startPoint[4],endPoint[4]);
	});
	
	
		
	
		
		//경로 정보 로드
		function searchRoute(startPoint,endPoint){
			
			var startx = new String(startPoint).substr(4, 15);   // 경도 자르기
			var starty = new String(startPoint).substr(24);   // 경도 자르기
              
			var stopx = new String(endPoint).substr(4, 15);   // 경도 자르기
            var stopy = new String(endPoint).substr(24);   // 경도 자르기
                

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







