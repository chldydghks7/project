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

<!-- Favicon -->
<link rel="shortcut icon" href="./resources/favicon.ico">


<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="./resources/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet"
	href="./resources/assets/css/headers/header-default.css">
<link rel="stylesheet"
	href="./resources/assets/css/footers/footer-v1.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="./resources/assets/plugins/animate.css">
<link rel="stylesheet"
	href="./resources/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="./resources/assets/plugins/font-awesome/css/font-awesome.min.css">

<!-- CSS Page Style -->
<link rel="stylesheet"
	href="./resources/assets/css/pages/page_pricing.css">

<!-- CSS Theme -->
<link rel="stylesheet"
	href="./resources/assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet"
	href="./resources/assets/css/theme-skins/dark.css">

<!-- CSS Customization -->
<link rel="stylesheet" href="./resources/assets/css/custom.css">

<!-- 슬라이드 -->
<link href="./resources/slider/src/style11.css" rel="stylesheet" type="text/css">

</head>
<style>
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

#calendar {
	width: 800px;
	margin: 0 auto;
}
</style>
<body>
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
	<div class="wrapper">
		<!--=== Header ===-->
		<div class="header">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="mainlogin"> <img
					src="./resources/img/logo(b).png" alt="Logo">
				</a>
				<!-- End Logo -->

				<!-- Topbar -->
				<div class="topbar">
					<ul class="loginbar pull-right">
						<li class="topbar-devider"></li>
						<li><a href="page_login.html">Login</a></li>
					</ul>
				</div>
				<!-- End Topbar -->

				<!-- Toggle get grouped for better mobile display -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="fa fa-bars"></span>
				</button>
				<!-- End Toggle -->
			</div>
			<!--/end container-->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
				<div class="container">
					<ul class="nav navbar-nav">
						<!-- Home -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> Home </a> <!-- End Home -->

							<!-- Pages -->
						<li class="dropdown active"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> Group </a>
							<ul class="dropdown-menu">
								<!-- About Pages -->
								<li class="dropdown-submenu"><a href="groupList">GroupList</a>
								</li>
								<!-- End About Pages -->

								<!-- Service Pages -->
								<li class="dropdown-submenu"><a href="groupRank">Ranking</a>
								</li>
								<!-- End Service Pages -->
							</ul></li>
						<!-- End Pages -->

						<!-- Blog -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> Info </a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu"><a href="calendar?uid=${uid}">Calendar</a>
								</li>
								<li class="dropdown-submenu"><a href="Ridingdata">Riding
										Data</a></li>
							</ul></li>
						<!-- End Blog -->

						<!-- Portfolio -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> Sharing </a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu"><a href="sharing">Sharing</a>
								</li>
							</ul></li>
						<!-- End Portfolio -->

						<!-- Features -->
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> Hot Place </a>
							<ul class="dropdown-menu">
								<li class="dropdown-submenu"><a href="hotPlaceMap">Hot
										Place</a></li>
								<!-- <li class="dropdown-submenu"><a href="restaurantList">Restaurant</a>
								</li>
								<li><a href="hotelList">Hotel</a></li> -->
							</ul></li>
						<!-- End Features -->

						<!-- Search Block -->
						<li><i class="search fa fa-search search-btn"></i>
							<div class="search-open">
								<div class="input-group animated fadeInDown">
									<input type="text" class="form-control" placeholder="Search">
									<span class="input-group-btn">
										<button class="btn-u" type="button">Go</button>
									</span>
								</div>
							</div></li>
						<!-- End Search Block -->
					</ul>
				</div>
				<!--/end container-->
			</div>
			<!--/navbar-collapse-->
		</div>
		<!--=== End Header ===-->

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">Group List</h1>
				<ul class="pull-right breadcrumb">
					<li class="active"><a href="#">내 그룹</a></li>
					<li><a href="groupListOther">그룹 전체</a></li>
				</ul>


			</div>
		</div>
		<!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->



		<div class="container content">
			<!----------------------------------------------------------------------------------------- 그룹상세 -->

			<div class="table-search-v2" style="padding: 0px 0px 0px 10px;">
				<div class="table-responsive">
					<table class="table table-bordered table-striped"
						style="text-align: center;">
						<thead>
							<tr style="text-align: center;">
								<th>Logo</th>
								<th class="hidden-sm">그룹명</th>
								<th>그룹장</th>
								<th>그룹소개</th>
								<th>그룹인원</th>
								<th>그룹생성일</th>
								<th>그룹가입</th>
								<th>공지등록</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td><img src="/displayFile?fileName=${group.gr_icon}" /></td>
								<td>${group.gr_name}</td>
								<td>${group.gr_leader}</td>
								<td>${group.gr_content}</td>
								<td>${people}명</td>
								<td>${group.gr_date}</td>
								<td><form action="gr_join" method="post">
										<input type="hidden" name="uid" value="${uid}"> <input
											type="hidden" name="gr_name" value="${group.gr_name}">
										<c:if test="${mygroupJudge==null}">
											<div>
												<button id="joinBtn">그룹가입</button>
											</div>
										</c:if>

									</form></td>
								<td><form action="createNotice" method="get">
										<input type="hidden" name="gr_id" value="${group.gr_id}" /> <input
											type="hidden" name="gr_name" value="${gr_name1}" />
										<button type="submit" id="notice11">공지등록</button>
									</form></td>

							</tr>

						</tbody>
					</table>
				</div>
			</div>
			<!--=== Blog Posts ===-->
			<div class="">
				<div class="container"
					style="padding-top: 30px; padding-bottom: 60px; padding-left: 0px;">
					<div>
						<!-- Blog All Posts -->
						<div class="col-md-9">
							<!----- 그룹 캘린더 --------------------------------------------------------------------------->
							<div class="col-md-13">
								<div class="news-v3 bg-color-white margin-bottom-60">
									<h2>${group.gr_name}의최근라이딩</h2>
									<!-- 슬라이드 -->
									<div class="content" style="width:600px;height:450px;overflow:hidden; margin:50px auto;">
											<div id="slider">
												<a href="#"><div id="map" style="width:600px;height:450px;" class="map margin-bottom-50"></div></a>
												<a href="#"><img src="./resources/slider/img/2.jpg"/></a>
												<a href="#"><img src="./resources/slider/img/3.jpg"/></a>
												<a href="#"><img src="./resources/slider/img/4.jpg"/></a>
												<a href="#"><img src="./resources/slider/img/5.jpg"/></a>
											</div>
									</div>
									<!-- 슬라이드 -->
								</div>

							</div>
							<!----- 그룹 캘린더 --------------------------------------------------------------------------->

							<!-- Blog Posts -->
							<div class="news-v3 bg-color-white margin-bottom-60">
								<table class="table table-bordered" id="read">
									<tr>
										<th>제목</th>
										<th>작성자</th>
										<th>날짜</th>
										<th>조회수</th><!-- list_master -->
									</tr>
									
									
									<c:forEach items="${list_master}" var="GroupMaster">
										<tr>

											<td class="success"><h4><strong><a  style="color:red;" href="javascript:ViewLayer2();"
												id="a" class="${GroupMaster.writing_id}">${GroupMaster.writing_title}</a></strong></h4></td>

											<td class="success"><h4 style="color:red;"><strong>${GroupMaster.member_id}</h4></strong></td>

											<td class="success"><h4 style="color:red;"><strong>${GroupMaster.regist_date}</h4></strong></td>
											<td class="success"><h4 style="color:red;"><strong>${GroupMaster.view_Number}</h4></strong></td>
										</tr>

									</c:forEach>
									<c:forEach items="${listAll}" var="GroupInfoBo">
										<tr>

											<td class=""><a href="javascript:ViewLayer2();"
												id="a" class="${GroupInfoBo.writing_id}">${GroupInfoBo.writing_title}</a></td>

											<td class="">${GroupInfoBo.member_id}</td>

											<td class="">${GroupInfoBo.regist_date}</td>
											<td class="">${GroupInfoBo.view_Number}</td>
										</tr>

									</c:forEach>
								</table>
								<c:if test="${memList!=null}">
								<a href="javascript:ViewLayer();">등록</a>
								</c:if>
								
								<div id="Pop"
									style="position: absolute; left: 100px; top: 100px; width: 1000px; height: 600px; z-index: 100 !important; display: none; background: #3d3d3d; color: #fff;">
									<a href="javascript:ViewClose();"> <img id="popLogo"
										src="./resources/img/cancelcel.png" /></a>
									<form method="post"
										action="groupInfo?gr_name=${group.gr_name}&gr_id=${group.gr_id}&uid=${uid}"
										style="margin: 5% 5%;">
										<label style="color:white;">작성자 - ${uid}</label>
										<div class="form-group">
											<label style="color:white;">제목</label>
											<input class="form-control" type="text" name="writing_title">
										</div>
										<div class="form-group">
											<label style="color:white;">내용</label>
											<textarea class="form-control" rows="13" cols="132"
												style="color: black; resize: none;" name="writing_content"></textarea>
										</div>

										<input type="hidden" value="${uid}" name="member_id" />

										<!-- 인풋 타입 히든으로 안보이게 처리 -->

										<input class="btn btn-default" type="submit" value="등록">
									</form>
								</div>


								<div id="Pop_Re"
									style="position: absolute; left: 100px; top: 100px; width: 1000px; height: 600px; z-index: 100 !important; display: none; margin: 5% 5%; background: #101010; color: #fff;">
									<a href="javascript:ViewClose2();"> <img id="popLogo"
										src="./resources/img/cancelcel.png" /></a>
									<div style="margin: 5% 5%; color:white;">
										<div class="uid" style="display: none;">${uid}</div>
										작성자 - <label id="re_id"></label><br /> 제목 - <label
											id="re_title"></label><br /> 내용
										<div id="re_content"
											style="height: 330px; background-color: #505457;"></div>
										<br />
										<label id="re_date">작성일 - </label> <input type="hidden"
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
									style="position: absolute; left: 100px; top: 100px; width: 1000px; height: 600px; z-index:100 !important; display: none; background: red; color: #fff;">
									<a href="javascript:ViewClose3();"> <img id="popLogo"
										src="./resources/img/cancelcel.png" /></a>
									<form method="post"
										action="groupInfo2"
										style="margin: 5% 5%;">
										<p style="color:white;">작성자 - ${uid}</p>
										
										<div class="form-group">
											<p style="color:white;">제목</p>
											<input class="form-control" type="text" name="writing_title" id="mo_title" value="">
										</div>
										
										<div class="form-group">
											<p style="color:white;">내용</p>
											<textarea class="form-control" rows="13" cols="132"
												style="color: black; resize: none;" name="writing_content" id="mo_content" value=""></textarea>
										</div>
										<input type="hidden" value="${group.gr_name}" name="gr_name"/>
										<input type="hidden" value="${group.gr_id}" name="gr_id"/>
										<input type="hidden" value="${uid}" name="uid"/>
										<input type="hidden" id="re_writing_id2" value="" name="writing_id"/>
										<!-- 인풋 타입 히든으로 안보이게 처리 -->

										<input class="btn btn-default" type="submit" value="수정" style="float: right">
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
							<div class="news-v3 bg-color-white margin-bottom-60">sss</div>
							<!-- End Blog Posts -->

							<!-- Blog Posts -->
							<div class="news-v3 bg-color-white margin-bottom-60">sss</div>

						</div>
						<!-- End Blog All Posts -->

						<!-- Blog Sidebar -->
						<div class="col-md-3">
							<!-- Contacts -->
							<div class="headline">
								<h2>Profile</h2>
								<!-- 							private String fullName; //프로필 사진경로
								private String uid; //아이디
								private int riding_no; //라이딩한 횟수
								private double alldistance; //총거리
								private double avspeed; //평균속도  -->
							</div>

							<ul class="list-unstyled who margin-bottom-30">
							
									
									
								
								
								<c:if test="${listAll_li.riding_no !=null }">
									<li><a href="#"><i class=""></i> <br />
										<img style="width: 200px; height: 200px; margin-left: 30px;"
											src="/displayFile?fileName=${listAll_li.fullName}" /></a></li>
									<li><a href="#"><i class=""></i> <strong>아이디
												- ${listAll_li.uid}</strong></a></li>
									<li><a href="#"><i class=""></i> <strong>참여횟수
												- ${listAll_li.riding_no}</strong> </a></li>
									<li><a href="#"><i class=""></i> <strong>총거리
												- ${listAll_li.alldistance}</strong> </a></li>
									<li><a href="#"><i class=""></i> <strong>평균
												속도 - ${listAll_li.avgspeed}</strong> </a></li>
								</c:if>
								<c:if test="${listAll_li.riding_no ==null }">
									<li><a href="#"><i class=""></i> <br />
										<img style="width: 200px; height: 200px; margin-left: 30px;"
											src="/displayFile?fileName=${mem_li}" /></a></li>
									<li><a href="#"><i class=""></i> <strong>아이디
												- ${uid}</strong></a></li>
									<li><a href="#"><i class=""></i> <strong>참여횟수
												- 0</strong> </a></li>
									<li><a href="#"><i class=""></i> <strong>총거리
												- 0</strong> </a></li>
									<li><a href="#"><i class=""></i> <strong>평균
												속도 - 0</strong> </a></li>
								</c:if>
							</ul>

							<!-- Business Hours -->
							<div class="headline">
								<h2>Member List</h2>
							</div>
							<ul class="list-unstyled margin-bottom-30">
								<table class="table table-bordered">
									<c:forEach items="${listAll_mem}" var="mem">
										<tr>
											<td style="width:30px"><img style="width:30px;height:30px;"src="/displayFile?fileName=${mem.fullname}"/></td>
											<td>${mem.uid}</td>
							<!-- 강퇴아이콘 -------------------------------------------->
							
										<c:if test="${uid == group.gr_leader}"> <!-- 세션의 uid가 그룹장이 아니라면 아래 문구 추가 -->
											<td>
												<c:choose>
													<c:when test="${mem.uid!=group.gr_leader}">
														<a href="#">
															<img  class="imgg" id="${mem.uid}" style="width: 15px;height: 15px;" src="./resources/img/cancel.png" />						
														</a>
													</c:when>
												</c:choose>
											</td>
										</c:if>
										
										
										
										
										
										<input type="hidden" id="gname" value="${group.gr_name}"/> <!-- 삭제하기 위해서 그룹의 이름을 받아 gname에 저장함 -->
							<!-- 강퇴아이콘 -------------------------------------------->
										</tr>
									</c:forEach>
								</table>
							</ul>

							<!-- Why we are? -->
							<div class="headline">
								<h2>ETC</h2>
							</div>
							<p>At vero eos et accusamus et iusto odio dignissimos ducimus
								qui blanditiis praesentium voluptatum.</p>
							<ul class="list-unstyled">
								<li><i class="fa fa-check color-green"></i> Odio
									dignissimos ducimus</li>
								<li><i class="fa fa-check color-green"></i> Blanditiis
									praesentium volup</li>
								<li><i class="fa fa-check color-green"></i> Eos et
									accusamus</li>
							</ul>
						</div>
						<!--/col-md-3-->
						<!-- End Blog Sidebar -->
					</div>
				</div>
			</div>

		</div>





		<script>
			$(document).ready(function() {
				var uid = $(".uid").text(); 
				var ele = "<button class='btn btn-default vbtn' id='Pop_Re_mo'  style='float: right'>수정</button>"	 
				        + "<button class='btn btn-default vbtn' id='Pop_Re_del' style='float: right'>삭제</button>";
				
				var formObj = $("form[role='form']");

				$("#gr_list").on("click", function() {
					formObj.attr("action", "groupList");
					formObj.attr("method", "get");
					formObj.submit();
				});
			/* ----------------------------------삭제버튼---------------------------------------- */
				$(".imgg").on("click",function(){
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
						success : function(data){
							console.log(data);
							location.reload();
						}
					});
				});
			/* ----------------------------------삭제버튼---------------------------------------- */
				
				$("#read a").on("click", function() {
					var writing_id = $(this).attr("class");
					$.ajax({
						url : 'groupInfo_re',
						data : {
							id : writing_id
						},
						type : 'post',
						success : function(data) {
							console.log(data);
							$("#re_id").text(data.member_id);
							$("#re_title").text(data.writing_title);
							$("#re_content").text(data.writing_content);
							$("#re_date").text(data.regist_date);
							$("#re_writing_id").text(data.writing_id);
							$("#re_writing_id2").val(data.writing_id);
							alert(data.writing_id);
							if(uid == data.member_id) {
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
				$("#Pop_Re").on("click", "#Pop_Re_mo",function() {
					ViewLayer3();
					var writing_id = $("#re_writing_id").text();
					$.ajax({
						url : 'groupInfo_re',
						data : {
							id : writing_id
						},
						type : 'post',
						success : function(data) {
							console.log(data);
							$("#mo_title").val(data.writing_title);
							$("#mo_content").val(data.writing_content);
						}
					});
				});


			});
		</script>

		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container" style="padding-left: 0px;">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="main"><img id="logo-footer" class="footer-logo"
								src="./resources/img/logo(w).png" alt=""></a>
							<p>About Unify dolor sit amet, consectetur adipiscing elit.
								Maecenas eget nisl id libero tincidunt sodales.</p>
							<p>Duis eleifend fermentum ante ut aliquam. Cras mi risus,
								dignissim sed adipiscing ut, placerat non arcu.</p>
						</div>
						<!--/col-md-3-->
						<!-- End About -->

						<!-- Latest -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="posts">
								<div class="headline">
									<h2>Latest Posts</h2>
								</div>
								<ul class="list-unstyled latest-list">
									<li><a href="#">Incredible content</a> <small>May
											8, 2014</small></li>
									<li><a href="#">Best shoots</a> <small>June 23,
											2014</small></li>
									<li><a href="#">New Terms and Conditions</a> <small>September
											15, 2014</small></li>
								</ul>
							</div>
						</div>
						<!--/col-md-3-->
						<!-- End Latest -->

						<!-- Link List -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="headline">
								<h2>Useful Links</h2>
							</div>
							<ul class="list-unstyled link-list">
								<li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
							</ul>
						</div>
						<!--/col-md-3-->
						<!-- End Link List -->

						<!-- Address -->
						<div class="col-md-3 map-img md-margin-bottom-40">
							<div class="headline">
								<h2>Contact Us</h2>
							</div>
							<address class="md-margin-bottom-40">
								25, Lorem Lis Street, Orange <br /> California, US <br />
								Phone: 800 123 3456 <br /> Fax: 800 123 3456 <br /> Email: <a
									href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
							</address>
						</div>
						<!--/col-md-3-->
						<!-- End Address -->
					</div>
				</div>
			</div>
			<!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								2015 &copy; All Rights Reserved. <a href="#">Privacy Policy</a>
								| <a href="#">Terms of Service</a>
							</p>
						</div>

						<!-- Social Links -->
						<div class="col-md-6">
							<ul class="footer-socials list-inline">
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Facebook">
										<i class="fa fa-facebook"></i>
								</a></li>
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Skype">
										<i class="fa fa-skype"></i>
								</a></li>
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Google Plus">
										<i class="fa fa-google-plus"></i>
								</a></li>
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Linkedin">
										<i class="fa fa-linkedin"></i>
								</a></li>
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Pinterest">
										<i class="fa fa-pinterest"></i>
								</a></li>
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Twitter">
										<i class="fa fa-twitter"></i>
								</a></li>
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Dribbble">
										<i class="fa fa-dribbble"></i>
								</a></li>
							</ul>
						</div>
						<!-- End Social Links -->
					</div>
				</div>
			</div>
			<!--/copyright-->
		</div>
		<!--=== End Footer Version 1 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="./resources/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="./resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="./resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAN--zcfp4teCptRjts9sB0EDpa98Kyiu0&callback=initMap"
		async defer></script>
	<script type="text/javascript"
		src="./resources/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="./resources/assets/plugins/smoothScroll.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="./resources/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="./resources/assets/js/app.js"></script>
	<script type="text/javascript"
		src="./resources/assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			StyleSwitcher.initStyleSwitcher();
		});
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

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<!--  <link rel='stylesheet' type='text/css'
		href='./resources/calendar/fullcalendar.css' />
	<!-- <script type='text/javascript'
		src='./resources/calendar/jquery.js'></script> -->
	<script type='text/javascript'
		src='./resources/calendar/jquery/jquery-ui-custom.js'></script>
	<script type='text/javascript'
		src='./resources/calendar/fullcalendar.min.js'></script> -->

	<!-- 캘린더 -->
	<script type='text/javascript'>
	$(document).ready(function() {

		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			editable: true,
			events: [
				
				<c:forEach items="${noticelist}" var="i">
					
					{
						title: "${i.notice_title} 그룹 : ${i.gr_name}",
						start: "${i.ridingDate}",
						url: "noticeInfo?noticeId=${i.noticeId}&uid=${uid}"
					},
					
				</c:forEach>
				
			]	// events
		});
		
	});
	
	<c:forEach items="${noticelist}" var="i">
		${i.noticeId}
	</c:forEach>
</script>

	<script type="text/javascript" src="./resources/js/upload.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->
	
<script src="./resources/slider/vmc.slider.full.js"></script>
<script>
$('#slider').vmcSlider({
		width: 600,
		height: 450,
		gridCol: 10,
		gridRow: 5,
		gridVertical: 20, 
		gridHorizontal: 10,
		autoPlay: true,
		ascending: true,
		effects: [
			'fade', 'fadeLeft', 'fadeRight', 'fadeTop', 'fadeBottom', 'fadeTopLeft', 'fadeBottomRight',
			'blindsLeft', 'blindsRight', 'blindsTop', 'blindsBottom', 'blindsTopLeft', 'blindsBottomRight',
			'curtainLeft', 'curtainRight', 'interlaceLeft', 'interlaceRight', 'mosaic', 'bomb', 'fumes'
		],
		ie6Tidy: false,
		random: true,
		duration: 2000,
		speed: 900
	});
</script>


</body>
</html>