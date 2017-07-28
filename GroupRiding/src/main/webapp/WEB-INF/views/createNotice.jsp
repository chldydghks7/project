<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<head>
   <title>Pricing | Unify - Responsive Website Template</title>

   <!-- Meta -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta name="description" content="">
   <meta name="author" content="">

   <!-- Favicon -->
   <link rel="shortcut icon" href="./resources/favicon.ico">


   <!-- CSS Global Compulsory -->
   <link rel="stylesheet" href="./resources/assets/plugins/bootstrap/css/bootstrap.min.css">
   <link rel="stylesheet" href="./resources/assets/css/style.css">

   <!-- CSS Header and Footer -->
   <link rel="stylesheet" href="./resources/assets/css/headers/header-default.css">
   <link rel="stylesheet" href="./resources/assets/css/footers/footer-v1.css">

   <!-- CSS Implementing Plugins -->
   <link rel="stylesheet" href="./resources/assets/plugins/animate.css">
   <link rel="stylesheet" href="./resources/assets/plugins/line-icons/line-icons.css">
   <link rel="stylesheet" href="./resources/assets/plugins/font-awesome/css/font-awesome.min.css">
   <link rel="stylesheet" href="./resources/assets/plugins/fancybox/source/jquery.fancybox.css">

   <!-- CSS Theme -->
   <link rel="stylesheet" href="./resources/assets/css/theme-colors/default.css" id="style_color">
   <link rel="stylesheet" href="./resources/assets/css/theme-skins/dark.css">

   <!-- CSS Customization -->
   <link rel="stylesheet" href="./resources/assets/css/custom.css">
   
   
   <style>
      #like {
         margin-right: 20px;
         width: 30px;
      }
      #s-img {
      	 width: 550px;
         height: 300px;
      }
      #s-reply {
         width: 450px;
         margin-left: 0;
         margin-right: 20px;
      }
      .modal-body {
         height: 780px;
      }
      .s-content {
      	height: 400px;
      }
      
      .likeCnt {
      	width: 20px;
      	height: 20px;
      	cursor: pointer;
      }
      
      .logo, .footer-logo {
			width: 200px;
			heigth: 100px;
		}
      
    /* #replyContainer {
		position: relative;
	} */

	.reply {
		display: inline-block;
		float: left;
	}
	
	.replyNum {
		width: 3em;
	}
	
	.replyWriter {
		width: 10em;
	}
	
	.date {
		widows: 10em;
	}
	
	.replyText {
		width: 30em;
		height: 3em;
		overflow: auto;
		margin-right: 10px;
	}
	
	.replyLI {
		margin-bottom: 2em;
		list-style-type: none;
		clear: both;
	}
	.rList {
		list-style-type: none;
	}
	
   </style>
</head>

<body>
   <div class="wrapper">
      <!--=== Header ===-->
      <div class="header">
         <div class="container">
            <!-- Logo -->
            <a class="logo" href="mainlogin">
               <img src="./resources/img/logo(b).png" alt="Logo">
            </a>
            <!-- End Logo -->

            <!-- Topbar -->
            <div class="topbar">
               <ul class="loginbar pull-right">
                  <li class="topbar-devider"></li>
                 <li><a href="logout">Logout</a></li>
               </ul>
            </div>
            <!-- End Topbar -->

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
               <span class="sr-only">Toggle navigation</span>
               <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
         </div><!--/end container-->

         <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
               <ul class="nav navbar-nav">
                  <!-- Home -->
                  <li class="dropdown active">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Home
                     </a>
                  <!-- End Home -->

                  <!-- Pages -->
                  <li class="dropdown">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Group
                     </a>
                     <ul class="dropdown-menu">
                        <!-- About Pages -->
                        <li class="dropdown-submenu">
                           <a href="groupList">GroupList</a>
                        </li>
                        <!-- End About Pages -->

                        <!-- Service Pages -->
                        <li class="dropdown-submenu">
                           <a href="groupRank">Ranking</a>
                        </li>
                        
                        <li class="dropdown-submenu">
                          	<a href="racePoint">RacePoint</a>
                       	</li>
                        <!-- End Service Pages -->
                     </ul>
                  </li>
                  <!-- End Pages -->

                  <!-- Blog -->
                  <li class="dropdown">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Info
                     </a>
                     <ul class="dropdown-menu">
                        <li class="dropdown-submenu">
                           <a href="calendar">Calendar</a>
                        </li>
                       
                     </ul>
                  </li>
                  <!-- End Blog -->

                  <!-- Portfolio -->
                  <li class="dropdown">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Sharing
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="sharing">Sharing</a></li>
                     </ul>
                  </li>
                  <!-- End Portfolio -->

                  <!-- Features -->
                  <li class="dropdown">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Hot Place
                     </a>
                     <ul class="dropdown-menu">
                        <li class="dropdown-submenu">
                           <a href="hotPlaceMap">Hot Place</a>
                        </li>
                        <!-- <li class="dropdown-submenu">
                           <a href="restaurantList">Restaurant</a>
                        </li>
                        <li><a href="hotelList">Hotel</a></li> -->
                     </ul>
                  </li>
                  <!-- End Features -->

                  <!-- Search Block -->
                  <li>
                     <i class="search fa fa-search search-btn"></i>
                     <div class="search-open">
                        <div class="input-group animated fadeInDown">
                           <input type="text" class="form-control" placeholder="Search">
                           <span class="input-group-btn">
                              <button class="btn-u" type="button">Go</button>
                           </span>
                        </div>
                     </div>
                  </li>
                  <!-- End Search Block -->
               </ul>
            </div><!--/end container-->
         </div><!--/navbar-collapse-->
      </div>
      <!--=== End Header ===-->

      <!--=== Breadcrumbs ===-->
      <div class="breadcrumbs">
         <div class="container">
            <h1 class="pull-left">My calendar</h1>
            <ul class="pull-right breadcrumb">
               <li><a href="/">Home</a></li>
               <li class="active">My calendar</li>
            </ul>
         </div>
      </div><!--/breadcrumbs-->
      <!--=== End Breadcrumbs ===-->

      <!--=== Content Part ===-->
      <div class="container content">
         <div class="row">
	<!-- 공지생성 -->
           			<div id="map_div"></div>	<!-- 지도 -->

				<form action="createNotice" method="post">
					<input type="hidden" name="gr_id" value="${gr_id}"/>
					<input type="hidden" name="uid" value="${uid}"/>
					<input type="hidden" name="gr_name" value="${gr_name1}"><br>
					
					<input type="hidden" name="start_point" id="startPoint" value=""> <br>
					<input type="hidden" name="end_point" id="endPoint" value="">	<br>
					
					공지제목 : <input type="text" name="notice_title"> <br>
					라이딩 날짜 : <input type="date" name="ridingDate" id="ridingDate">	<br>
					라이딩 시간 : <input type="time" name="ridingTime">	<br>
					준비물 : <input type="text" name="material">	<br>
					
					<!-- POI -->
					출발지 : <input type="text" id="starting">
					<input type="button" id="startSerch" value="검색"> <br>
					도착지 : <input type="text" id="ending">
					<input type="button" id="stopSerch" value="검색"> <br>
				
				
					<input type="button" id="gogo" value="경로 탐색">
					<input type="button" onClick="window.location.reload()" value="취소" />
				
					
				
					<input type="hidden" id="startCoordX" /> 
					<input type="hidden" id="startCoordY" />
					<input type="hidden" id="endCoordX" />
					<input type="hidden" id="endCoordY" />
					
					<button type="submit">등록</button>
					
					<div class="">
						<ul id="ul">
							
						</ul>
					</div>
				
					<div class="">
						<ul id="ul1">
							
						</ul>
					</div>
				</form>
            
         </div><!-- End Content -->
      </div><!--/container-->
      <!--=== End Content Part ===-->

      <!--=== Footer Version 1 ===-->
      <div class="footer-v1">
         <div class="footer">
            <div class="container">
               <div class="row">
                  <!-- About -->
                  <div class="col-md-3 md-margin-bottom-40">
                     <a href="/"><img id="logo-footer" class="footer-logo" src="./resources/img/logo(w).png" alt=""></a>
                     <p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
                     <p>Duis eleifend fermentum ante ut aliquam. Cras mi risus, dignissim sed adipiscing ut, placerat non arcu.</p>
                  </div><!--/col-md-3-->
                  <!-- End About -->

                  <!-- Latest -->
                  <div class="col-md-3 md-margin-bottom-40">
                     <div class="posts">
                        <div class="headline"><h2>Latest Posts</h2></div>
                        <ul class="list-unstyled latest-list">
                           <li>
                              <a href="#">Incredible content</a>
                              <small>May 8, 2014</small>
                           </li>
                           <li>
                              <a href="#">Best shoots</a>
                              <small>June 23, 2014</small>
                           </li>
                           <li>
                              <a href="#">New Terms and Conditions</a>
                              <small>September 15, 2014</small>
                           </li>
                        </ul>
                     </div>
                  </div><!--/col-md-3-->
                  <!-- End Latest -->

                  <!-- Link List -->
                  <div class="col-md-3 md-margin-bottom-40">
                     <div class="headline"><h2>Useful Links</h2></div>
                     <ul class="list-unstyled link-list">
                        <li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
                     </ul>
                  </div><!--/col-md-3-->
                  <!-- End Link List -->

                  <!-- Address -->
                  <div class="col-md-3 map-img md-margin-bottom-40">
                     <div class="headline"><h2>Contact Us</h2></div>
                     <address class="md-margin-bottom-40">
                        25, Lorem Lis Street, Orange <br />
                        California, US <br />
                        Phone: 800 123 3456 <br />
                        Fax: 800 123 3456 <br />
                        Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
                     </address>
                  </div><!--/col-md-3-->
                  <!-- End Address -->
               </div>
            </div>
         </div><!--/footer-->

         <div class="copyright">
            <div class="container">
               <div class="row">
                  <div class="col-md-6">
                     <p>
                        2015 &copy; All Rights Reserved.
                        <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                     </p>
                  </div>

                  <!-- Social Links -->
                  <div class="col-md-6">
                     <ul class="footer-socials list-inline">
                        <li>
                           <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
                              <i class="fa fa-facebook"></i>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
                              <i class="fa fa-skype"></i>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
                              <i class="fa fa-google-plus"></i>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
                              <i class="fa fa-linkedin"></i>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
                              <i class="fa fa-pinterest"></i>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
                              <i class="fa fa-twitter"></i>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
                              <i class="fa fa-dribbble"></i>
                           </a>
                        </li>
                     </ul>
                  </div>
                  <!-- End Social Links -->
               </div>
            </div>
         </div><!--/copyright-->
      </div>
      <!--=== End Footer Version 1 ===-->
   </div><!--/wrapper-->
   
    <!-- Modal -->
    <div id = "myModal" class = "modal fade" role = "dialog">
      <div class = "modal-dialog">
         <div class = "modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <p style="float: left">제목: ${read.writing_title}</p>
               <br>
               <hr>
               <div>
                  <img src="./displayFile?fileName=${read.bbs_FilePath}" id="s-img">
               </div>
               <hr>
               <div id="s-content">
                  <p>내용 : ${read.writing_content}</p>
                  <p>글번호 : ${read.writing_Id}</p>
               </div> 
            </div>
            <div class="modal-footer">
               <!-- <img src="./resources/img/hearts.png" id="like"> -->
               <input type="text" id="s-reply" />
               <button id="addReply" class="btn btn-default">댓글등록</button>
            </div>
         </div>
      </div>
   </div>

   <!-- JS Global Compulsory -->
   <script type="text/javascript" src="./resources/assets/plugins/jquery/jquery.min.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- JS Implementing Plugins -->
   <script type="text/javascript" src="./resources/assets/plugins/back-to-top.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/smoothScroll.js"></script>
      <script type="text/javascript" src="./resources/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
   <!-- JS Customization -->
   <script type="text/javascript" src="./resources/assets/js/custom.js"></script>
   <!-- JS Page Level -->
   <script type="text/javascript" src="./resources/assets/js/app.js"></script>
   <script type="text/javascript" src="./resources/assets/js/plugins/style-switcher.js"></script>
   <script type="text/javascript" src="./resources/assets/js/plugins/fancy-box.js"></script>
   <script type="text/javascript" src="./resources/js/upload.js"></script>
   
<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>

<script>

			var map

			map = new Tmap.Map({div:'map_div',
		        width:'50%', 
		        height:'400px',
		        transitionEffect:"resize",
		        animation:true
		    }); 
				map.setCenter(new Tmap.LonLat(14315520.90430,4283115.74626), 11);
				// map.addControl(new Tmap.Control.KeyboardDefaults());
				map.addControl(new Tmap.Control.MousePosition());
				// searchRoute();
				
				 
				var lonlatcount=0;
				var startlonlat;
				var stoplonlat;
				
				function getlonlat(evt){
					lonlatcount+=1;
					if(lonlatcount==1) {
						startlonlat = map.getLonLatFromViewPortPx(evt); // 클릭지점 경도, 위도 
						// alert("출발지 : " + startlonlat);    
						
						markerLayer = new Tmap.Layer.Markers("marker");
						map.addLayer(markerLayer);

						var size = new Tmap.Size(12,19);	
						var offset = new Tmap.Pixel(-(size.w/2), -size.h);
						var icon = new Tmap.Icon("https://developers.skplanetx.com/upload/tmap/marker/pin_b_s_simple.png",size,offset);
						var marker = new Tmap.Markers(startlonlat, icon);
						markerLayer.addMarker(marker);

						$("#startPoint").val(startlonlat);
						
						return;
					
					} else if(lonlatcount==2){
						stoplonlat = map.getLonLatFromViewPortPx(evt); // 클릭지점 경도, 위도 
						// alert("도착지 : " + stoplonlat);    
						
						markerLayer = new Tmap.Layer.Markers("marker");
						map.addLayer(markerLayer);

						var size = new Tmap.Size(12,19);
						var offset = new Tmap.Pixel(-(size.w/2), -size.h);
						var icon = new Tmap.Icon("https://developers.skplanetx.com/upload/tmap/marker/pin_b_s_simple.png",size,offset);
						var marker = new Tmap.Markers(stoplonlat, icon);
						markerLayer.addMarker(marker);

						$("#endPoint").val(stoplonlat);
						
						searchRoute(startlonlat, stoplonlat);
					}
					
				}	// function getlonlat(evt){
				
				
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
					}	// function searchRoute(start, stop){

////////////////
///// POI //////
////////////////				                 
				var markerLayer;
				var tdata;
				var name = '';
	    		
				addMarkerLayer();

				var clcl;	// 출발지 or 도착지
	    		$("#startSerch").on("click", function(){
	    			clcl = true;

	    			$("#ul").empty();	// 태그제거
	    			$("#ul1").empty();	// 태그제거
	    			var starting = $("#starting").val();

	    			searchPOI(starting);	// 검색
	    			
	    			markerLayer.clearMarkers();	// 마커 초기화

	    			getDataFromLonLat(this.lonlat);	// 주소

	    		});

	    		$("#stopSerch").on("click", function(){
					clcl = false;

	    			$("#ul").empty();	// 태그제거
	    			$("#ul1").empty();	// 태그제거
	    			var ending = $("#ending").val();

	    			searchPOI(ending);	// 검색
	    			
	    			markerLayer.clearMarkers();	// 마커 초기화

	    			getDataFromLonLat(this.lonlat);	// 주소

	    		});

	    		
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
				    marker.events.register("click", marker, onClickMouse);
				}
				function onOverMouse(e){
				    this.popup.show();
				}
				function onOutMouse(e){
				    this.popup.hide();
				}
				function onClickMouse(e){
				    console.log(this.lonlat);
				    getDataFromLonLat(this.lonlat);
				}
				function searchPOI(starting){
				    tdata = new Tmap.TData();
				    tdata.events.register("onComplete", tdata, onCompleteTData);
				    var center = map.getCenter();
				    tdata.getPOIDataFromSearch(encodeURIComponent(starting), {centerLon:center.lon, centerLat:center.lat});
				}
				function onCompleteTData(e){
				    if(jQuery(this.responseXML).find("searchPoiInfo pois poi").text() != ''){
				        jQuery(this.responseXML).find("searchPoiInfo pois poi").each(function(){
				            var name = jQuery(this).find("name").text();
				            var id = jQuery(this).find("id").text();
				            var lon = jQuery(this).find("frontLon").text();
				            var lat = jQuery(this).find("frontLat").text();
				            var options = {
				                label:new Tmap.Label(name),
				                lonlat:new Tmap.LonLat(lon, lat)
				            };
				            addMarker(options);
				        });
				    }else {
				        alert('검색결과가 없습니다.');
				    }
				    map.zoomToExtent(markerLayer.getDataExtent());
				    tdata.events.unregister("onComplete", tdata, onCompleteTData);
				}
				function getDataFromLonLat(lonlat){
				    tdata = new Tmap.TData();
				    tdata.events.register("onComplete", tdata, onCompleteTDataLonLat);
				    tdata.getPOIDataFromLonLat(lonlat, encodeURIComponent("편의점"), {bizAppId:"701a4eaf1326", radius:1});
				}
				function onCompleteTDataLonLat(e){
				    if(jQuery(this.responseXML).find("searchPoiInfo pois poi").text() != ''){
				        jQuery(this.responseXML).find("searchPoiInfo pois poi").each(function(){
				            var name = jQuery(this).find("name").text();
				            var lon = jQuery(this).find("frontLon").text();
				            var lat = jQuery(this).find("frontLat").text();
				            var options = {
				                label:new Tmap.Label(name),
				                lonlat:new Tmap.LonLat(lon, lat)
				            };
				            console.log(name, lon, lat);
 							
 							if(clcl == true) {
					            $("#ul").append("<li>" + name + "</li>" 
					            				+ "<input type='hidden' value='" + lon + "'>"
					            				+ "<input type='hidden' value='" + lat + "'>");
 							} else if (clcl == false) {
 								$("#ul1").append("<li>" + name + "</li>" 
					            				+ "<input type='hidden' value='" + lon + "'>"
					            				+ "<input type='hidden' value='" + lat + "'>");
 							}

				            addMarker(options); // all 마커
				        });
				    }else {
				        alert('검색결과가 없습니다.');
				    }
				    map.zoomToExtent(markerLayer.getDataExtent());
				    tdata.events.unregister("onComplete", tdata, onCompleteTDataLonLat);
				}


				$("#ul").on("click", "li", function() {

					alert($(this).next().val() + ", " +  $(this).next().next().val());

					$("#startCoordX").val($(this).next().val());
					$("#startCoordY").val($(this).next().next().val());
					
					$("#startPoint").val("lon=" + $(this).next().val() + ",lat=" +  $(this).next().next().val());

				});

				$("#ul1").on("click", "li", function() {

					alert($(this).next().val() + ", " +  $(this).next().next().val());

					$("#endCoordX").val($(this).next().val());
					$("#endCoordY").val($(this).next().next().val());
					
					
					$("#endPoint").val("lon=" + $(this).next().val() + ",lat=" +  $(this).next().next().val());
						
				});


			    $("#gogo").on("click", function(){
						poiRoute();
			    });

				//경로 정보 로드
				function poiRoute(){

					var startx = $("#startCoordX").val();  
					var starty = $("#startCoordY").val();   
					
					var stopx = $("#endCoordX").val();   
					var stopy = $("#endCoordY").val();   
					
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



	</script>

<!--[if lt IE 9]>
   <script src="assets/plugins/respond.js"></script>
   <script src="assets/plugins/html5shiv.js"></script>
   <script src="assets/plugins/placeholder-IE-fixes.js"></script>
   <![endif]-->

</body>
</html>