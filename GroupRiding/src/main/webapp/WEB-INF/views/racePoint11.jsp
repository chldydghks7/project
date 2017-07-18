<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript" src="./resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

	<div id="map_div"></div>
	
	<div id="board">
		ra_title 	: 	<label id="ra_title"></label>	<br>
		ra_content	: 	<label id="ra_content"></label>	<br>
		ra_viewcnt		: 	<label id="ra_viewcnt"></label>	<br>
		
		<br><br>
		
			<ul id="replies" style="overflow:scroll; background-color: green; width:500px; height:500px; position: absolute;"></ul>
		
		<div style="position: relative; top:550px;">
			<h4 id="re">댓글 등록</h4>
			<input type="text" name="ra_reply_comment" id="ra_reply_comment" />
			<input type="hidden" name="uid" id="uid" value="${uid}" />
			<input type="hidden" name="racepoint_id" id="racepoint_id" value="${point.racepoint_id}" />
			<button id="raceReply">등록</button>
		</div>
	</div>
	
	<script>
	$(document).ready(function() {
			$("#board").hide();

			var pr_3857 = new Tmap.Projection("EPSG:3857");//tmap 좌표체계
			var pr_4326 = new Tmap.Projection("EPSG:4326");//geolocation 좌표체계

			function get3857LonLat(coordX, coordY) {
		    		return new Tmap.LonLat(coordX, coordY).transform(pr_4326, pr_3857);
				}
			
					map = new Tmap.Map({div:'map_div',
					                        width:'50%', 
					                        height:'400px',
					                        transitionEffect:"resize",
					                        animation:true
					                    }); 
				    map.setCenter(new Tmap.LonLat(14318157.74742,4286326.31519), 17);
				    map.addControl(new Tmap.Control.KeyboardDefaults());
			        map.addControl(new Tmap.Control.MousePosition());
					 

					// 마커 생성
					var racepoint = [[${point.start_location}], [${point.stop_location}]];	// 1

				    var markerLayer = new Tmap.Layer.Markers("MarkerLayer");
					map.addLayer(markerLayer);

					for(var i=0; i<racepoint.length; i++) {
						var location = get3857LonLat(racepoint[i][0],racepoint[i][1]);
						var size = new Tmap.Size(24,38);
						var offset = new Tmap.Pixel(-(size.w/2), -(size.h/2));
						var icon = new Tmap.Icon('./resources/racepoint.png', size, offset);
						
						var marker = new Tmap.Markers(location, icon);
						markerLayer.addMarker(marker);

						marker.events.register("click", marker, onMaker);	// 마커 클릭
				     }      
		
			function onMaker(evt) {
				 $.ajax({
					url:"pointInfo",
					type:"post",
					data: {
						racepoint_id: ${point.racepoint_id}
					},
					dataType:"json",
					success:function(data) {
							var point = data.pointInfo;
							$("#ra_title").text(point.ra_title);
							$("#ra_content").text(point.ra_content);
							$("#ra_viewcnt").text(point.ra_viewcnt);
							$("#board").show();
							getAllList();
					}
				});
			}	// function onMaker(evt) {
	
	
	<!-- 댓글 -->
	
		$("#raceReply").on("click", function(){		// 댓글 등록 버튼
			
			var uid = $("#uid").val();
			var racepoint_id = $("#racepoint_id").val();
			var ra_reply_comment = $("#ra_reply_comment").val();
			
			$.ajax({
				type:"post",
				url:"raceReply",
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : "text",
				data : JSON.stringify({
					uid : uid,
					racepoint_id : racepoint_id,
					ra_reply_comment : ra_reply_comment
				}),
				success : function(result) {
					if(result == "SUCCESS") {
						getAllList();
					}
				}
			});
			
		});
		
		function getAllList() {		// 댓글 리스트
			$.getJSON("raceReply/re_list/${point.racepoint_id}", function(data){	
				var str = "";
			
				$(data).each(function(){
					
					if("${uid}" == this.uid) {
						str += "<img src='/displayFile?fileName=" + this.fullName + "' style='width:50px; height:50px; position: relative;'/>"
							+ "<li class='rep' style='position: relative; left:70px; top:-50px; font-weight: bold; color:blue;'>" + this.uid + "님</li>"
							+ "<li class='rep' style='position: relative; left:70px; top:-50px;'>" + this.ra_reply_comment +"<button id='replyDel'>x</button>"
							+ "<input id='re_id' type='hidden' value='" + this.ra_reply_id + "' />"
							+ "</li>"
							
					} else {
						str += "<img src='/displayFile?fileName=" + this.fullName + "' style='width:50px; height:50px; position: relative;'/>"
						+ "<li class='rep' style='position: relative; left:70px; top:-50px; font-weight: bold; color:blue;'>" + this.uid + "님</li>"
						+ "<li class='rep' style='position: relative; left:70px; top:-50px;'>" + this.ra_reply_comment +"</li>"
					}

				});
				$("#replies").html(str);
			});	// $.getJSON("raceReply/re_list/${point.racepoint_id}", function(data){
			
		}	// function getAllList() {	 댓글리스트
			
		$("#replies").on("click", "#replyDel",function(){	// 댓글 삭제 버튼				
			var ra_reply_id = $(this).next().val();
			
			$.ajax({
				type:"delete",
				url:"raceReply/" + ra_reply_id,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "DELETE"
				},
				dataType: "text",
				success: function(result) {
					if(result == "SUCCESS") {
						getAllList();
					}
					
				}	//	success: function(result) {
				
			
			});	// ajax
			
		
		}); // $("#replyDel").on("click", function(){
		
			
			
	});	/// $(document).ready(function() {
	</script>
	

