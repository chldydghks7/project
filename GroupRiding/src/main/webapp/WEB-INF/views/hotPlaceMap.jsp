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

   <!-- CSS Page Style -->
   <link rel="stylesheet" href="./resources/assets/css/pages/page_pricing.css">

   <!-- CSS Theme -->
   <link rel="stylesheet" href="./resources/assets/css/theme-colors/default.css" id="style_color">
   <link rel="stylesheet" href="./resources/assets/css/theme-skins/dark.css">

   <!-- CSS Customization -->
   <link rel="stylesheet" href="./resources/assets/css/custom.css">
   
   <style>
         .logo, .footer-logo {
         width: 200px;
         heigth: 100px;
      }
   
      #map {
          width: 1180px;
         height: 700px;
         position: absolute;
      }

      /* #myModal {
       display: none;
       position:absolute;     
      } */
      
      #like {
         margin-right: 20px;
         width: 30px;
      }
      #s-img {
          width: 550px;
         height: 300px;
      }
      #s-reply {
         width: 400px;
         margin-right: 20px;
      }
      
      .modal-dialog {
         display: none;
      }
      .modal-body {
         height: 600px;
      }
      
      .s-content {
         height: 400px;
      }
      
      .reply {

      display: inline-block;
      float: left;
   }
   
   .replyImg {
      width: 20px;
      height: 20px;
      margin-right: 5px;
   }
   
   .replyNum {
      width: 3em;
   }
   
   .replyWriter {
      width: 10em;
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
   
   #like {
         cursor: pointer;

		display: inline-block;
		float: left;
	}
	
	.replyImg {
		width: 20px;
		height: 20px;
		margin-right: 5px;
	}
	
	.replyNum {
		width: 3em;
	}
	
	.replyWriter {
		width: 10em;
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
	
	#like {
      	cursor: pointer;

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
                        <li class="dropdown-submenu">
                           <a href="Ridingdata">Riding Data</a>
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
                        <li class="dropdown-submenu">
                           <a href="sharing">Sharing</a>
                        </li>
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
            <h1 class="pull-left">HOT PLACE</h1>
            <ul class="pull-right breadcrumb">
               <li><a href="main">Home</a></li>
               <li class="active">Hot Place</li>
            </ul>
         </div>
      </div><!--/breadcrumbs-->
      <!--=== End Breadcrumbs ===-->

      <!--=== Content Part ===-->
      <div class="container content">
         <div class="row">

            <!-- Begin Content -->
            <div>
               <!-- Basic Map -->
               <div class="headline"><h3>Basic Map</h3></div>
               <div id="map" class="map margin-bottom-50"></div>
               <!-- End Basic Map -->
               
               <!-- Modal -->
      <div class = "modal-dialog">
         <div class = "modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
               <%-- <p style="float: left">제목: ${read.writing_title}</p>
               <br>
               <hr>
               <div>
                  <img src="./displayFile?fileName=${read.bbs_FilePath}" id="s-img">
               </div>
               <hr>
               <div id="s-content">
                  <p>내용 : ${read.writing_content}</p>
                  <p>글번호 : ${read.writing_Id}</p>
               </div> --%>
            </div>
            <div class="modal-footer">
               <img src="./resources/img/hearts.png" id="like">
               <input type = "text" id = "uid" style = "display: none;" value = "${uid}"/>
               <input type="text" id="s-reply" />
               <button id="addReply" class="btn btn-default">댓글등록</button>
            </div>
         </div>
      </div>
            </div>
            <!-- End Content -->
         </div>
      </div><!--/container-->
      <!--=== End Content Part ===-->

      <!--=== Footer Version 1 ===-->
      <div class="footer-v1" style = "margin-top: 750px;">
         <div class="footer">
            <div class="container">
               <div class="row">
                  <!-- About -->
                  <div class="col-md-3 md-margin-bottom-40">
                     <a href="main"><img id="logo-footer" class="footer-logo" src="./resources/img/logo(w).png" alt=""></a>
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
   </div><!--/End Wrapepr-->
   
   <!-- JS Global Compulsory -->
   <script type="text/javascript" src="./resources/assets/plugins/jquery/jquery.min.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- JS Implementing Plugins -->
   <script type="text/javascript" src="./resources/assets/plugins/back-to-top.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/smoothScroll.js"></script>
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAN--zcfp4teCptRjts9sB0EDpa98Kyiu0&callback=initMap" async defer></script>
   <!-- JS Customization -->
   <script type="text/javascript" src="./resources/assets/js/custom.js"></script>
   <!-- JS Page Level -->
   <script type="text/javascript" src="./resources/assets/js/app.js"></script>
   <script type="text/javascript" src="./resources/assets/js/plugins/style-switcher.js"></script>
   <script type="text/javascript">
   
   
   function initMap() {
      var map = new google.maps.Map(document.getElementById('map'), {
         center: {lat: -34.397, lng: 150.644},
         zoom: 18
      });
      var infoWindow = new google.maps.InfoWindow({map: map});
   
        // Try HTML5 geolocation.
        if (navigator.geolocation) {
           navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
                lng: position.coords.longitude
            };
   
         infoWindow.setPosition(pos);
         infoWindow.setContent('내위치');
          map.setCenter(pos);
         }, function() {
               handleLocationError(true, infoWindow, map.getCenter());
            });
      } else {
         // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
 
        $.ajax({
           url: 'ajaxMap',
           type: 'get',
           async: false,
           success: function(data) {
              if(data) {
                
                  console.log(data);
                  
                  var location = [];
                  var makers = [];
                  var label;
                  
                  for(i = 0; ; i++) {
                     location[i] = new google.maps.LatLng(data.map[i].latitude, data.map[i].longitude);
                     
                     if(data.map[i].place_kind = "hotel") {
                           label = "H";
                        }
                        else if(data.map[i].place_kind = "restaurant") {
                           label = "R";
                        }
                        else {
                           label = null;
                        }
                     
                     makers[i] = new google.maps.Marker({
                           position: location[i],
                           title: data.map[i].place_name,
                           label: label
                        });
                     

                        /* alert(makers[i].position);
                        alert(makers[i].title); */
                     
                     makers[i].setMap(map);
                        makerListener(makers[i]);
                  }
              }
           },
           error: function() {
              alert('에러');
           }
        })
        
        function makerListener(makers) {

           google.maps.event.addListener(makers, "click", function() {
            
              $(".modal-dialog").show();
              $(".footer-v1").css("margin-top", 0);
              
              $.ajax({
                 url: 'readMaker',
                 type: 'get',
                 async: false,
                 data: {
                    place_name: makers.title
                 },
                 success: function(data) {
                    if(data) {
                    
                       console.log(data);
                       
                       var html = "";
                       html = "<h2 style = 'float: left;'>종류 : " + data.place_kind + "</h2>"
                       + "<p style = 'float: right;' id = 'cnt'>"+"방문횟수: " + data.visit + "</p><br>"
                       + "<p style = 'display: none;' id = 'hp_id'>" + data.hp_id + "</p>"

                            
                            function getAllReplies() {

                               var id = $("#hp_id").text();
                             
                               
                               $.getJSON("replies/all/" + id, function(data) {
                                     var str = ""; 
                                     console.log(data);
                                     $(data.list).each(function() {
                                       str += "<li data-rno = '" + this.rno + "' class = 'replyLI'>"
                                          + "<img src = '/displayFile?fileName=" + this.fullName + "' class = 'reply replyImg'/>"
                                          + "<span class = 'reply replyNum'>" + this.uid + " : </span>"
                                          + "<span class = 'reply replyText'>" + this.replyText + "</span>";
                                     });
                                     $('.timeline').append(str);

                            	
                            }
                            
                            $("#like").on("click", function(){

                               event.preventDefault();
                               var id = $("#hp_id").text();
                               var cnt = $("#cnt").text();
                               
                               ++cnt;
                               
                            
                               
                               $.ajax({
                                  url: 'likeMap',
                                  type: 'post',
                                  data: {
                                     hp_id: id,
                                     visit: cnt
                                  },
                                  success: function(data) {
                                     if(data) {
                                      
                                      $(".modal-body").html("");
                                      $(".modal-body").append(html);
                                      getAllReplies();
                                     }
                                  },
                                  error: function() {
                                     alert('실패');
                                  }
                               });
                            });
                            
                            $("#addReply").on("click", function() {
                                  var id = $("#hp_id").text();
                                  var replyer = $("#uid").val();
                                  var replyText = $("#s-reply").val();
                                  
                                
                                  
                                  $.ajax({
                                    type: 'post',
                                    url: 'replies',
                                    headers: {
                                       "content-Type" : "application/json",
                                      "X-HTTP-Method-Override" : "POST"
                                    },
                                    dataType: 'text',
                                    data: JSON.stringify({
                                       writing_Id: id,
                                       uid: replyer,
                                       replyText: replyText
                                    }),
                                    success: function(result, status) {
                                       if(result == "SUCCESS") {
                                          $("#s-reply").val("");
                                          $(".timeline").html("");
                                          getAllReplies();
                                       }
                                    }
                                  });
                                });
           
              
           
                            
                            $("#addReply").on("click", function() {
                              	 var id = $("#hp_id").text();
                              	 var replyer = $("#uid").val();
                              	 var replyText = $("#s-reply").val();
                              	 
                              	 alert(id + ", " + replyer + ", " + replyText);
                              	 
                              	 $.ajax({
                              		type: 'post',
                              		url: 'replies',
                              		headers: {
                              			"content-Type" : "application/json",
                          				"X-HTTP-Method-Override" : "POST"
                              		},
                              		dataType: 'text',
                              		data: JSON.stringify({
                              			writing_Id: id,
                              			uid: replyer,
                              			replyText: replyText
                              		}),
                              		success: function(result, status) {
                              			if(result == "SUCCESS") {
                              				$("#s-reply").val("");
                              				$(".timeline").html("");
                              				getAllReplies();
                              			}
                              		}
                              	 });
                                });
        				}
        			},
        			error: function() {
        				alert('에러');
        			}
        		});
        		
        	});

        }
        
   }
   
   $(".close").on("click", function() {
      $(".modal-dialog").hide();
      $(".footer-v1").css("margin-top", 750);
      $(".modal-body").html("");
   });
   
   function handleLocationError(browserHasGeolocation, infoWindow, pos) {
      infoWindow.setPosition(pos);
      infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
   }
   </script>
<!--[if lt IE 9]>
   <script src="assets/plugins/respond.js"></script>
   <script src="assets/plugins/html5shiv.js"></script>
   <script src="assets/plugins/placeholder-IE-fixes.js"></script>
   <![endif]-->

</body>
</html>
   