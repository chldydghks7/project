<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>

	
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
    
		/* var lonlat = [];	// DB lon, lat 저장
		var z = [];				// 좌표계 바꿔서 저장
		var hotplace = [];	// 결국 핫플!
		
		<c:forEach items="${lonlatlist}" var="i">
			lonlat.push("${i.location}");
		</c:forEach>
		
		
		
		for(var i=0; i<lonlat.length; i++) {
			if(lonlat[i] == 0) {  continue; }
			var x = lonlat[i].split(",");	// DB , 짜르기
			z.push(get4326LonLat(x[0], x[1]));	
			
			var zlat = z[i].lat;
			var zlon = z[i].lon;
			
			//var temp= z[i];
			
			 for(var j=i+1; j<lonlat.length; j++) {
				
				 var distance = calculateDistance(zlat, zlon, z[j].lat, z[j].lon);
				
				 if(distance < 20) {
					 	console.log(zlat, zlon);
					 	lonlat[i] = 0;
					 	//hotplace.push(temp);
					}	// if
				 
			}	// j 
		}	// i  */
		
		////
		////
		var lonlat = [];	// DB lon, lat 저장
		var z = [];				// 좌표계 바꿔서 저장
		var hotplace;	// 결국 핫플!
		
		<c:forEach items="${lonlatlist}" var="i">
			lonlat.push("${i.location}");
		</c:forEach>
		
		
		
		for(var i=0; i<lonlat.length; i++) {
			
			var x = lonlat[i].split(",");	// DB , 짜르기
			z.push(get4326LonLat(x[0], x[1]));	
			
		}	// i
		
		
		for(var y=0; y<lonlat.length; y++) {
			if(lonlat[i] == 0) {  continue; }
			var zlat = z[y].lat;
			var zlon = z[y].lon;
			
			for(var j=y+1; j<lonlat.length; j++) {
				
				var distance = calculateDistance(zlat, zlon, z[j].lat, z[j].lon);
				// console.log(zlat + " : " + zlon + "--" + z[j].lat + " : " + z[j].lon);
				 if(distance == 0) {
					 y += lonlat.length;
					 var hh = get3857LonLat(z[j].lon, z[j].lat);
					 console.log(hh.lon);
					 
					hotplace = "lon=" + new String(hh.lon) + ",lat=" + new String(hh.lat);	// 뽑음
				}
				
			}	// j
		}
</script>