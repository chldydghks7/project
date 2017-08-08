<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title hereasd</title>

<!-- Bootstrap Core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./resources/css/modern-business.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- Custom Fonts -->
<link href="./resources/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
</head>

<style>
.huge {
   font-size: 40px;
}

.panel-green {
   border-color: #5cb85c;
}

.panel-green>.panel-heading {
   border-color: #5cb85c;
   color: #fff;
   background-color: #5cb85c;
}

.panel-green>a {
   color: #5cb85c;
}

.panel-green>a:hover {
   color: #3d8b3d;
}

.panel-red {
   border-color: #d9534f;
}

.panel-red>.panel-heading {
   border-color: #d9534f;
   color: #fff;
   background-color: #d9534f;
}

.panel-red>a {
   color: #d9534f;
}

.panel-red>a:hover {
   color: #b52b27;
}

.panel-yellow {
   border-color: #f0ad4e;
}

.panel-yellow>.panel-heading {
   border-color: #f0ad4e;
   color: #fff;
   background-color: #f0ad4e;
}

.panel-yellow>a {
   color: #f0ad4e;
}

.panel-yellow>a:hover {
   color: #df8a13;
}

.callout {
   display: table;
   width: 100%;
   height: 400px;
   color: #fff;
   background: url('./resources/img/bike.jpg') no-repeat center center
      scroll;
   -webkit-background-size: cover;
   -moz-background-size: cover;
   background-size: cover;
   -o-background-size: cover;
}

.callout2 {
   display: table;
   width: 100%;
   height: 400px;
   color: #fff;
   background: url('./resources/img/bike3.jpg') no-repeat center center
      scroll;
   -webkit-background-size: cover;
   -moz-background-size: cover;
   background-size: cover;
   -o-background-size: cover;
}

.callout3 {
   display: table;
   width: 100%;
   height: 400px;
   color: #fff;
   background: url('./resources/img/bike5.jpg') no-repeat center center
      scroll;
   -webkit-background-size: cover;
   -moz-background-size: cover;
   background-size: cover;
   -o-background-size: cover;
}

.text-vertical-center {
   display: table-cell;
   text-align: center;
   vertical-align: middle;
   background-color: rgba(0, 0, 0, 0.5);
}
@font-face { 
   font-family: 'nexon'; 
   src: url('./resources/fonts/NEXON FOOTBALL GOTHIC B.OTF'); 
   }
@font-face {
   font-family: 'nexon2'; 
   src: url('./resources/fonts/NEXON FOOTBALL GOTHIC L.OTF'); 
   }
@font-face {
   font-family: 'sung';
   src: url('./resources/fonts/sung.ttf'); 
   }
@font-face{
   font-family: 'jae';
   src: url('./resources/fonts/DXSPDM-KSCPC-EUC-H.TTF')
}
@font-face{
   font-family: 'jae2';
   src: url('./resources/fonts/a타임머신.ttf')
}
   .navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:focus,
   .navbar-inverse .navbar-nav>.open>a:hover {
   color: #fff;
   background-color: #929292
}
</style>


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

   <!-- Header Carousel -->
   <header id="myCarousel" class="carousel slide"
      style="height: 30%;background: url('./resources/img/infor.jpeg') no-repeat center center scroll;">

   <!-- Wrapper for slides -->
   <div class="carousel-inner">
      <div class="item active">
         <div class="carousel-caption" style="bottom: 60px;">
            <h1 style="font-size: 50px; font-family: sung;">MY PAGE</h1>
         </div>
      </div>
      
   </div>
   </header>

   <!-- /.row -->
   <div class="container">
<div class="w3-panel w3-red w3-display-container w3-card-4">
  <span onclick="this.parentElement.style.display='none'"
  class="w3-button w3-red w3-large w3-display-topright ">x</span>
  <p style="font-family: nexon; font-size: 20px; margin-top: 5px;"># My Info에서는 자기 자신의 라이딩 누적 정보를 확인할수 있습니다! 누적 기록에 따라 골드, 실버, 브론즈로 나뉘게 됩니다!</p>
  <p style="font-family: nexon; font-size: 20px;">또한 일정 관리를 통하여 라이딩 참여 불참 여부를 선택하세요!</p>
</div>
      <!-- Page Heading/Breadcrumbs -->
      <div class="row" style="font-family: sung;">
         <div class="col-lg-12">
            <h1 class="page-header" style="font-family: nexon;">${uid}님&nbsp;&nbsp;안녕하세요</h1>
         </div>
      </div>
      <!-- /.row -->

      <!-- Content Row -->
      <ul class="nav nav-tabs">
         <li class="active"><a href="#" style="font-family: sung;">내정보</a></li>
         <li  style="font-family: sung;"><a href="calendar?uid=${uid}">달력</a></li>
         <!-- data-toggle="tab" <a href="calendar?uid=${uid}">달력</a> -->
      </ul>

      <br>
      <div class="row">

         <!-- Blog Post Content Column -->
         <div class="col-lg-12" id="content">

            <!-- Preview Image -->
            <div class="w3-card-4 w3-round-xxlarge"style="height: 600px;  border-color: #ddd;background: url('./resources/img/bg_gold.png') no-repeat center center
      scroll;">
               <span style="font-family: nexon; position: absolute; font-size: 40px;margin-top: 37px;margin-left: 100px;">No : 001</span>
               <span style="font-size: 80px;font-family: nexon;margin-left: 340px; ">Member Card</span>
               <span style="font-family: nexon; position: absolute; font-size: 40px;margin-top: 37px;float: right; margin-left: 50px;">2017-07-20</span>
               <div id="pngg" style="position: absolute; width: 395px; height: 395px; background-color: black;margin-left: 60px;"></div>
               <table style="position:absolute; width: 600px; height: 300px;margin-left: 520px; font-family: nexon;font-size: 40px;">
               
                  <tr> 
                     <td>ID - ${uid}</td>
                  </tr>
                  <tr>
                     <td>평균속도 - 40km/h</td>
                  </tr>
                  <tr>
                     <td>평균거리 - 86km</td>
                  </tr>
        <!-- 성재형 hi bro-->   	
           	<c:forEach items="${myGroup1}" var="i">
                  <tr>
                     <td id="td1">${i.gr_name}</td>
                  </tr>
            </c:forEach>
         <!-- 성재형 hi bro--> 
          
               </table>
               <img style="position: absolute; width: 400px; height: 400px; right: 695px; top: 117px;"  src='./resources/img/yonggold.png'/>
               <img style="position: absolute; width: 180px; height: 180px;margin-top: 412px;left: 970px;z-index: 100;"  src='./resources/img/yong.png'/>
               <span style="position: absolute;font-family: nexon;left:500px; margin-top: 450px;font-size: 100px; width: 800px; height: 200px;">GROUP RIDING</span>
            </div>
               
         </div>




      </div>
      <br>

      <div class="row">
         <div class="col-lg-3 col-md-6">
            <div class="panel w3-card-4">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-3">
                        <i class="fa fa-bicycle fa-5x"></i>
                     </div>

                     <div class="col-xs-9 text-right">
                        <div class="huge" style="font-family: nexon;">${myAlldistance}</div>

                        <div style="font-family: nexon;">총 거리</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-md-6">
            <div class="panel w3-card-4">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-3">
                        <i class="fa fa-clock-o fa-5x"></i>
                     </div>

                     <div class="col-xs-9 text-right">
                        <div class="huge" style="font-family: nexon;">${myAlltime} h</div>

                        <div style="font-family: nexon;">시간</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-md-6">
            <div class="panel w3-card-4">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-3">
                        <i class="fa fa-group fa-5x"></i>
                     </div>

                     <div class="col-xs-9 text-right">
                        <div class="huge" style="font-family: nexon;">${myGr_gr}</div>

                        <div style="font-family: nexon;">가입 그룹 수</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-md-6">
            <div class="panel w3-card-4">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-3">
                        <i class="fa fa-flag-checkered fa-5x"></i>
                     </div>

                     <div class="col-xs-9 text-right">
                        <div class="huge" style="font-family: nexon;">${myRiding}</div>

                        <div style="font-family: nexon;">완료한 라이딩 수</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- /.row -->
      <div class="row">
         <div class="col-lg-12">
            <div class="panel panel-default">
               <div class="panel-heading">
                  <h3 class="panel-title" style="font-family: sung;">
                     <i class="fa fa-bar-chart-o fa-fw" ></i> Area Chart
                  </h3>
               </div>
               <div class="panel-body">
                  <div id="morris-area-chart"></div>
               </div>
            </div>
         </div>
      </div>

      <hr>

      <!-- Footer -->
      <footer>
      <div class="row">
         <div class="col-lg-12" style="font-family: sung;">
            <p>Copyright &copy; GROUP RIDING 2017</p>
         </div>
      </div>
      </footer>

   </div>

   <!-- Footer -->





   <!-- /.container -->

   <!-- jQuery -->
   <script src="./resources/js2/jquery.js"></script>

   <!-- Bootstrap Core JavaScript -->
   <script src="./resources/js2/bootstrap.min.js"></script>
   <script>
      $('.carousel').carousel({
         interval : 5000
      //changes the speed
      });
   </script>
   
   <script>
   var uid = "${uid}";   //
   var template = Handlebars.compile($("#templateAttach").html());   
   
   $.getJSON("getAttach/"+uid,function(list){
      $(list).each(function(){
         
         var fileInfo = getFileInfo(this);
         
         var html = template(fileInfo);
         var aaa = 1;
         
         if(aaa=1){
             $(".uploadedList").append(html);
            aaa++;
         }
         
      });
   });
</script>
<script>
$(document).ready(
      function() {
         var uid = "${uid}";
         $.getJSON("getAttach/" + uid, function(list) {

            var img = $("<img/>").attr('src',
                  "/displayFile?fileName=" + list[0]);
            img.css("width", "35px");
            img.css("height", "35px");
            
            var pngg = $("<img/>").attr('src',
                    "/displayFile?fileName=" + list[0]);
            pngg.css("width", "395px");
            pngg.css("height", "395px");	

            $("#pngg").prepend(pngg);
            
            $("#profile").prepend(img);

            var logoutform = $("form[data-role='out']");

            $("#logout").click(function() {

               logoutform.submit();
            });

         });

      });
</script>



</body>

</html>