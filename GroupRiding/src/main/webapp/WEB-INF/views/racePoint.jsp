<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
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
   
   <link rel='stylesheet' type='text/css' href='./resources/calendar/fullcalendar.css' />

   
   <style>
         .logo, .footer-logo {
         width: 200px;
         heigth: 100px;
      }
   
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
   
   #calendar {
      width: 900px;
      margin: 0 auto;
      }
      
    #replies{
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
                           <a href="calendar?uid=${uid}">Calendar</a>
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
   <!-- 레이스 -->
                    <div id="map_div" style="position: absolute;"></div>
               
               <div style="position: absolute; left: 800px;">	
						<table style="border: 1px solid #444444; width:200px;">
							<thead>
								<tr style="border: 1px solid #444444; text-align: center;">
									<td style="border: 1px solid #444444;">순위</td>
									<td style="border: 1px solid #444444;">기록(초)</td>
									<td style="border: 1px solid #444444;">그룹명 </td>
								</tr>
							</thead>
							
							<c:forEach items="${race_record}" var="race" varStatus="s">
								<tbody>
									<tr style="border: 1px solid #444444; text-align: center;">
										<td style="border: 1px solid #444444;">${s.count}</td>
									    <td style="border: 1px solid #444444;">${race.racepoint_time}</td>
									    <td style="border: 1px solid #444444;">${race.gr_name}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
				</div>
               
               <div id="board" style="position: relative; top:400px;">
                  	제목    :    <label id="ra_title"></label>   <br>
                  	내용   :    <label id="ra_content"></label>   <br>
                <!--   ra_viewcnt      :    <label id="ra_viewcnt" style="display:none;"></label>   <br> -->
                  
                  <br><br>
                  
                     <ul id="replies" style="overflow:scroll; background-color: white; width:500px; height:500px; position: relative;"></ul>
                  
                  <div style="position: relative; top:10px;">
                     <h4 id="re">댓글 등록</h4>
                     <input type="text" name="ra_reply_comment" id="ra_reply_comment" />
                     <input type="hidden" name="uid" id="uid" value="${uid}" />
                     <input type="hidden" name="racepoint_id" id="racepoint_id" value="${point.racepoint_id}" />
                     <button id="raceReply">등록</button>
                  </div>
               </div>
            	
            
         </div><!-- End Content -->
      </div><!--/container-->
      <!--=== End Content Part ===-->

      
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
               var racepoint = [[${point.start_location}], [${point.stop_location}]];   // 1

                var markerLayer = new Tmap.Layer.Markers("MarkerLayer");
               map.addLayer(markerLayer);

               for(var i=0; i<racepoint.length; i++) {
                  var location = get3857LonLat(racepoint[i][0],racepoint[i][1]);
                  var size = new Tmap.Size(24,38);
                  var offset = new Tmap.Pixel(-(size.w/2), -(size.h/2));
                  var icon = new Tmap.Icon('./resources/racepoint.png', size, offset);
                  
                  var marker = new Tmap.Markers(location, icon);
                  markerLayer.addMarker(marker);

                  marker.events.register("click", marker, onMaker);   // 마커 클릭
                 }      
      
         function onMaker(evt) {
             $.ajax({
               url:"pointInfo",
               type:"get",
               data: {
                  racepoint_id: ${point.racepoint_id}
               },
               dataType:"json",
               success:function(data) {
                     var point = data.pointInfo;
                     $("#ra_title").text(point.ra_title);
                      $("#ra_content").text(point.ra_content); 
                   /*   $("#ra_viewcnt").text(point.ra_viewcnt); */
                     $("#board").show();
                     getAllList();
               }
            });
         }   // function onMaker(evt) {
   
   
   <!-- 댓글 -->
   
      $("#raceReply").on("click", function(){      // 댓글 등록 버튼
         
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
      
      function getAllList() {      // 댓글 리스트
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
         });   // $.getJSON("raceReply/re_list/${point.racepoint_id}", function(data){
         
      }   // function getAllList() {    댓글리스트
         
      $("#replies").on("click", "#replyDel",function(){   // 댓글 삭제 버튼
            
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
               
            }   //   success: function(result) {
            
         
         });   // ajax
         
      
      }); // $("#replyDel").on("click", function(){
      
         
         
   });   /// $(document).ready(function() {
   </script>
   

<!--[if lt IE 9]>
   <script src="assets/plugins/respond.js"></script>
   <script src="assets/plugins/html5shiv.js"></script>
   <script src="assets/plugins/placeholder-IE-fixes.js"></script>
   <![endif]-->

</body>
</html>