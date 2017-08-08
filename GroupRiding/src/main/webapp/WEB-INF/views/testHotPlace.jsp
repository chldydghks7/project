<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>

	<div id="map_div"></div>  <!-- 지도 -->
	
<script>
	
	// 거리 측정
	var pr_3857 = new Tmap.Projection("EPSG:3857");//tmap 좌표체계
	var pr_4326 = new Tmap.Projection("EPSG:4326");//geolocation 좌표체계

	function get4326LonLat(coordX, coordY){		// 35.5146549684
	    return new Tmap.LonLat(coordX, coordY).transform(pr_3857, pr_4326);
	}
	
	function get3857LonLat(coordX, coordY){	// t map lon lat
	    return new Tmap.LonLat(coordX, coordY).transform(pr_4326, pr_3857);
	}
	
	//위도경도 두점사이의 거리 meter로 
    function calculateDistance(lat1, lon1, lat2, lon2) {
        var R = 6371; // km
        var dLat = (lat2-lat1).toRad();
        var dLon = (lon2-lon1).toRad(); 
        var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
                Math.cos(lat1.toRad()) * Math.cos(lat2.toRad()) * 
                Math.sin(dLon/2) * Math.sin(dLon/2); 
        var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
        var d = parseInt(R * c*1000);
        return d;
    }
    Number.prototype.toRad = function() {
        return this * Math.PI / 180;
    }
		
    /////////////////////////////////////////////////
    /////////////////////////
    /////////////////////////////////////////////////
    
		var lonlat = [];	// DB lon, lat 저장
		var z = [];				// 좌표계 바꿔서 저장
		var hotplace = [];	// 결국 핫플!
		
		<c:forEach items="${lonlatlist}" var="i">
			lonlat.push("${i.location}");
		</c:forEach>
		
		
		
		for(var i=0; i<lonlat.length; i++) {
			
			var x = lonlat[i].split(",");	// DB , 짜르기
			z.push(get4326LonLat(x[0], x[1]));	
			
			var zlat = z[i].lat;
			var zlon = z[i].lon;
			
			var temp= z[i];
			
			 for(var j=i+1; j<lonlat.length; j++) {
					
				 var tempj=lonlat[j].split(",");
				 
				 var tempjlocation=get4326LonLat(tempj[0],tempj[1]);
				 
				 var distance = calculateDistance(zlat, zlon, tempjlocation.lat, tempjlocation.lon);
				
				 if(distance < 5) {
					 	// console.log(distance + " : " + zlat, zlon);
					 	
					 	lonlat.splice(j,1);
					 	hotplace.push(temp);
					 	lonlat.splice(i,1);
					}	// if
				 
			}	// j 
		}	// i 
		
		// console.log(hotplace[0].lon + " : " + hotplace[0].lat);
		
		var hot = [];	// 기준
		
		// 변환
		for(i=0; i<hotplace.length; i++){
			var cv = get3857LonLat(hotplace[i].lon, hotplace[i].lat);
			hot.push(cv);
		}
		// hot[0].lon    hot[0].lat
		
		////////////////
		// 지도 지도 지도 //
		///////////////
		var map, markerLayer;
	    var tdata;
	
	    centerLL = new Tmap.LonLat(14145677.4, 4511257.6);
	    map = new Tmap.Map({div:'map_div',
	                        width:'50%', 
	                        height:'400px',
	                        animation:false
	                        });
	    addMarkerLayer();                   
	    searchPOI();
	
	function addMarkerLayer(){
	    markerLayer = new Tmap.Layer.Markers("marker");
	    map.addLayer(markerLayer);
	};
	function addMarker(options){
	    var size = new Tmap.Size(12,19);
	    var offset = new Tmap.Pixel(-(size.w/2), -size.h);
	    var icon = new Tmap.Icon("https://developers.skplanetx.com/upload/tmap/marker/pin_b_s_simple.png",size,offset);
	    var marker = new Tmap.Markers(options.lonlat,icon,options.label);
	    markerLayer.addMarker(marker);
	    marker.events.register("mouseover", marker, onOverMouse);
	    marker.events.register("mouseout", marker, onOutMouse);
	}
	function onOverMouse(e){
	    this.popup.show();
	}
	function onOutMouse(e){
	    this.popup.hide();
	}
	function searchPOI(){
	    tdata = new Tmap.TData();
	    tdata.events.register("onComplete", tdata, onCompleteTData);
	    var center = map.getCenter();
	   for(var i=0; i<hot.length; i++) {
	          tdata.getPOIDataFromSearch(encodeURIComponent("식당"), {centerLon:hot[i].lon, centerLat:hot[i].lat});
	          } // 
	}
	var insertPlace ="";	// 요게 핫플레이스 마커 경도 위도
	function onCompleteTData(e){
	    if(jQuery(this.responseXML).find("searchPoiInfo pois poi").text() != ''){
	        jQuery(this.responseXML).find("searchPoiInfo pois poi").each(function(){
	            var name = jQuery(this).find("name").text();
	            var lon = jQuery(this).find("frontLon").text();
	            var lat = jQuery(this).find("frontLat").text();
	            var options = {
	                label:new Tmap.Label(name),
	                lonlat:new Tmap.LonLat(lon, lat)
	            };
	              
	              
	                console.log(options.lonlat);
	                insertPlace += options.lonlat;	// 요게 핫플레이스 마커 경도 위도
	                addMarker(options); 
	                return false;
	        });
	    }else {
	        alert('검색결과가 없습니다.');
	    }
	    map.zoomToExtent(markerLayer.getDataExtent());
	}
</script>

