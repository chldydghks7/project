<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>Pricing | Unify - Responsive Website Templateasdasd</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="./resources/js/upload.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./resources/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="./resources/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">






</head>
<style>
a{
   black;
}
#popLogo {
   z-index: 99;
   position: absolute;
   height: 30px;
   width: 30px;
   right: 10px;
   margin-top: 10px;
}

.logo, .footer-logo {
   width: 200px;
   heigth: 100px;
}

ul.tabs {
   margin: 0;
   padding: 0;
   float: left;
   list-style: none;
   height: 32px; /*--Set height of tabs--*/
   border-bottom: 1px solid #999;
   border-left: 1px solid #999;
   width: 100%;
}

ul.tabs li {
   float: left;
   margin: 0;
   padding: 0;
   height: 31px;
   /*--Subtract 1px from the height of the unordered list--*/
   line-height: 31px; /*--Vertically aligns the text within the tab--*/
   border: 1px solid #999;
   border-left: none;
   margin-bottom: -1px; /*--Pull the list item down 1px--*/
   overflow: hidden;
   position: relative;
   background: #e0e0e0;
}

ul.tabs li a {
   text-decoration: none;
   color: #000;
   display: block;
   font-size: 1.2em;
   padding: 0 20px;
   border: 1px solid #fff;
   /*--Gives the bevel look with a 1px white border inside the list item--*/
   outline: none;
}
<<<<<<< HEAD

ul.tabs li a:hover {
   background: #ccc;
}

html ul.tabs li.active, html ul.tabs li.active a:hover {
   /*--Makes sure that the active tab does not listen to the hover properties--*/
   background: #fff;
   border-bottom: 1px solid #fff;
   /*--Makes the active tab look like it's connected with its content--*/
}

b_container {
   border: 1px solid #999;
   border-top: none;
   overflow: hidden;
   clear: both;
   float: left;
   width: 100%;
   background: #fff;
}

.tab_content {
   padding: 20px;
   font-size: 1.2em;
}

#map11 {
   z-index: 99;
}

=======


ul.tabs li a:hover {
	background: #ccc;
}

html ul.tabs li.active, html ul.tabs li.active a:hover {
	/*--Makes sure that the active tab does not listen to the hover properties--*/
	background: #fff;
	border-bottom: 1px solid #fff;
	/*--Makes the active tab look like it's connected with its content--*/
}

b_container {
	border: 1px solid #999;
	border-top: none;
	overflow: hidden;
	clear: both;
	float: left;
	width: 100%;
	background: #fff;
}

.tab_content {
	padding: 20px;
	font-size: 1.2em;
}

#map11 {
	z-index: 99;
}

>>>>>>> e1591ff61afa1bda8434a28de54edcf57258b9e9
.text-vertical-center {
   background-color: rgba(0, 0, 0, 0.7);
   width: 100%;
   height: 100%;
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
@font-face { 
   font-family: 'nexon'; 
   src: url('./resources/fonts/NEXON FOOTBALL GOTHIC B.OTF'); 
   }
@font-face {
   font-family: 'nexon2'; 
   src: url('./resources/fonts/NEXON FOOTBALL GOTHIC L.OTF'); 
   }
   
   #mm{
   font-size: 20px;
   font-family: nexon;
   color: red;
   }
.profile{
   font-family: sung;
   font-size: 17px;
   color: black;
}
.table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 0px;
}
.table_cen{
   text-align: center;
   color: white;
}
.sungsung{
   background-color: rgba(62, 62, 62, 0.53);
   width: 100%;
   height: 100%;
}
</style>
<body>
<<<<<<< HEAD
   <script>
      function ViewLayer() {
         //만일 Pop라는 녀석이 닫혀있다면??
         if (document.getElementById("Pop").style.display == "none") {
            //열어주어라
            document.getElementById("Pop").style.display = 'inline'
            //그렇지 않은 모든 경우라면??
         }
      }
      function ViewClose() {
         if (document.getElementById("Pop").style.display == "inline") {
            //열어주어라
            document.getElementById("Pop").style.display = 'none'
            //그렇지 않은 모든 경우라면??
         }
      }
   </script>

   <script>
      function ViewLayer2() {
         //만일 Pop라는 녀석이 닫혀있다면??
         if (document.getElementById("Pop_Re").style.display == "none") {
            //열어주어라
            document.getElementById("Pop_Re").style.display = 'inline'
            //그렇지 않은 모든 경우라면??
         }
      }
      function ViewClose2() {
         $(".vbtn").remove();
         if (document.getElementById("Pop_Re").style.display == "inline") {
            //열어주어라
            document.getElementById("Pop_Re").style.display = 'none'
            //그렇지 않은 모든 경우라면??
         }
      }
   </script>
   <script>
      function ViewLayer3() {
         ViewClose2();
         //만일 Pop라는 녀석이 닫혀있다면??
         if (document.getElementById("Pop_Re_Modify").style.display == "none") {
            //열어주어라
            document.getElementById("Pop_Re_Modify").style.display = 'inline'
            //그렇지 않은 모든 경우라면??
         }
      }
      function ViewClose3() {
         $(".vbtn").remove();
         if (document.getElementById("Pop_Re_Modify").style.display == "inline") {
            //열어주어라
            document.getElementById("Pop_Re_Modify").style.display = 'none'
            //그렇지 않은 모든 경우라면??
         }
      }
   </script>
   <script>
      $(document).ready(function() {

         //When page loads...
         $(".tab_content").hide(); //Hide all content
         $("ul.tabs li:first").addClass("active").show(); //Activate first tab
         $(".tab_content:first").show(); //Show first tab content

         //On Click Event
         $("ul.tabs li").click(function() {

            $("ul.tabs li").removeClass("active"); //Remove any "active" class
            $(this).addClass("active"); //Add "active" class to selected tab
            $(".tab_content").hide(); //Hide all tab content

            var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
            $(activeTab).fadeIn(); //Fade in the active ID content
            return false;
         });

      });
   </script>
   <script>
      
   </script>
   <!-- Navigation -->
   <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"
      style="background-color: white;">
      <div class="container">
         <!-- Brand and toggle get grouped for better mobile display -->
         <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
               data-target="#bs-example-navbar-collapse-1">
               <span class="sr-only">Toggle navigation</span> <span
                  class="icon-bar"></span> <span class="icon-bar"></span> <span
                  class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="mainlogin"
               style="color: red; font-family: sung; font-size: 30px;">GROUP
               RIDING</a>
         </div>
         <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="collapse navbar-collapse"
            id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
               <li><a href="mainlogin" style="color: black; font-family: sung;">Home</a></li>
               <li class="dropdown"><a href="MyInfo?uid=${uid}"
                  style="color: black; font-family: sung;">My Page</a></li>
               <li class="dropdown"><a href="#" class="dropdown-toggle"
                  data-toggle="dropdown" style="color: black; font-family: sung;">Group
                     <b class="caret"></b>
               </a>
                  <ul class="dropdown-menu">
                     <li><a href="groupList"
                        style="color: black; font-family: sung;">Group List</a></li>
                     <li><a href="racePoint"
                        style="color: black; font-family: sung;">Race Point</a></li>
                  </ul></li>
               <li><a href="groupRank"
                  style="color: black; font-family: sung;">Rank</a></li>
               <li><a href="sharing" style="color: black; font-family: sung;">Sharing</a></li>
               <li><a href="hotPlaceMap"
                  style="color: black; font-family: sung;">Hot Place</a></li>

               <div style="float: right; width: 180px;">
                  <li id="profile" style="float: left; margin-top: 6px;"></li>
                  <li class="dropdown"><a class="dropdown-toggle"
                     data-toggle="dropdown"
                     style="font-size: 25px; color: black; float: left; margin-top: 8px; margin-left: 2px; font-family: sung;">${uid}</a>

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

  <header id="myCarousel" class="carousel slide"
      style="height: 330px; background: url('/displayFile?fileName=${groupPng}') no-repeat center center scroll;background-size: 100% 330px;'">
      <!-- Wrapper for slides -->
      <div class="sungsung">
      <div class="carousel-inner">
         <div class="item active">
            <div class="carousel-caption" style="bottom: 60px;">
               <h1 style="font-size: 40px; font-family: sung;">${group.gr_name}</h1>
               </br>
               <img style="position:absolute; z-index:100;top:-100px;left:-40px; height: 140px; width:100px;"src= "./resources/img/gold_medal.png"/>
               <div
                  style="font-family: sung; position: absolute; left: 1050px; top: -90px; width: 300px; font-size: 20px;">SINCE
                  - ${group.gr_date}</div>
               <div
                  style="font-family: sung; position: absolute; left: 800px; top: -90px; width: 300px; font-size: 20px; color: white;">그룹장
                  - ${group.gr_leader}</div>
               <marquee
                  style="font-family: sung; position: absolute; left: 260px; margin-top: 10px; width: 500px; font-size: 20px; color: yellow;">${group.gr_content}</marquee>
               <div style="position: absolute; z-index: 100;">
                  <form action="gr_join" method="post">
                     <input type="hidden" name="uid" value="${uid}"> <input
                        type="hidden" name="gr_name" value="${group.gr_name}">
                     <c:if test="${mygroupJudge==null}">
                        <div>
                           <button id="joinBtn" class="w3-btn w3-red"style="text-shadow:1px 1px 0 #444;font-family: nexon; font-size: 25px;position: absolute; left: 1220px;top: 20px;" >그룹가입</button>
                        </div>
                     </c:if>

                  </form>
               </div>
               <div style="position: absolute; z-index: 100;">
                  <form action="createNotice" method="get">
                           <input type="hidden" name="gr_id" value="${group.gr_id}" /> <input
                              type="hidden" name="gr_name" value="${gr_name1}" />
                           <button type="submit" id="notice11"class="w3-btn w3-red"style="text-shadow:1px 1px 0 #444;font-family: nexon; font-size: 25px;position: absolute; left: 1220px;top: 20px;">일정등록</button>
                        </form>

               </div>
            </div>
         </div>
      </div>
      </div>
   </header>
	
	
	
	
   <br>
   <!--=== Breadcrumbs ===-->
   <!--/breadcrumbs-->
   <!--=== End Breadcrumbs ===-->

   <!--=== Content Part ===-->



   <div class="container">
      <!----------------------------------------------------------------------------------------- 그룹상세 -->

      
      <!--=== Blog Posts ===-->
      <div class="">
         <div class="container"
            style="padding-top: 30px; padding-bottom: 60px; padding-left: 0px;">
            <div>
               <!-- Blog All Posts -->
               <div class="col-md-9">
                  <!----- 그룹 캘린더 --------------------------------------------------------------------------->
                  <div id="map11" class="col-md-13" style="z-index: 1; border: solied 2px; border-color: black;">
                     <div class="news-v3 bg-color-white margin-bottom-60">
                        <h2 style="font-family: sung;">#${group.gr_name}의 최근 라이딩</h2>
                        <!-- 슬라이드 -->
                        <a id="mm" href="#"><div id="map_div" style="border: solid 2px;border-color: black;"></div></a>
                        <button class="w3-btn w3-red" id="click1" style="font-family: sung;">1</button>
                        <button class="w3-btn w3-red"id="click2" style="font-family: sung;">2</button>
                        <button class="w3-btn w3-red"id="click3" style="font-family: sung;">3</button>
                        <button class="w3-btn w3-red"id="click4" style="font-family: sung;">4</button>
                        <button class="w3-btn w3-red"id="click5" style="font-family: sung;">5</button>
                        <!-- 슬라이드 -->
                     </div>

                  </div>
                  <!----- 그룹 캘린더 --------------------------------------------------------------------------->
                  <br>
                  <h2 style="font-family: sung;">#게시판</h2>
                  <!-- Blog Posts -->
                  <div class="news-v3 bg-color-white margin-bottom-60">
                     <table class="table table-bordered" id="read">
                        <tr style="font-family: nexon; font-size: 20px; background-color: black;">
                           <th class="table_cen">제목</th>
                           <th class="table_cen">작성자</th>
                           <th class="table_cen">날짜</th>
                           <th class="table_cen">조회수</th>
                           <!-- list_master -->
                        </tr>


                        <c:forEach items="${list_master}" var="GroupMaster">
                           <tr>

                              <td class="success" style="background-color: white;"><h4>
                                    <strong><a style="color: red; font-family: sung;text-align: center;"
                                       href="javascript:ViewLayer2();" id="a"
                                       class="${GroupMaster.writing_id}">공지 - ${GroupMaster.writing_title}</a></strong>
                                 </h4></td>

                              <td class="success" style="background-color: white;"><h4 style="color: red;font-family: sung;text-align: center;">
                                    <strong>${GroupMaster.member_id}
                                 </h4>
                                 </strong></td>

                              <td class="success" style="background-color: white;"><h4 style="color: red;font-family: sung;text-align: center;">
                                    <strong>${GroupMaster.regist_date}
                                 </h4>
                                 </strong></td>
                              <td class="success" style="background-color: white;"><h4 style="color: red;font-family: sung;text-align: center;">
                                    <strong>${GroupMaster.view_Number}
                                 </h4>
                                 </strong></td>
                           </tr>

                        </c:forEach>
                        <c:forEach items="${listAll}" var="GroupInfoBo">
                           <tr>

                              <td class=""><a href="javascript:ViewLayer2();" id="a"  style="color:black;font-family: sung;text-align: center;"
                                 class="${GroupInfoBo.writing_id}">${GroupInfoBo.writing_title}</a></td>

                              <td class=""  style="font-family: sung;text-align: center;">${GroupInfoBo.member_id}</td>

                              <td class=""  style="font-family: sung;text-align: center;">${GroupInfoBo.regist_date}</td>
                              <td class=""  style="font-family: sung;text-align: center;">${GroupInfoBo.view_Number}</td>
                           </tr>

                        </c:forEach>
                     </table>
                     <c:if test="${memList!=null}">
                     <br>
                        <a href="javascript:ViewLayer();" class="w3-btn w3-black" style="float: right; font-family: nexon;" >등록</a>
                     </c:if>

                     <div id="Pop"
                        style="position: absolute; left: 15.5px; top: 600px; width: 835px; height: 454px; z-index: 2; display: none; background: black; color: #fff;">

                        <a href="javascript:ViewClose();"> <img id="popLogo"
                           src="./resources/img/cancelcel.png" /></a>
                        <form method="post"
                           action="groupInfo?gr_name=${group.gr_name}&gr_id=${group.gr_id}&uid=${uid}"
                           style="margin: 3% 3%;">
                           <p style="color: white; font-family: nexon; font-size: 20px;">작성자 - ${uid}</p>

                           <div class="form-group">
                              <label style="color: white; font-family: nexon; font-size: 17px">제목</label> <input
                                 class="form-control" type="text" name="writing_title">
                           </div>
                           <div class="form-group">
                              <label style="color: white; font-family: nexon; font-size: 17px">내용</label>
                              <textarea class="form-control" rows="11" cols="132"
                                 style="color: black; resize: none;" name="writing_content"></textarea>
                           </div>

                           <input type="hidden" value="${uid}" name="member_id" />

                           <!-- 인풋 타입 히든으로 안보이게 처리 -->

                           <input class="w3-btn w3-white" type="submit" value="등록" style="float: right;font-family: nexon; font-size: 17px;">
                        </form>
                     </div>


                     <div id="Pop_Re"
                        style="position: absolute; left: -27.4px; top: 557px; width: 835px; height: 454px; z-index: 100 !important; display: none; margin: 5% 5%; background: white; color: #fff; border: solid 2px; border-color:black;">

                        <a href="javascript:ViewClose2();"> <img id="popLogo"
                           src="./resources/img/cancel.png" / style="color: white;"></a>
                        <div style="margin: 3% 3%; color: white;">
                           <div class="uid" style="display: none; font-family: nexon; font-size: 20px;color:black;">${uid}</div>
                           <span style="font-family: nexon;font-size: 20px;color:black;">작성자 -</span> <label id="re_id" style="font-size: 20px; font-family: nexon;color:black;"></label>
                           <br /> <span style="font-family: nexon; font-size: 17px;color:black;">제목 -</span> <label
                              id="re_title" style="color: white; font-family: nexon; font-size: 17px"></label><br /> <span style="font-family: nexon; font-size: 17px;color:black;">내용</span>
                           <div id="re_content"
                              style="height: 250px; background-color: #505457; font-family: nexon; font-size: 17px; border: solid 2px; border-color: black;"></div>
                           <br /> <label id="re_date" style="font-family: nexon;font-size: 17px;color:black;">작성일 - </label> <input type="hidden" style="font-family: nexon;font-size: 17px;"
                              value="" id="re_writing_id" />
                           <div id="die"></div>
                           <!-- <input class="btn btn-default" type="submit" value="수정"> -->
                           <!-- <input class="btn btn-default" type="submit" value="수정"
                                 style="float: right"> -->
                           <!-- <button class="btn btn-default" id="Pop_Re_del"
                                 style="float: right">삭제</button> -->
                        </div>
                     </div>

                     <div id="Pop_Re_Modify"
                        style="position: absolute; left: 100px; top: 100px; width: 1000px; height: 600px; z-index: 100 !important; display: none; background: red; color: #fff;">
                        <a href="javascript:ViewClose3();"> <img id="popLogo"
                           src="./resources/img/cancelcel.png" /></a>
                        <form method="post" action="groupInfo2" style="margin: 5% 5%;">
                           <p style="color: white;">작성자 - ${uid}</p>

                           <div class="form-group">
                              <p style="color: white;">제목</p>
                              <input class="form-control" type="text" name="writing_title"
                                 id="mo_title" value="">
                           </div>

                           <div class="form-group">
                              <p style="color: white;">내용</p>
                              <textarea class="form-control" rows="13" cols="132"
                                 style="color: black; resize: none;" name="writing_content"
                                 id="mo_content" value=""></textarea>
                           </div>
                           <input type="hidden" value="${group.gr_name}" name="gr_name" />
                           <input type="hidden" value="${group.gr_id}" name="gr_id" /> <input
                              type="hidden" value="${uid}" name="uid" /> <input
                              type="hidden" id="re_writing_id2" value="" name="writing_id" />
                           <!-- 인풋 타입 히든으로 안보이게 처리 -->

                           <input class="btn btn-default" type="submit" value="수정"
                              style="float: right">
                        </form>
                     </div>
                  </div>
                  <!-- End Blog Posts -->

                  <!-- Blog Posts -->
                  <div class="news-v3 bg-color-white margin-bottom-60">
                     <a href="groupNotice?gr_name=${gr_name1}">그룹공지 확인</a>
                  </div>
                  <!-- End Blog Posts -->

                  <!-- Blog Posts -->
                  <div class="news-v3 bg-color-white margin-bottom-60"></div>
                  <!-- End Blog Posts -->

                  <!-- Blog Posts -->
                  <div class="news-v3 bg-color-white margin-bottom-60"></div>

               </div>
               <!-- End Blog All Posts -->

               <!-- Blog Sidebar -->
               <div class="col-md-3">
                  <!-- Contacts -->
                  <div class="headline">
                     <h2 style="font-family: sung;">#Profile</h2>
                     <!--                      private String fullName; //프로필 사진경로
                        private String uid; //아이디
                        private int riding_no; //라이딩한 횟수
                        private double alldistance; //총거리
                        private double avspeed; //평균속도  -->
                  </div>

                  <ul class="list-unstyled who margin-bottom-30">





                     <c:if test="${listAll_li.riding_no !=null }">
                        <li><a href="#"><i class=""></i> <br /> <img
                              style="width: 258px; height: 250px;     margin-top: 9px;"
                              src="/displayFile?fileName=${listAll_li.fullName}" /></a></li>
                        <li class="profile"><a href="#" style="color: black;"><i class=""></i> 아이디 - ${listAll_li.uid}</a></li>
                        <li class="profile"><a href="#" style="color: black;"><i class=""></i> <strong>참여횟수
                                 - ${listAll_li.riding_no}</strong> </a></li>
                        <li class="profile"><a href="#" style="color: black;"><i class=""></i> <strong>총거리 -
                                 ${listAll_li.alldistance}</strong> </a></li>
                        <li class="profile"><a href="#" style="color: black;"><i class=""></i> <strong>평균 속도
                                 - ${listAll_li.avgspeed}</strong> </a></li>
                     </c:if>
                     <c:if test="${listAll_li.riding_no ==null }">
                        <li class="profile"><a href="#" style="color: black;"><i class=""></i> <br /> <img
                              style="width: 200px; height: 200px; margin-left: 30px;"
                              src="/displayFile?fileName=${mem_li}" /></a></li>
                        <li class="profile"><a href="#" style="color: black;"><i class=""></i> 아이디 -
                                 ${uid}</a></li>
                        <li class="profile"><a href="#" style="color: black;"><i class=""></i> 참여횟수
                                 - 0 </a></li>
                        <li class="profile"><a href="#" style="color: black;"><i class=""></i> 총거리 -
                                 0 </a></li>
                        <li class="profile"><a href="#" style="color: black;"><i class=""></i> 평균 속도
                                 - 0 </a></li>
                     </c:if>
                  </ul>
                  <br>
                  <br>
                  <!-- Business Hours -->
                  <div class="headline" style="font-family: sung;">
                     <h2>#Member List</h2>
                  </div>
                  <ul class="list-unstyled margin-bottom-30">
                     <table class="table table-bordered">
                        <c:forEach items="${listAll_mem}" var="mem">
                           <tr>
                              <td style="width: 30px"><img
                                 style="width: 40px; height: 40px;"
                                 src="/displayFile?fileName=${mem.fullname}" /></td>
                              <td style="font-family: sung; font-size: 17px;margin-top: 7px;">${mem.uid}</td>
                              <!-- 강퇴아이콘 -------------------------------------------->

                              <c:if test="${uid == group.gr_leader}">
                                 <!-- 세션의 uid가 그룹장이 아니라면 아래 문구 추가 -->
                                 <td><c:choose>
                                       <c:when test="${mem.uid!=group.gr_leader}">
                                          <a href="#"> <img class="imgg" id="${mem.uid}"
                                             style="width: 25px; height: 25px;"
                                             src="./resources/img/cancel.png" />
                                          </a>
                                       </c:when>
                                    </c:choose></td>
                              </c:if>
                              <input type="hidden" id="gname" value="${group.gr_name}" />
                              <!-- 삭제하기 위해서 그룹의 이름을 받아 gname에 저장함 -->
                              <!-- 강퇴아이콘 -------------------------------------------->
                           </tr>
                        </c:forEach>
                     </table>
                  </ul>

                  <!-- Why we are? -->

               </div>
               <!--/col-md-3-->
               <!-- End Blog Sidebar -->
            </div>
         </div>
      </div>

      <footer>
         <div class="row">
            <div class="col-lg-12" style="font-family: sung;">
               <p>Copyright &copy; GROUP RIDING Website 2017</p>
            </div>
         </div>
      </footer>
      <br>
      <br>


   </div>
   <script>
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

            });
   </script>




   <script>
      $(document)
            .ready(
                  function() {
                     var uid = $(".uid").text();
                     var ele = "<button class='w3-btn w3-black' id='Pop_Re_mo'  style='float: right; font-family: nexon;font-size:17px;'>수정</button>"
                           + "<button class='w3-btn w3-black' id='Pop_Re_del' style='float: right;font-family: nexon;font-size:17px;'>삭제</button>";

                     var formObj = $("form[role='form']");

                     $("#gr_list").on("click", function() {
                        formObj.attr("action", "groupList");
                        formObj.attr("method", "get");
                        formObj.submit();
                     });
                     /* ----------------------------------삭제버튼---------------------------------------- */
                     $(".imgg").on("click", function() {
                        var uid = $(this).attr("id");
                        var gname = $("#gname").val();
                        console.log(uid);
                        console.log(gname);
                        $.ajax({
                           url : 'groupInfoMem_del',
                           data : {
                              uid : uid,
                              gname : gname
                           },
                           type : 'post',
                           success : function(data) {
                              console.log(data);
                              location.reload();
                           }
                        });
                     });
                     /* ----------------------------------삭제버튼---------------------------------------- */

                     $("#read a").on(
                           "click",
                           function() {
                              var writing_id = $(this).attr("class");
                              $.ajax({
                                 url : 'groupInfo_re',
                                 data : {
                                    id : writing_id
                                 },
                                 type : 'post',
                                 success : function(data) {
                                    console.log(data);
                                    $("#re_id")
                                          .text(data.member_id);
                                    $("#re_title").text(
                                          data.writing_title);
                                    $("#re_content").text(
                                          data.writing_content);
                                    $("#re_date").text(
                                          data.regist_date);
                                    $("#re_writing_id").text(
                                          data.writing_id);
                                    $("#re_writing_id2").val(
                                          data.writing_id);
                                    if (uid == data.member_id) {
                                       $("#die").append(ele);
                                    } else {

                                    }
                                 }
                              });
                           });
                     $("#Pop_Re").on("click", "#Pop_Re_del", function() {
                        var writing_id = $("#re_writing_id").text();
                        console.log(writing_id);
                        $.ajax({
                           url : 'groupInfo_del',
                           data : {
                              id : writing_id
                           },
                           type : 'post',
                           success : function(data) {
                              location.reload();
                           }
                        });

                     });
                     $("#Pop_Re").on(
                           "click",
                           "#Pop_Re_mo",
                           function() {
                              ViewLayer3();
                              var writing_id = $("#re_writing_id")
                                    .text();
                              $.ajax({
                                 url : 'groupInfo_re',
                                 data : {
                                    id : writing_id
                                 },
                                 type : 'post',
                                 success : function(data) {
                                    console.log(data);
                                    $("#mo_title").val(
                                          data.writing_title);
                                    $("#mo_content").val(
                                          data.writing_content);
                                 }
                              });
                           });

                  });
   </script>

   <!--=== Footer Version 1 ===-->


   <!--/wrapper-->


   <script type="text/javascript">
      function initMap() {
         var map = new google.maps.Map(document.getElementById('map'), {
            center : {
               lat : -34.397,
               lng : 150.644
            },
            zoom : 15
         });
         var infoWindow = new google.maps.InfoWindow({
            map : map
         });

         // Try HTML5 geolocation.
         if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
               var pos = {
                  lat : position.coords.latitude,
                  lng : position.coords.longitude
               };

               infoWindow.setPosition(pos);
               infoWindow.setContent('Location found.');
               map.setCenter(pos);
            }, function() {
               handleLocationError(true, infoWindow, map.getCenter());
            });
         } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
         }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
         infoWindow.setPosition(pos);
         infoWindow
               .setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.'
                     : 'Error: Your browser doesn\'t support geolocation.');
      }
   </script>
   <script>
   <!-- 그룹장 체크2 -->
      var leader = "${leader}";

      if (leader == "") {
         $("#notice11").hide();
      } else {
         $("#notice11").show();
      }
   </script>

   <!-- jQuery -->
   <script src="./resources/js2/jquery.js"></script>

   <!-- Bootstrap Core JavaScript -->
   <script src="./resources/js2/bootstrap.min.js"></script>

   <script type="text/javascript" src="./resources/js/upload.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
   <!--[if lt IE 9]>
   <script src="assets/plugins/respond.js"></script>
   <script src="assets/plugins/html5shiv.js"></script>
   <script src="assets/plugins/placeholder-IE-fixes.js"></script>
   <![endif]-->


   <!-- 최근 라이딩 -->
   <script type="text/javascript"
      src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>

   <script>
      var startPoint = [];
      var endPoint = [];
      var notice_title = [];
      var ridingDate = [];

      map = new Tmap.Map({
         div : 'map_div',
         width : '836px',
         height : '450px',
         transitionEffect : "resize",
         animation : true
      });
      map.setCenter(new Tmap.LonLat(14315520.90430, 4283115.74626), 11);
      map.addControl(new Tmap.Control.KeyboardDefaults());
      map.addControl(new Tmap.Control.MousePosition());

      <c:forEach items="${noticelist}" var="i" varStatus="count">
      startPoint.push("${i.start_point}");
      endPoint.push("${i.end_point}");
      notice_title
            .push("<span class='a${count.count}'>&nbsp;&nbsp;${i.notice_title}</span>");
      ridingDate
            .push("<span id='a${count.count}'>${i.ridingDate}&nbsp;&nbsp;</span>");
      </c:forEach>

      $(document).ready(function() {
         if (startPoint[0] != null) {
            searchRoute(startPoint[0], endPoint[0]);
            $("#mm").prepend(notice_title[0]);
            $("#mm").prepend(ridingDate[0]);

            $(".a2").hide();
            $(".a3").hide();
            $(".a4").hide();
            $(".a5").hide();

            $("#a2").hide();
            $("#a3").hide();
            $("#a4").hide();
            $("#a5").hide();
         } else {
            alert("최근 없음!");
         }
      });

      $("#click2").on("click", function() {
         if (startPoint[1] != null) {
            searchRoute(startPoint[1], endPoint[1]);
            $("#mm").prepend(notice_title[1]);
            $("#mm").prepend(ridingDate[1]);

            $(".a1").hide();
            $(".a3").hide();
            $(".a4").hide();
            $(".a5").hide();

            $("#a1").hide();
            $("#a3").hide();
            $("#a4").hide();
            $("#a5").hide();
         } else {
            alert("최근 없음!");
         }
      });

      $("#click3").on("click", function() {
         if (startPoint[2] != null) {
            searchRoute(startPoint[2], endPoint[2]);
            $("#mm").prepend(notice_title[2]);
            $("#mm").prepend(ridingDate[2]);

            $(".a1").hide();
            $(".a2").hide();
            $(".a4").hide();
            $(".a5").hide();

            $("#a1").hide();
            $("#a2").hide();
            $("#a4").hide();
            $("#a5").hide();
         } else {
            alert("최근 없음!");
         }
      });

      $("#click4").on("click", function() {
         if (startPoint[3] != null) {
            searchRoute(startPoint[3], endPoint[3]);
            $("#mm").prepend(notice_title[3]);
            $("#mm").prepend(ridingDate[3]);

            $(".a1").hide();
            $(".a2").hide();
            $(".a3").hide();
            $(".a5").hide();

            $("#a1").hide();
            $("#a2").hide();
            $("#a3").hide();
            $("#a5").hide();
         } else {
            alert("최근 없음!");
         }
      });

      $("#click5").on("click", function() {
         if (startPoint[4] != null) {
            searchRoute(startPoint[4], endPoint[4]);
            $("#mm").prepend(notice_title[4]);
            $("#mm").prepend(ridingDate[4]);

            $(".a1").hide();
            $(".a2").hide();
            $(".a3").hide();
            $(".a4").hide();

            $("#a1").hide();
            $("#a2").hide();
            $("#a3").hide();
            $("#a4").hide();
         } else {
            alert("최근 없음!");
         }
      });

      //경로 정보 로드
      function searchRoute(startPoint, endPoint) {

         
         
         var start = startPoint.split(","); 
      
         var stop = endPoint.split(","); // 경도 자르기
         

         var routeFormat = new Tmap.Format.KML({
            extractStyles : true,
            extractAttributes : true
         });
         var startX = new Object(start[0]);
         var startY = new Object(start[1]);
         var endX = new Object(stop[0])// 14136027.789587;
         var endY = new Object(stop[1])// 4517572.4745242;
         var urlStr = "https://apis.skplanetx.com/tmap/routes?version=1&format=xml";
         urlStr += "&startX=" + startX;
         urlStr += "&startY=" + startY;
         urlStr += "&endX=" + endX;
         urlStr += "&endY=" + endY;
         urlStr += "&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b";
         var prtcl = new Tmap.Protocol.HTTP({
            url : urlStr,
            format : routeFormat
         });
         var routeLayer = new Tmap.Layer.Vector("route", {
            protocol : prtcl,
            strategies : [ new Tmap.Strategy.Fixed() ]
         });
         routeLayer.events.register("featuresadded", routeLayer,
               onDrawnFeatures);
         map.addLayer(routeLayer);
      }

      //경로 그리기 후 해당영역으로 줌
      function onDrawnFeatures(e) {
         map.zoomToExtent(this.getDataExtent());
      }
   </script>

=======
	<script>
		function ViewLayer() {
			//만일 Pop라는 녀석이 닫혀있다면??
			if (document.getElementById("Pop").style.display == "none") {
				//열어주어라
				document.getElementById("Pop").style.display = 'inline'
				//그렇지 않은 모든 경우라면??
			}
		}
		function ViewClose() {
			if (document.getElementById("Pop").style.display == "inline") {
				//열어주어라
				document.getElementById("Pop").style.display = 'none'
				//그렇지 않은 모든 경우라면??
			}
		}
	</script>

	<script>
		function ViewLayer2() {
			//만일 Pop라는 녀석이 닫혀있다면??
			if (document.getElementById("Pop_Re").style.display == "none") {
				//열어주어라
				document.getElementById("Pop_Re").style.display = 'inline'
				//그렇지 않은 모든 경우라면??
			}
		}
		function ViewClose2() {
			$(".vbtn").remove();
			if (document.getElementById("Pop_Re").style.display == "inline") {
				//열어주어라
				document.getElementById("Pop_Re").style.display = 'none'
				//그렇지 않은 모든 경우라면??
			}
		}
	</script>
	<script>
		function ViewLayer3() {
			ViewClose2();
			//만일 Pop라는 녀석이 닫혀있다면??
			if (document.getElementById("Pop_Re_Modify").style.display == "none") {
				//열어주어라
				document.getElementById("Pop_Re_Modify").style.display = 'inline'
				//그렇지 않은 모든 경우라면??
			}
		}
		function ViewClose3() {
			$(".vbtn").remove();
			if (document.getElementById("Pop_Re_Modify").style.display == "inline") {
				//열어주어라
				document.getElementById("Pop_Re_Modify").style.display = 'none'
				//그렇지 않은 모든 경우라면??
			}
		}
	</script>
	<script>
		$(document).ready(function() {

			//When page loads...
			$(".tab_content").hide(); //Hide all content
			$("ul.tabs li:first").addClass("active").show(); //Activate first tab
			$(".tab_content:first").show(); //Show first tab content

			//On Click Event
			$("ul.tabs li").click(function() {

				$("ul.tabs li").removeClass("active"); //Remove any "active" class
				$(this).addClass("active"); //Add "active" class to selected tab
				$(".tab_content").hide(); //Hide all tab content

				var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
				$(activeTab).fadeIn(); //Fade in the active ID content
				return false;
			});

		});
	</script>
	<script>
		
	</script>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"
		style="background-color: white;">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="mainlogin"
					style="color: red; font-family: sung; font-size: 30px;">GROUP
					RIDING</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="mainlogin" style="color: black; font-family: sung;">Home</a></li>

					<li class="dropdown"><a href="MyInfo?uid=${uid}" style="color: black; font-family: sung;">My Page</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" style="color: black; font-family: sung;">Group
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="groupList"
								style="color: black; font-family: sung;">Group List</a></li>
							<li><a href="racePoint"
								style="color: black; font-family: sung;">Race Point</a></li>
						</ul></li>
					<li><a href="groupRank"
						style="color: black; font-family: sung;">Rank</a></li>
					<li><a href="sharing" style="color: black; font-family: sung;">Sharing</a></li>
					<li><a href="hotPlaceMap"
						style="color: black; font-family: sung;">Hot Place</a></li>

					<div style="float: right; width: 180px;">
						<li id="profile" style="float: left; margin-top: 6px;"></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown"
							style="font-size: 25px; color: black; float: left; margin-top: 8px; margin-left: 2px; font-family: sung;">${uid}</a>

							<ul class="dropdown-menu">

								<li><a href="logout" id="logout">LogOut</a></li>

							</ul></li>

					</div>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<header id="myCarousel" class="carousel slide"
		style="height: 330px; background: url('/displayFile?fileName=${groupPng}') no-repeat center center scroll;background-size: 100% 330px;'">

		<%-- <img src="/displayFile?fileName=${group.gr_icon}"
							style="width: 100%; height: 330px; border: solid 2px; border-color: black;position: absolute;" /> --%>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<div class="carousel-caption" style="bottom: 60px;">
					<h1 style="font-size: 40px; font-family: sung;">${group.gr_name}</h1>
					</br>
					<div
						style="font-family: sung; position: absolute; left: 1050px; top: -90px; width: 300px; font-size: 20px;">SINCE
						- ${group.gr_date}</div>
					<div
						style="font-family: sung; position: absolute; left: 800px; top: -90px; width: 300px; font-size: 20px; color: white;">그룹장
						- ${group.gr_leader}</div>
					<marquee
						style="font-family: sung; position: absolute; left: 260px; margin-top: 10px; width: 500px; font-size: 20px; color: yellow;">${group.gr_content}</marquee>
					<div style="position: absolute; z-index: 100;">
						<form action="gr_join" method="post">
							<input type="hidden" name="uid" value="${uid}"> <input
								type="hidden" name="gr_name" value="${group.gr_name}">
							<c:if test="${mygroupJudge==null}">
								<div>
									<button id="joinBtn" class="w3-btn w3-red"
										style="text-shadow: 1px 1px 0 #444; font-family: nexon; font-size: 25px; position: absolute; left: 1220px; top: 20px;">그룹가입</button>
								</div>
							</c:if>

						</form>
					</div>
					<div style="position: absolute; z-index: 100;">
						<form action="createNotice" method="get">
							<input type="hidden" name="gr_id" value="${group.gr_id}" /> <input
								type="hidden" name="gr_name" value="${gr_name1}" />

							<input type="button" id="notice11" class="w3-btn w3-red"
								style="text-shadow: 1px 1px 0 #444; font-family: nexon; font-size: 25px; position: absolute; left: 1220px; top: 20px;" data-toggle="modal" data-target="#myModal" value="일정등록">
						</form>


					</div>
				</div>
			</div>
		</div>

	</header>

	<br>
	<!--=== Breadcrumbs ===-->
	<!--/breadcrumbs-->
	<!--=== End Breadcrumbs ===-->

	<!--=== Content Part ===-->



	<div class="container">
		<!----------------------------------------------------------------------------------------- 그룹상세 -->


		<!--=== Blog Posts ===-->
		<div class="">
			<div class="container"
				style="padding-top: 30px; padding-bottom: 60px; padding-left: 0px;">
				<div>
					<!-- Blog All Posts -->
					<div class="col-md-9">
						<!----- 그룹 캘린더 --------------------------------------------------------------------------->
						<div id="map11" class="col-md-13"
							style="z-index: 1; border: solied 2px; border-color: black;">
							<div class="news-v3 bg-color-white margin-bottom-60">
								<h2 style="font-family: sung;">#${group.gr_name}의 최근 라이딩</h2>
								<!-- 슬라이드 -->
								<a id="mm" href="#"><div id="map_div"></div></a>

								<input type="button" class="w3-btn w3-red" id="click1"
									style="font-family: sung;" value="1" />

								<button class="w3-btn w3-red" id="click2"
									style="font-family: sung;">2</button>
								<button class="w3-btn w3-red" id="click3"
									style="font-family: sung;">3</button>
								<button class="w3-btn w3-red" id="click4"
									style="font-family: sung;">4</button>
								<button class="w3-btn w3-red" id="click5"
									style="font-family: sung;">5</button>
								<!-- 슬라이드 -->
							</div>

						</div>
						<!----- 그룹 캘린더 --------------------------------------------------------------------------->
						<br>
						<h2 style="font-family: sung;">#게시판</h2>
						<!-- Blog Posts -->
						<div class="news-v3 bg-color-white margin-bottom-60">
							<table class="table table-bordered" id="read">
								<tr
									style="font-family: nexon; font-size: 20px; background-color: black;">
									<th class="table_cen">제목</th>
									<th class="table_cen">작성자</th>
									<th class="table_cen">날짜</th>
									<th class="table_cen">조회수</th>
									<!-- list_master -->
								</tr>


								<c:forEach items="${list_master}" var="GroupMaster">
									<tr>

										<td class="success" style="background-color: white;"><h4>
												<strong><a
													style="color: red; font-family: sung; text-align: center;"
													href="javascript:ViewLayer2();" id="a"
													class="${GroupMaster.writing_id}">공지 -
														${GroupMaster.writing_title}</a></strong>
											</h4></td>

										<td class="success" style="background-color: white;"><h4
												style="color: red; font-family: sung; text-align: center;">
												<strong>${GroupMaster.member_id}
											</h4> </strong></td>

										<td class="success" style="background-color: white;"><h4
												style="color: red; font-family: sung; text-align: center;">
												<strong>${GroupMaster.regist_date}
											</h4> </strong></td>
										<td class="success" style="background-color: white;"><h4
												style="color: red; font-family: sung; text-align: center;">
												<strong>${GroupMaster.view_Number}
											</h4> </strong></td>
									</tr>

								</c:forEach>
								<c:forEach items="${listAll}" var="GroupInfoBo">
									<tr>

										<td class=""><a href="javascript:ViewLayer2();" id="a"
											style="color: black; font-family: sung; text-align: center;"
											class="${GroupInfoBo.writing_id}">${GroupInfoBo.writing_title}</a></td>

										<td class="" style="font-family: sung; text-align: center;">${GroupInfoBo.member_id}</td>

										<td class="" style="font-family: sung; text-align: center;">${GroupInfoBo.regist_date}</td>
										<td class="" style="font-family: sung; text-align: center;">${GroupInfoBo.view_Number}</td>
									</tr>

								</c:forEach>
							</table>
							<c:if test="${memList!=null}">
								<br>
								<a href="javascript:ViewLayer();" class="w3-btn w3-black"
									style="float: right; font-family: nexon;">등록</a>
							</c:if>

<!-- 							<div class="w3-bar w3-xlarge" style="position: absolute; left: 300px;">
								<a href="#" class="w3-button">&laquo;</a> 
								<a href="#" class="w3-button">1</a> 
								<a href="#" class="w3-button">2</a> 
								<a href="#" class="w3-button">3</a> 
								<a href="#" class="w3-button">4</a>
								<a href="#" class="w3-button">&raquo;</a>
							</div> -->


							<div id="Pop"
								style="position: absolute; left: 15.5px; top: 600px; width: 835px; height: 454px; z-index: 2; display: none; background: black; color: #fff;">

								<a href="javascript:ViewClose();"> <img id="popLogo"
									src="./resources/img/cancelcel.png" /></a>
								<form method="post"
									action="groupInfo?gr_name=${group.gr_name}&gr_id=${group.gr_id}&uid=${uid}"
									style="margin: 3% 3%;">
									<p style="color: white; font-family: nexon; font-size: 20px;">작성자
										- ${uid}</p>

									<div class="form-group">
										<label
											style="color: white; font-family: nexon; font-size: 17px">제목</label>
										<input class="form-control" type="text" name="writing_title">
									</div>
									<div class="form-group">
										<label
											style="color: white; font-family: nexon; font-size: 17px">내용</label>
										<textarea class="form-control" rows="11" cols="132"
											style="color: black; resize: none;" name="writing_content"></textarea>
									</div>

									<input type="hidden" value="${uid}" name="member_id" />

									<!-- 인풋 타입 히든으로 안보이게 처리 -->

									<input class="w3-btn w3-white" type="submit" value="등록"
										style="float: right; font-family: nexon; font-size: 17px;">
								</form>
							</div>


							<div id="Pop_Re"
								style="position: absolute; left: -27.4px; top: 557px; width: 835px; height: 454px; z-index: 100 !important; display: none; margin: 5% 5%; background: white; color: #fff; border: solid 2px; border-color: black;">

								<a href="javascript:ViewClose2();"> <img id="popLogo"
									src="./resources/img/cancel.png" / style="color: white;"></a>
								<div style="margin: 3% 3%; color: white;">
									<div class="uid"
										style="display: none; font-family: nexon; font-size: 20px; color: black;">${uid}</div>
									<span
										style="font-family: nexon; font-size: 20px; color: black;">작성자
										-</span> <label id="re_id"
										style="font-size: 20px; font-family: nexon; color: black;"></label>
									<br /> <span
										style="font-family: nexon; font-size: 17px; color: black;">제목
										-</span> <label id="re_title"
										style="color: white; font-family: nexon; font-size: 17px"></label><br />
									<span
										style="font-family: nexon; font-size: 17px; color: black;">내용</span>
									<div id="re_content"
										style="height: 250px; background-color: #505457; font-family: nexon; font-size: 17px; border: solid 2px; border-color: black;"></div>
									<br /> <label id="re_date"
										style="font-family: nexon; font-size: 17px; color: black;">작성일
										- </label> <input type="hidden"
										style="font-family: nexon; font-size: 17px;" value=""
										id="re_writing_id" />
									<div id="die"></div>
									<!-- <input class="btn btn-default" type="submit" value="수정"> -->
									<!-- <input class="btn btn-default" type="submit" value="수정"

											style="float: right"> -->
									<!-- <button class="btn btn-default" id="Pop_Re_del"
											style="float: right">삭제</button> -->

								</div>
							</div>

							<div id="Pop_Re_Modify"
								style="position: absolute; left: 100px; top: 100px; width: 1000px; height: 600px; z-index: 100 !important; display: none; background: red; color: #fff;">
								<a href="javascript:ViewClose3();"> <img id="popLogo"
									src="./resources/img/cancelcel.png" /></a>
								<form method="post" action="groupInfo2" style="margin: 5% 5%;">
									<p style="color: white;">작성자 - ${uid}</p>

									<div class="form-group">
										<p style="color: white;">제목</p>
										<input class="form-control" type="text" name="writing_title"
											id="mo_title" value="">
									</div>

									<div class="form-group">
										<p style="color: white;">내용</p>
										<textarea class="form-control" rows="13" cols="132"
											style="color: black; resize: none;" name="writing_content"
											id="mo_content" value=""></textarea>
									</div>
									<input type="hidden" value="${group.gr_name}" name="gr_name" />
									<input type="hidden" value="${group.gr_id}" name="gr_id" /> <input
										type="hidden" value="${uid}" name="uid" /> <input
										type="hidden" id="re_writing_id2" value="" name="writing_id" />
									<!-- 인풋 타입 히든으로 안보이게 처리 -->

									<input class="btn btn-default" type="submit" value="수정"
										style="float: right">
								</form>
							</div>

						</div>
						<!-- End Blog Posts -->

						<!-- Blog Posts -->
						<div class="news-v3 bg-color-white margin-bottom-60">
							<a href="groupNotice?gr_name=${gr_name1}">그룹공지 확인</a>
						</div>
						<!-- End Blog Posts -->

						<!-- Blog Posts -->
						<div class="news-v3 bg-color-white margin-bottom-60"></div>
						<!-- End Blog Posts -->

						<!-- Blog Posts -->
						<div class="news-v3 bg-color-white margin-bottom-60"></div>

					</div>
					<!-- End Blog All Posts -->

					<!-- Blog Sidebar -->
					<div class="col-md-3">
						<!-- Contacts -->
						<div class="headline">
							<h2 style="font-family: sung;">#Profile</h2>
							<!-- 							private String fullName; //프로필 사진경로
								private String uid; //아이디
								private int riding_no; //라이딩한 횟수
								private double alldistance; //총거리
								private double avspeed; //평균속도  -->
						</div>

						<ul class="list-unstyled who margin-bottom-30">





							<c:if test="${listAll_li.riding_no !=null }">
								<li><a href="#"><i class=""></i> <br /> <img
										style="width: 258px; height: 250px;"
										src="/displayFile?fileName=${listAll_li.fullName}" /></a></li>
								<li class="profile"><a href="#" style="color: black;"><i
										class=""></i> 아이디 - ${listAll_li.uid}</a></li>
								<li class="profile"><a href="#" style="color: black;"><i
										class=""></i> <strong>참여횟수 - ${joinNo}</strong>
								</a></li>
								<li class="profile"><a href="#" style="color: black;"><i
										class=""></i> <strong>총거리 - ${listAll_li.alldistance}</strong>
								</a></li>
								<li class="profile"><a href="#" style="color: black;"><i
										class=""></i> <strong>평균 속도 - ${listAll_li.avgspeed}</strong>
								</a></li>
							</c:if>
							<c:if test="${listAll_li.riding_no ==null }">
								<li class="profile"><a href="#" style="color: black;"><i
										class=""></i> <br /> <img
										style="width: 200px; height: 200px; margin-left: 30px;"
										src="/displayFile?fileName=${mem_li}" /></a></li>
								<li class="profile"><a href="#" style="color: black;"><i
										class=""></i> 아이디 - ${uid}</a></li>
								<li class="profile"><a href="#" style="color: black;"><i
										class=""></i> 참여횟수 - 0 </a></li>
								<li class="profile"><a href="#" style="color: black;"><i
										class=""></i> 총거리 - 0 </a></li>
								<li class="profile"><a href="#" style="color: black;"><i
										class=""></i> 평균 속도 - 0 </a></li>
							</c:if>
						</ul>
						<br> <br>
						<!-- Business Hours -->
						<div class="headline" style="font-family: sung;">
							<h2>#Member List</h2>
						</div>
						<ul class="list-unstyled margin-bottom-30">
							<table class="table table-bordered">
								<c:forEach items="${listAll_mem}" var="mem">
									<tr>
										<td style="width: 30px"><img
											style="width: 40px; height: 40px;"
											src="/displayFile?fileName=${mem.fullname}" /></td>
										<td
											style="font-family: sung; font-size: 17px; margin-top: 7px;">${mem.uid}</td>
										<!-- 강퇴아이콘 -------------------------------------------->

										<c:if test="${uid == group.gr_leader}">
											<!-- 세션의 uid가 그룹장이 아니라면 아래 문구 추가 -->
											<td><c:choose>
													<c:when test="${mem.uid!=group.gr_leader}">
														<a href="#"> <img class="imgg" id="${mem.uid}"
															style="width: 25px; height: 25px;"
															src="./resources/img/cancel.png" />
														</a>
													</c:when>
												</c:choose></td>
										</c:if>
										<input type="hidden" id="gname" value="${group.gr_name}" />
										<!-- 삭제하기 위해서 그룹의 이름을 받아 gname에 저장함 -->
										<!-- 강퇴아이콘 -------------------------------------------->
									</tr>
								</c:forEach>
							</table>
						</ul>

						<!-- Why we are? -->

					</div>
					<!--/col-md-3-->
					<!-- End Blog Sidebar -->
				</div>
			</div>
		</div>


		<footer>
			<div class="row">
				<div class="col-lg-12" style="font-family: sung;">
					<p>Copyright &copy; GROUP RIDING Website 2017</p>
				</div>
			</div>
		</footer>
		<br> <br>


	</div>
	<script>
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

				});
	</script>




	<script>
		$(document)
				.ready(
						function() {
							var uid = $(".uid").text();
							var ele = "<button class='w3-btn w3-black' id='Pop_Re_mo'  style='float: right; font-family: nexon;font-size:17px;'>수정</button>"
									+ "<button class='w3-btn w3-black' id='Pop_Re_del' style='float: right;font-family: nexon;font-size:17px;'>삭제</button>";

							var formObj = $("form[role='form']");

							$("#gr_list").on("click", function() {
								formObj.attr("action", "groupList");
								formObj.attr("method", "get");
								formObj.submit();
							});
							/* ----------------------------------삭제버튼---------------------------------------- */
							$(".imgg").on("click", function() {
								var uid = $(this).attr("id");
								var gname = $("#gname").val();
								console.log(uid);
								console.log(gname);
								$.ajax({
									url : 'groupInfoMem_del',
									data : {
										uid : uid,
										gname : gname
									},
									type : 'post',
									success : function(data) {
										console.log(data);
										location.reload();
									}
								});
							});
							/* ----------------------------------삭제버튼---------------------------------------- */

							$("#read a").on(
									"click",
									function() {
										var writing_id = $(this).attr("class");
										$.ajax({
											url : 'groupInfo_re',
											data : {
												id : writing_id
											},
											type : 'post',
											success : function(data) {
												console.log(data);
												$("#re_id")
														.text(data.member_id);
												$("#re_title").text(
														data.writing_title);
												$("#re_content").text(
														data.writing_content);
												$("#re_date").text(
														data.regist_date);
												$("#re_writing_id").text(
														data.writing_id);
												$("#re_writing_id2").val(
														data.writing_id);
												if (uid == data.member_id) {
													$("#die").append(ele);
												} else {

												}
											}
										});
									});
							$("#Pop_Re").on("click", "#Pop_Re_del", function() {
								var writing_id = $("#re_writing_id").text();
								console.log(writing_id);
								$.ajax({
									url : 'groupInfo_del',
									data : {
										id : writing_id
									},
									type : 'post',
									success : function(data) {
										location.reload();
									}
								});

							});
							$("#Pop_Re").on(
									"click",
									"#Pop_Re_mo",
									function() {
										ViewLayer3();
										var writing_id = $("#re_writing_id")
												.text();
										$.ajax({
											url : 'groupInfo_re',
											data : {
												id : writing_id
											},
											type : 'post',
											success : function(data) {
												console.log(data);
												$("#mo_title").val(
														data.writing_title);
												$("#mo_content").val(
														data.writing_content);
											}
										});
									});

						});
	</script>

	<!--=== Footer Version 1 ===-->



	<!--/wrapper-->



	<script>
		$(document)
				.ready(
						function() {
							var uid = $(".uid").text();
							var ele = "<button class='w3-btn w3-black' id='Pop_Re_mo'  style='float: right; font-family: nexon;font-size:17px;'>수정</button>"
									+ "<button class='w3-btn w3-black' id='Pop_Re_del' style='float: right;font-family: nexon;font-size:17px;'>삭제</button>";

							var formObj = $("form[role='form']");

							$("#gr_list").on("click", function() {
								formObj.attr("action", "groupList");
								formObj.attr("method", "get");
								formObj.submit();
							});
							/* ----------------------------------삭제버튼---------------------------------------- */
							$(".imgg").on("click", function() {
								var uid = $(this).attr("id");
								var gname = $("#gname").val();
								console.log(uid);
								console.log(gname);
								$.ajax({
									url : 'groupInfoMem_del',
									data : {
										uid : uid,
										gname : gname
									},
									type : 'post',
									success : function(data) {
										console.log(data);
										location.reload();
									}
								});
							});
							/* ----------------------------------삭제버튼---------------------------------------- */

							$("#read a").on(
									"click",
									function() {
										var writing_id = $(this).attr("class");
										$.ajax({
											url : 'groupInfo_re',
											data : {
												id : writing_id
											},
											type : 'post',
											success : function(data) {
												console.log(data);
												$("#re_id")
														.text(data.member_id);
												$("#re_title").text(
														data.writing_title);
												$("#re_content").text(
														data.writing_content);
												$("#re_date").text(
														data.regist_date);
												$("#re_writing_id").text(
														data.writing_id);
												$("#re_writing_id2").val(
														data.writing_id);
												if (uid == data.member_id) {
													$("#die").append(ele);
												} else {

												}
											}
										});
									});
							$("#Pop_Re").on("click", "#Pop_Re_del", function() {
								var writing_id = $("#re_writing_id").text();
								console.log(writing_id);
								$.ajax({
									url : 'groupInfo_del',
									data : {
										id : writing_id
									},
									type : 'post',
									success : function(data) {
										location.reload();
									}
								});

							});
							$("#Pop_Re").on(
									"click",
									"#Pop_Re_mo",
									function() {
										ViewLayer3();
										var writing_id = $("#re_writing_id")
												.text();
										$.ajax({
											url : 'groupInfo_re',
											data : {
												id : writing_id
											},
											type : 'post',
											success : function(data) {
												console.log(data);
												$("#mo_title").val(
														data.writing_title);
												$("#mo_content").val(
														data.writing_content);
											}
										});
									});

						});
	</script>

	<!--=== Footer Version 1 ===-->


	<!--/wrapper-->



	<script type="text/javascript">
		function initMap() {
			var map = new google.maps.Map(document.getElementById('map'), {
				center : {
					lat : -34.397,
					lng : 150.644
				},
				zoom : 15
			});
			var infoWindow = new google.maps.InfoWindow({
				map : map
			});

			// Try HTML5 geolocation.
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					var pos = {
						lat : position.coords.latitude,
						lng : position.coords.longitude
					};

					infoWindow.setPosition(pos);
					infoWindow.setContent('Location found.');
					map.setCenter(pos);
				}, function() {
					handleLocationError(true, infoWindow, map.getCenter());
				});
			} else {
				// Browser doesn't support Geolocation
				handleLocationError(false, infoWindow, map.getCenter());
			}
		}

		function handleLocationError(browserHasGeolocation, infoWindow, pos) {
			infoWindow.setPosition(pos);
			infoWindow
					.setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.'
							: 'Error: Your browser doesn\'t support geolocation.');
		}
	</script>
	<script>
	<!-- 그룹장 체크2 -->
		var leader = "${leader}";

		if (leader == "") {
			$("#notice11").hide();
		} else {
			$("#notice11").show();
		}
	</script>

	<!-- jQuery -->
	<script src="./resources/js2/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="./resources/js2/bootstrap.min.js"></script>

	<script type="text/javascript" src="./resources/js/upload.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	<!--[if lt IE 9]>

	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->



	<!-- 최근 라이딩 -->
	<script type="text/javascript"
		src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>

	<script>
		var startPoint = [];
		var endPoint = [];
		var notice_title = [];
		var ridingDate = [];

		map = new Tmap.Map({
			div : 'map_div',
			width : '836px',
			height : '450px',
			transitionEffect : "resize",
			animation : true
		});
		map.setCenter(new Tmap.LonLat(14315520.90430, 4283115.74626), 11);
		map.addControl(new Tmap.Control.KeyboardDefaults());
		map.addControl(new Tmap.Control.MousePosition());

		<c:forEach items="${noticelist}" var="i" varStatus="count">
		startPoint.push("${i.start_point}");
		endPoint.push("${i.end_point}");
		notice_title
				.push("<span class='a${count.count}'>&nbsp;&nbsp;${i.notice_title}</span>");
		ridingDate
				.push("<span id='a${count.count}'>${i.ridingDate}&nbsp;&nbsp;</span>");
		</c:forEach>

<<<<<<< HEAD
		$(document).ready(function() {
			if (startPoint[0] != null) {
				searchRoute(startPoint[0], endPoint[0]);
				$("#mm").prepend(notice_title[0]);
				$("#mm").prepend(ridingDate[0]);

				$(".a2").hide();
				$(".a3").hide();
				$(".a4").hide();
				$(".a5").hide();

				$("#a2").hide();
				$("#a3").hide();
				$("#a4").hide();
				$("#a5").hide();
			} else {
				alert("최근 없음!");
			}
		});

		$("#click2").on("click", function() {
			if (startPoint[1] != null) {
				searchRoute(startPoint[1], endPoint[1]);
				$("#mm").prepend(notice_title[1]);
				$("#mm").prepend(ridingDate[1]);

				$(".a1").hide();
				$(".a3").hide();
				$(".a4").hide();
				$(".a5").hide();

				$("#a1").hide();
				$("#a3").hide();
				$("#a4").hide();
				$("#a5").hide();
			} else {
				alert("최근 없음!");
			}
		});

		$("#click3").on("click", function() {
			if (startPoint[2] != null) {
				searchRoute(startPoint[2], endPoint[2]);
				$("#mm").prepend(notice_title[2]);
				$("#mm").prepend(ridingDate[2]);

				$(".a1").hide();
				$(".a2").hide();
				$(".a4").hide();
				$(".a5").hide();

				$("#a1").hide();
				$("#a2").hide();
				$("#a4").hide();
				$("#a5").hide();
			} else {
				alert("최근 없음!");
			}
		});

		$("#click4").on("click", function() {
			if (startPoint[3] != null) {
				searchRoute(startPoint[3], endPoint[3]);
				$("#mm").prepend(notice_title[3]);
				$("#mm").prepend(ridingDate[3]);

				$(".a1").hide();
				$(".a2").hide();
				$(".a3").hide();
				$(".a5").hide();

				$("#a1").hide();
				$("#a2").hide();
				$("#a3").hide();
				$("#a5").hide();
			} else {
				alert("최근 없음!");
			}
		});

		$("#click5").on("click", function() {
			if (startPoint[4] != null) {
				searchRoute(startPoint[4], endPoint[4]);
				$("#mm").prepend(notice_title[4]);
				$("#mm").prepend(ridingDate[4]);

				$(".a1").hide();
				$(".a2").hide();
				$(".a3").hide();
				$(".a4").hide();

				$("#a1").hide();
				$("#a2").hide();
				$("#a3").hide();
				$("#a4").hide();
			} else {
				alert("최근 없음!");
			}
		});

		//경로 정보 로드
		function searchRoute(startPoint, endPoint) {

			
			
			var start = startPoint.split(","); 
		
			var stop = endPoint.split(","); // 경도 자르기
			

			var routeFormat = new Tmap.Format.KML({
				extractStyles : true,
				extractAttributes : true
			});
			var startX = new Object(start[0]);
			var startY = new Object(start[1]);
			var endX = new Object(stop[0])// 14136027.789587;
			var endY = new Object(stop[1])// 4517572.4745242;
			var urlStr = "https://apis.skplanetx.com/tmap/routes?version=1&format=xml";
			urlStr += "&startX=" + startX;
			urlStr += "&startY=" + startY;
			urlStr += "&endX=" + endX;
			urlStr += "&endY=" + endY;
			urlStr += "&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b";
			var prtcl = new Tmap.Protocol.HTTP({
				url : urlStr,
				format : routeFormat
=======

		
			$(document).ready(function(){
				$("#click1").val("최근 라이딩이 없음!");
				$("#click2").hide();
				$("#click3").hide();
				$("#click4").hide();
				$("#click5").hide();
				
				if(startPoint[0] != null) {	
					$("#click1").val("1");
					searchRoute(startPoint[0],endPoint[0]);
					$("#mm").prepend(notice_title[0]);
					$("#mm").prepend(ridingDate[0]);
					
					$(".a2").hide();
					$(".a3").hide();
					$(".a4").hide();
					$(".a5").hide();
					
					$("#a2").hide();
					$("#a3").hide();
					$("#a4").hide();
					$("#a5").hide();
				} 
				
				if(startPoint[1] != null) {
					$("#click2").show();
				} 
				if(startPoint[2] != null) {
					$("#click3").show();
				} 
				if(startPoint[3] != null) {
					$("#click4").show();
				} 
				if(startPoint[4] != null) {
					$("#click5").show();
				}
			});
			
			$("#click1").on("click", function(){
				if(startPoint[0] != null) {	
					searchRoute(startPoint[0],endPoint[0]);
					$("#mm").prepend(notice_title[0]);
					$("#mm").prepend(ridingDate[0]);
					
					$(".a2").hide();
					$(".a3").hide();
					$(".a4").hide();
					$(".a5").hide();
					
					$("#a2").hide();
					$("#a3").hide();
					$("#a4").hide();
					$("#a5").hide();
				} else {
					alert("최근 없음!");
				}
			});
		
			$("#click2").on("click", function(){
				if(startPoint[1] != null) {	
					searchRoute(startPoint[1],endPoint[1]);
					$("#mm").prepend(notice_title[1]);
					$("#mm").prepend(ridingDate[1]);
					
					$(".a1").hide();
					$(".a3").hide();
					$(".a4").hide();
					$(".a5").hide();
					
					$("#a1").hide();
					$("#a3").hide();
					$("#a4").hide();
					$("#a5").hide();
				} else {
					alert("최근 없음!");
				}
>>>>>>> 817e0a157d25c2e6cb9ce2de1861c66141fb3118
			});
			
			$("#click3").on("click", function(){
				if(startPoint[2] != null) {	
					searchRoute(startPoint[2],endPoint[2]);
					$("#mm").prepend(notice_title[2]);
					$("#mm").prepend(ridingDate[2]);
					
					$(".a1").hide();
					$(".a2").hide();
					$(".a4").hide();
					$(".a5").hide();
					
					$("#a1").hide();
					$("#a2").hide();
					$("#a4").hide();
					$("#a5").hide();
				} else {
					alert("최근 없음!");
				}
			});
			
			$("#click4").on("click", function(){
				if(startPoint[3] != null) {	
					searchRoute(startPoint[3],endPoint[3]);
					$("#mm").prepend(notice_title[3]);
					$("#mm").prepend(ridingDate[3]);
					
					$(".a1").hide();
					$(".a2").hide();
					$(".a3").hide();
					$(".a5").hide();
					
					$("#a1").hide();
					$("#a2").hide();
					$("#a3").hide();
					$("#a5").hide();
				} else {
					alert("최근 없음!");
				}
			});
			
			$("#click5").on("click", function(){
				if(startPoint[4] != null) {	
					searchRoute(startPoint[4],endPoint[4]);
					$("#mm").prepend(notice_title[4]);
					$("#mm").prepend(ridingDate[4]);
					
					$(".a1").hide();
					$(".a2").hide();
					$(".a3").hide();
					$(".a4").hide();
					
					$("#a1").hide();
					$("#a2").hide();
					$("#a3").hide();
					$("#a4").hide();
				} else {
					alert("최근 없음!");
				}
			});
	
	
		
	
		
		//경로 정보 로드
		function searchRoute(startPoint,endPoint){
			
			var startx = new String(startPoint).substr(4, 17);   // 경도 자르기
			var starty = new String(startPoint).substr(26);   // 경도 자르기
              
			var stopx = new String(endPoint).substr(4, 17);   // 경도 자르기
            var stopy = new String(endPoint).substr(26);   // 경도 자르기
                

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
		    routeLayer.events.register("featuresadded", routeLayer, onDrawnFeatures1);
		    map.addLayer(routeLayer);
		}
		
		//경로 그리기 후 해당영역으로 줌
		function onDrawnFeatures1(e){
		    map.zoomToExtent(this.getDataExtent());
		}	
</script>




<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">일정 등록</h4>
      </div>
      
     <form action="createNotice" method="post">
      <div class="modal-body">
      	<div id="map_div1"></div>
		공지제목 : <input type="text" name="notice_title"> <br>
		라이딩 날짜 : <input type="date" name="ridingDate" id="ridingDate">	<br>
		라이딩 시간 : <input type="time" name="ridingTime">	<br>
		준비물 : <input type="text" name="material">	<br>
		출발지 : <input type="text" id="starting"> <input type="button" id="start" value="검색">	<br>
		도착지 : <input type="text" id="ending">	<input type="button" id="stopp" value="검색">	<br>
		<input type="button" id="gogo" value="경유 검색">
		<input type="button" onClick="window.location.reload()" value="취소">
		
		<div>
			<ul id="ull">
				<li id="li"></li>
			</ul>
		</div>
	
		<div>
			<ul id="ull1">
				<li id="li1"></li>
			</ul>
		</div>
		
		<input type="hidden" name="gr_id" value="${gr_id}"/>
		<input type="hidden" name="uid" value="${uid}"/>
		<input type="hidden" name="start_point" id="start_point" value=""> <br>
		<input type="hidden" name="end_point" id="end_point" value="">	<br>
		<input type="hidden" name="gr_name" value="${gr_name1}"><br>
		<input type="hidden" id="startCoordX" /> 	<br>
		<input type="hidden" id="startCoordY" />	<br>
		<input type="hidden" id="endCoordX" />		<br>
		<input type="hidden" id="endCoordY" />		<br>
      </div>
      
      <div class="modal-footer">
      	<button type="submit" class="btn btn-default">등록</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
     </form>
     
    </div>

  </div>
</div>


<script>

			var map1;

			map1 = new Tmap.Map({div:'map_div1',
		        width:'50%', 
		        height:'400px',
		        transitionEffect:"resize",
		        animation:true
		    }); 
				map1.setCenter(new Tmap.LonLat(14315520.90430,4283115.74626), 11);
				// map.addControl(new Tmap.Control.KeyboardDefaults());
				map1.addControl(new Tmap.Control.MousePosition());
				// searchRoute();
					
					
////////////////
///// POI //////
////////////////				                 
				var markerLayer;
				var tdata;
				var name = '';
	    		
				addMarkerLayer();

				var clcl;	// 출발지 or 도착지
	    		$("#start").on("click", function(){
	    			clcl = true;

	    			$("#ull").empty();	// 태그제거
	    			$("#ull1").empty();	// 태그제거
	    			var starting = $("#starting").val();

	    			searchPOI(starting);	// 검색
	    			
	    			markerLayer.clearMarkers();	// 마커 초기화

	    			getDataFromLonLat(this.lonlat);	// 주소

	    		});

	    		$("#stopp").on("click", function(){
					clcl = false;

	    			$("#ull").empty();	// 태그제거
	    			$("#ull1").empty();	// 태그제거
	    			var ending = $("#ending").val();

	    			searchPOI(ending);	// 검색
	    			
	    			markerLayer.clearMarkers();	// 마커 초기화

	    			getDataFromLonLat(this.lonlat);	// 주소

	    		});

	    		
	    		function addMarkerLayer(){
				    markerLayer = new Tmap.Layer.Markers("marker");
				    map1.addLayer(markerLayer);
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
				    var center = map1.getCenter();
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
				    map1.zoomToExtent(markerLayer.getDataExtent());
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
					            $("#ull").append("<li>" + name + "</li>" 
					            				+ "<input type='hidden' value='" + lon + "'>"
					            				+ "<input type='hidden' value='" + lat + "'>");
 							} else if (clcl == false) {
 								$("#ull1").append("<li>" + name + "</li>" 
					            				+ "<input type='hidden' value='" + lon + "'>"
					            				+ "<input type='hidden' value='" + lat + "'>");
 							}

				            addMarker(options); // all 마커
				        });
				    }else {
				        alert('검색결과가 없습니다.');
				    }
				    map1.zoomToExtent(markerLayer.getDataExtent());
				    tdata.events.unregister("onComplete", tdata, onCompleteTDataLonLat);
				}


				$("#ull").on("click", "li", function() {

					alert($(this).next().val() + ", " +  $(this).next().next().val());

					$("#startCoordX").val($(this).next().val());
					$("#startCoordY").val($(this).next().next().val());
					
					$("#start_point").val("lon=" + $(this).next().val() + ",lat=" +  $(this).next().next().val());			
				});

				$("#ull1").on("click", "li", function() {
					
					alert($(this).next().val() + ", " +  $(this).next().next().val());
					
					$("#endCoordX").val($(this).next().val());
					$("#endCoordY").val($(this).next().next().val());
					
					$("#end_point").val("lon=" + $(this).next().val() + ",lat=" +  $(this).next().next().val());
					
				});
				
				 $("#gogo").on("click", function(){
					 	poiRoute();
			    });
				 
				//경로 정보 로드
					function poiRoute(){

						var startx = $("#startCoordX").val();   // 경도 자르기
						var starty = $("#startCoordY").val();   // 경도 자르기
						
						var stopx = $("#endCoordX").val();   // 경도 자르기
						var stopy = $("#endCoordY").val();   // 경도 자르기
						
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
						map1.addLayer(routeLayer);
					}
				
					//경로 그리기 후 해당영역으로 줌
					function onDrawnFeatures(e){
					    map1.zoomToExtent(this.getDataExtent());
					}	
				/////////////////////////
				// racePoint
				/////////////////////////
					var pr_3857 = new Tmap.Projection("EPSG:3857");//tmap 좌표체계
	         		var pr_4326 = new Tmap.Projection("EPSG:4326");//geolocation 좌표체계

	         		function get3857LonLat(coordX, coordY) {
	               		return new Tmap.LonLat(coordX, coordY).transform(pr_4326, pr_3857);
	           		}

	           		var markerLayer11 = new Tmap.Layer.Markers("MarkerLayer");
	           		map1.addLayer(markerLayer11);
	           		
	           	 $.ajax({
                	 url:"getRacePoint",
                	 type:"get",
                	 success:function(data){
                		 console.log(data);
                	 var racepoint=[];
                	 
                	 for(var i=0;i<data.length;i++)
                		 {
                		   racepoint.push(data[i].start_location);
                		   racepoint.push(data[i].stop_location);
                		 }
                	 
                	 
                	 for(var i=0;i<racepoint.length;i++)
                		 {
                		 
                		 var size = new Tmap.Size(24,38);
                         var offset = new Tmap.Pixel(-(size.w/2), -(size.h/2));
                         var icon = new Tmap.Icon('./resources/img/racepoint.png', size, offset);
                		 
                		   var location=racepoint[i].split(",");
                		           		   
                		   var tlocation=get3857LonLat(parseFloat(location[0]), parseFloat(location[1]));
                		                     
                           var marker11 = new Tmap.Markers(tlocation, icon);
                            
                           markerLayer11.addMarker(marker11);
       		   
                		 }
                	 
                	 }	// success:function(data){
           	 
                 });	// ajax
				
		
	</script>
>>>>>>> e1591ff61afa1bda8434a28de54edcf57258b9e9


</body>
</html>