<%@page import="java.util.List"%>
<%@page import="group.riding.bean.UserBean"%>
<%@page import="group.riding.dao.UserDAO"%>
<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>

<!-- 지도 CSS -->
<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  
   <title>Pricing | Unify - Responsive Website Template</title>

<!-- 지도 자바스크립트 -->
<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 임시 -->




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
</head>
<body>
   <div class="wrapper">
      <!--=== Header ===-->
      <div class="header">
         <div class="container">
            <!-- Logo -->
            <a class="logo" href="mainlogin">
               <img src="./resources/assets/img/logo1-default.png" alt="Logo">
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
                  <li class="dropdown">
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
                        <!-- End Service Pages -->

                        <!-- Contacts -->
                        <li class="dropdown-submenu">
                           <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                              Contact Pages
                           </a>
                        </li>
                        <!-- End Contacts -->
                     </ul>
                  </li>
                  <!-- End Pages -->

                  <!-- Blog -->
                  <li class="dropdown active">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Info
                     </a>
                     <ul class="dropdown-menu">
                        <li class="dropdown-submenu">
                           <a href="javascript:void(0);">Calendar</a>
                        </li>
                        <li class="dropdown-submenu">
                           <a href="javascript:void(0);">Riding Data</a>
                        </li>
                        <li class="dropdown-submenu">
                           <a href="javascript:void(0);">Blog Item Pages</a>
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
                           <a href="javascript:void(0);">Picture</a>
                        </li>
                        <li class="dropdown-submenu">
                           <a href="javascript:void(0);">Route</a>
                        </li>
                        <li class="dropdown-submenu">
                           <a href="javascript:void(0);">Grid Text Boxed</a>
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
                           <a href="hotPlaceMap">Map</a>
                        </li>
                        <li class="dropdown-submenu">
                           <a href="restaurantList">Restaurant</a>
                        </li>
                        <li><a href="hotelList">Hotel</a></li>
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
            <h1 class="pull-left">Default Pricing Tabels</h1>
            <ul class="pull-right breadcrumb">

            </ul>
         </div>
      </div><!--/breadcrumbs-->
      <!--=== End Breadcrumbs ===-->

      <!--=== Content Part ===-->
<div>
   <c:forEach items="${list}" var="group">
      <div class="container content">
         <!-- Pricing -->
         <div>
         
            <div class="row margin-bottom-40">
               <div class="col-md-3 col-sm-6">
                  <div class="pricing hover-effect">
                     <div class="pricing-head">
                        <h3>
                           <!-- <a href="gr_info?gr_name=${group.gr_name}">-->
                           ${group.gr_name}
                        </h3>
                        <h4>
                           <i>그룹인원 : </i>99
                        </h4>
                     </div>
                     <ul class="pricing-content list-unstyled">
                        <li><i>그룹장 : </i> ${group.gr_leader}</li>
                        <li><i>그룹생성일 : </i> ${group.gr_date}</li>
                        <li><i>그룹소개 : </i>${group.gr_content}</li>
                     </ul>
                     
                     <div class='popup back' style="display: none;"></div>
                     <div id="popup_front" class='popup front' style="display: none;">
                        <img id="popup_img">
                     </div>
                     
                     <ul class="uploadedList"></ul>
                     <div class="pricing-footer">
                        <a class="btn-u" href="groupInfo?gr_name=${group.gr_name}">INFO</a>
                     </div>
                  </div>
               </div>
            </div>
            
            <!--/row-->
         </div>
         <!-- End Pricing -->
      </div><!--/container-->
   </c:forEach>
   </div>
      <!--=== End Content Part ===-->
   
<!-- 시작  -->




<center><div id="map" style="width:1000px; height:500px;"></div></center>



<script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 11
            
        });
        var ctaLayer = new google.maps.KmlLayer({
            url: 'http://39.121.239.182:8080/can/resources/HelloKml.kml',
            map: map
          });
        
      }
    </script>
    
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-W2mR3T2SKF_iOcKHK7lGp1Tzo-mnrSg&callback=initMap"
    async defer></script>   
   
<div>
<div id="chart_div0" style="width:670px; float:left; height: 500px;"/> 
</div>
<div>
<div id="chart_div" style="width:670px; float:left; height: 500px;"/>  
</div>

<div id="chart_div2" style="width:800px; position:absolute; left:0px; top:1300px; height: 600px;"/> 





    
<!-- 속도, 고도 -->
<!-- 속도 -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <script type="text/javascript">
   var arrayLength="";
      //차트 및 코어 차트 패키지를 로드함.
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);
   
      function drawVisualization() {         

          
         
         $.ajax({
            url:"Ridingdataget",
            success:function(data){
               var data1;
               console.log(data);
               data1 = new google.visualization.DataTable();
               data1.addColumn('string', '속도 그래프');
               data1.addColumn('number', '속도');
               data1.addRows(data.length);
               var firstnum = 0;
               var lastnum = data.length-1;
               var nanumsu = parseInt((data.length/2)-1);
               console.log(lastnum);
               console.log(nanumsu);
                var firstnumcount=0;
            var nanumsucount=0;
                var lastnumcount=0;
                arrayLength = parseInt((data.length/5)) // 포문의 길이값을 임시로 저장하는 변수
                console.log(arrayLength)
               for(var i = 0; i<data.length;i++) {
                 
                     if(i<=5){
                           data1.setCell(i, 0, (i*10+10)+"초");
                           data1.setCell(i, 1, data[i].speed);
                        }else if(i<=359&i>=5){
                           data1.setCell(i, 0, (parseInt((i*10+10)/60))+"분"+(parseInt((i*10+10)%60))+"초");
                           data1.setCell(i, 1, data[i].speed);  
                        }else if(i>359){
                           data1.setCell(i, 0, (parseInt((i*10+10)/3600))+"시간"+((parseInt((i*10+10)/60))-((parseInt((i*10+10)/3600)*60)))+"분"+(parseInt((i*10+10)%60))+"초");
                           data1.setCell(i, 1, data[i].speed);
                        }
                           

               }
                  
                                  
                    console.log(data1);
               var si = 0, bun = 0, cho = 0;
                    if(data.length*10<=5){
               cho=data.length*10;
                    }else if(data.length*10>=5&data.length*10<=359){
                    bun=(parseInt((data.length*10)/60));
                    cho=(parseInt((data.length*10)%60));
                    }else if(data.length*10>359){
                si=(parseInt((data.length*10)/3600));
                     bun=((parseInt((data.length*10)/60))-((parseInt((data.length*10)/3600)*60)));
                     cho=(parseInt((data.length*10)%60));
                    } 
               
               var options = {    
                     title : '${uid}'+' 님 '+" 속도 그래프 "+" 총 " +si +"시간" + bun + "분" + cho + "초",
                     curveType: 'function',
                     animation: {
                         duration: 1000,
                         easing: 'out',
                         startup: true
                     },
                     vAxis: { 
                        viewWindowMode:'explicit',
                         viewWindow: {
                           max:80,
                           min:0               
                         },
                     },
                     hAxis: {
                        title: '', showTextEvery:(arrayLength-1)
                         
                     },  
                     colors: ['blue', 'red'],
                     legend: { position: 'bottom'},
                     seriesType: 'line',
                     series: {1: {type: 'line'}},
                  };

               var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
               chart.draw(data1, options);
                  
            }
         });
         
         
         
      }
   </script>
   
   <script type="text/javascript">
   //고도
   var arrayLength="";
      //차트 및 코어 차트 패키지를 로드함.
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);
   
      function drawVisualization() {         

          
         
         $.ajax({
            url:"Ridingdataget",
            success:function(data){
               var data1;
               console.log(data);
               data1 = new google.visualization.DataTable();
               data1.addColumn('string', '고도 그래프');
               data1.addColumn('number', '고도');
               data1.addRows(data.length);
               var firstnum = 0;
               var lastnum = data.length-1;
               var nanumsu = parseInt((data.length/2)-1);
               console.log(lastnum);
               console.log(nanumsu);
                var firstnumcount=0;
            var nanumsucount=0;
                var lastnumcount=0;
                arrayLength = parseInt(((data.length)/5)) // 포문의 길이값을 임시로 저장하는 변수
                console.log(arrayLength)
               for(var i = 0; i<data.length;i++) {
                 
                     if(i<=5){
                           data1.setCell(i, 0, (i*10+10)+"초");
                           data1.setCell(i, 1, data[i].altitude);
                        }else if(i<=359&i>=5){
                           data1.setCell(i, 0, (parseInt((i*10+10)/60))+"분"+(parseInt((i*10+10)%60))+"초");
                           data1.setCell(i, 1, data[i].altitude);   
                        }else if(i>359){
                           data1.setCell(i, 0, (parseInt((i*10+10)/3600))+"시간"+((parseInt((i*10+10)/60))-((parseInt((i*10+10)/3600)*60)))+"분"+(parseInt((i*10+10)%60))+"초");
                           data1.setCell(i, 1, data[i].altitude);   
                        }
                           

               }
                 
                  
                                  
                    console.log(data1);
               var si = 0, bun = 0, cho = 0;
                    if(data.length*10<=5){
               cho=data.length*10;
                    }else if(data.length*10>=5&data.length*10<=359){
                    bun=(parseInt((data.length*10)/60));
                    cho=(parseInt((data.length*10)%60));
                    }else if(data.length*10>359){
                si=(parseInt((data.length*10)/3600));
                     bun=((parseInt((data.length*10)/60))-((parseInt((data.length*10)/3600)*60)));
                     cho=(parseInt((data.length*10)%60));
                    } 
               
               var options = {    
                     title : '${uid}'+' 님 '+" 고도 그래프 "+" 총 " +si +"시간" + bun + "분" + cho + "초",
                     curveType: 'function',
                     animation: {
                         duration: 1000,
                         easing: 'out',
                         startup: true
                     },
                     vAxis: {title: '',
                        viewWindowMode:'explicit',
                         viewWindow: {
                           max:400,
                           min:0               
                         },
                     },
                     hAxis: {
                        title: '', showTextEvery:arrayLength
                         
                     },
                     legend: { position: 'bottom'},
                     colors: ['green', 'green'],
                     seriesType: 'line',
                     series: {1: {type: 'line'}},
                  };

               var chart = new google.visualization.ComboChart(document.getElementById('chart_div0'));
               chart.draw(data1, options);
                  
            }
         });
         
         
         
      }
   </script>
   
   <script type="text/javascript">
      //차트 및 코어 차트 패키지를 로드함.
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);
   
      function drawVisualization() {         

          
         
         $.ajax({
            url:"Ridingdataget2",
            success:function(data2){
               var data3;
               var alltime = ${time}*10;
               alltime
               
               console.log(data2);
              console.log(alltime);
               
                 var si2 = 0, bun2 = 0, cho2 = 0;
                 if(${time}*10<=5){
              cho2=data.length*10;
                 }else if(${time}*10>=5&${time}*10<=359){
                 bun2=(parseInt((${time}*10)/60));
                 cho2=(parseInt((${time}*10)%60));
                 }else if(${time}*10>359){
               si2=(parseInt((${time}*10)/3600));
                  bun2=((parseInt((${time}*10)/60))-((parseInt((${time}*10)/3600)*60)));
                  cho2=(parseInt((${time}*10)%60));
                 } 
                           
               data3 = new google.visualization.DataTable();
               data3.addColumn('string', '거리, 시간, 칼로리');
               data3.addColumn('number', '총거리');
               data3.addColumn('number', '총시간'+si2+"시간"+bun2+"분"+cho2+"초");
               data3.addColumn('number', '칼로리소모량');
               data3.addRows(data2.length);
        
            
               //Math.round(avKcaluse*((${time}*10)/60)*70)
             
               console.log(data2[0].alldistance)
               console.log(data2[0].kcal)
                alert(data2[0].alltime);
                var time= data2[0].alltime.split("/");
                time=time[2];
        
               data3.setCell(0, 0, null);
               data3.setCell(0, 1, data2[0].alldistance);
               data3.setCell(0, 2, time);
               data3.setCell(0, 3, data2[0].kcal);

              
   
               var options = {    
                     title : '${uid}'+' 님 라이딩 정보',
                     legend: { position: 'bottom'},
                     hAxis: {
                        title: "", 
                         
                     },
                     animation: {
                         duration: 1500,
                         easing: 'out',
                         startup: true
                       },
                     seriesType: 'bars',
                     series: {1: {type: 'bars'}},
                     
                  };

               var chart = new google.visualization.ComboChart(document.getElementById('chart_div2'));
               chart.draw(data3, options);
                  
            }
         });
         
         
         
      }
   </script>


<!-- 끝  -->

     
   </div><!--/wrapper-->

   <!-- JS Global Compulsory -->
   <script type="text/javascript" src="./resources/assets/plugins/jquery/jquery.min.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- JS Implementing Plugins -->
   <script type="text/javascript" src="./resources/assets/plugins/back-to-top.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/smoothScroll.js"></script>
   <!-- JS Customization -->
   <script type="text/javascript" src="./resources/assets/js/custom.js"></script>
   <!-- JS Page Level -->
   <script type="text/javascript" src="./resources/assets/js/app.js"></script>
   <script type="text/javascript" src="./resources/assets/js/plugins/style-switcher.js"></script>
   <script type="text/javascript">
      jQuery(document).ready(function() {
         App.init();
         StyleSwitcher.initStyleSwitcher();
      });
   </script>
   <script type="text/javascript" src="./resources/js/upload.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!--[if lt IE 9]>
   <script src="assets/plugins/respond.js"></script>
   <script src="assets/plugins/html5shiv.js"></script>
   <script src="assets/plugins/placeholder-IE-fixes.js"></script>
   <![endif]-->
<script id="templateAttach" type="text/x-handlebars-template">
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
</script>  

<script>
   var template = Handlebars.compile($("#templateAttach").html());   
   
   $.getJSON("gr_iconl",function(list){
      $(list).each(function(){
         
         var fileInfo = getFileInfo(this);
         
         var html = template(fileInfo);
         
         $(".uploadedList").append(html);
         
      });
   });
   
   
</script>
</body>
</html>