<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html > <!--<![endif]-->
<head>
   <title>Group Riding</title>

   <!-- Meta -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta name="description" content="">
   <meta name="author" content="">

    <!-- Bootstrap Core CSS -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="./resources/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="./resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   
   <style>
         .logo, .footer-logo {
         width: 200px;
         heigth: 100px;
      }
   
      #map {
          width: 1180px;
         height: 500px;
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
      }
      
      .text-vertical-center {

    background-color: rgba( 0, 0, 0, 0.7 );
     width: 100%; height:100%; 
}
@font-face {
   font-family: 'sung';
   src: url('./resources/fonts/sung.ttf'); 
   }
   .navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:focus,
   .navbar-inverse .navbar-nav>.open>a:hover {
   color: #fff;
   background-color: #929292
}
   </style>
</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color: white;">
      <div class="container">
         <!-- Brand and toggle get grouped for better mobile display -->
         <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
               data-target="#bs-example-navbar-collapse-1">
               <span class="sr-only">Toggle navigation</span> <span
                  class="icon-bar"></span> <span class="icon-bar"></span> <span
                  class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="mainlogin" style="color: red; font-family: sung; font-size: 30px;">GROUP RIDING</a>
         </div>
         <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="collapse navbar-collapse"
            id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
               <li><a href="mainlogin"  style="color:black; font-family: sung;">Home</a></li>
               <li class="dropdown"><a href="MyInfo?uid=${uid}"  style="color:black; font-family: sung;">My Page</a></li>
               <li class="dropdown"><a href="#" class="dropdown-toggle"
                  data-toggle="dropdown"  style="color:black; font-family: sung;">Group <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="groupList"  style="color:black; font-family: sung;">Group List</a></li>
                     <li><a href="racePoint"  style="color:black; font-family: sung;">Race Point</a></li>
                  </ul></li>
               <li><a href="groupRank"  style="color:black; font-family: sung;">Rank</a></li>
               <li><a href="sharing"  style="color:black; font-family: sung;">Sharing</a></li>
               <li><a href="hotPlaceMap"  style="color:black; font-family: sung;">Hot Place</a></li>
               
               <div style="float: right; width: 180px;">
                  <li id="profile" style="float: left; margin-top: 6px;"></li>
                  <li class="dropdown"><a class="dropdown-toggle"
                     data-toggle="dropdown"
                     style="font-size: 25px; color: black; float: left; margin-top: 8px; margin-left: 2px;font-family: sung;">${uid}</a>

                     <ul class="dropdown-menu">
                        <li><a id="logout">LogOut</a></li>

                     </ul></li>

               </div>
            </ul>
         </div>
         <!-- /.navbar-collapse -->
      </div>
      <!-- /.container -->
   </nav>
     <header id="myCarousel" class="carousel slide" style="height: 30%;width:100%;background: url('./resources/img/youface.jpg') no-repeat center center scroll;">

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="carousel-caption" style="bottom:60px;">
                    <h1 style="font-size: 40px;">HOT PLACE</h1></br>
                </div>
            </div>
        </div>
    </header>

      <!--=== Content Part ===-->
      <div class="container">
         <div class="row">

            <!-- Begin Content -->
          
               <!-- Basic Map -->
               <div class="headline"><h3>Basic Map</h3></div>
               <div id="map" class="map margin-bottom-50" ></div>
               <!-- End Basic Map -->
                </div>
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
           
            <!-- End Content -->
         
         
          
          <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p style="font-family: sung;">Copyright &copy; Your Website 2017</p>
                </div>
            </div>
        </footer>
         
      </div><!--/container-->
      <!--=== End Content Part ===-->
   
   
    <!-- jQuery -->
    <script src="./resources/js2/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="./resources/js2/bootstrap.min.js"></script>
      
   
     <!-- 구글맵 -->
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAN--zcfp4teCptRjts9sB0EDpa98Kyiu0&callback=initMap" async defer></script>
   <script type="text/javascript">
   $(document).ready(
         function() {
            var uid = "${uid}";
            $.getJSON("getAttach/" + uid, function(list) {

               var img = $("<img/>").attr('src',
                     "/displayFile?fileName=" + list[0]);
               img.css("width", "35px");
               img.css("height", "35px");

               $("#profile").prepend(img);

               var logoutform = $("form[data-role='out']");

               $("#logout").click(function() {

                  logoutform.submit();
               });

            });
   
   
   
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
                            + "<br><hr><div>장소 : " + data.place_name + "</div><hr>"
                            + "<div><ul class = 'timeline'></ul></div>";
                            
                            $(".modal-body").append(html);
                           
                            
                            getAllReplies();
                            
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
                                   });
                            }
                            
                            $("#like").on("click", function() {
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
   
   
         });
   </script>
<!--[if lt IE 9]>
   <script src="assets/plugins/respond.js"></script>
   <script src="assets/plugins/html5shiv.js"></script>
   <script src="assets/plugins/placeholder-IE-fixes.js"></script>
   <![endif]-->

</body>
</html>
   