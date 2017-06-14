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
			if (document.getElementById("Pop_Re").style.display == "inline") {
				//열어주어라
				document.getElementById("Pop_Re").style.display = 'none'
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
					src="./resources/assets/img/logo1-default.png" alt="Logo">
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
								<li class="dropdown-submenu"><a href="calendar">Calendar</a>
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
								<li class="dropdown-submenu"><a href="hotPlaceMap">Map</a>
								</li>
								<li class="dropdown-submenu"><a href="restaurantList">Restaurant</a>
								</li>
								<li><a href="hotelList">Hotel</a></li>
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

			<div class="table-search-v2">
				<div class="table-responsive">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
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
									
									
										<button type="submit" id="notice11">공지등록</button>
								</form></td>

							</tr>

						</tbody>
					</table>
				</div>
			</div>
			<!--=== Blog Posts ===-->
			<div class="bg-color-light">
				<div class="container content-sm">
					<div class="row">
						<!-- Blog All Posts -->
						<div class="col-md-9">
							<!----- 그룹 캘린더 --------------------------------------------------------------------------->
							<div class="col-md-13">
								<div class="news-v3 bg-color-white margin-bottom-60">
									<h2>${group.gr_name}의최근라이딩</h2>
									<div id="map" class="map margin-bottom-50"></div>
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
										<th>조회수</th>
									</tr>
									<c:forEach items="${listAll}" var="GroupInfoBo">
										<tr>
											<td class="active"><a href="javascript:ViewLayer2();"
												id="a" class="${GroupInfoBo.writing_id}">${GroupInfoBo.writing_title}</a></td>
											<td class="active">${GroupInfoBo.member_id}</td>
											<td class="active">${GroupInfoBo.regist_date}</td>
											<td class="active">${GroupInfoBo.view_Number}</td>
										</tr>

									</c:forEach>
								</table>
								<a href="javascript:ViewLayer();">등록</a>
								<div id="Pop"
									style="position: absolute; left: 100px; top: 100px; width: 1000px; height: 600px; z-index: 1; display: none; background: #505457; color: #fff;">
									<a href="javascript:ViewClose();"><img id="popLogo"
										src="./resources/img/cancelcel.png" /></a>
									<form method="post" style="margin: 5% 5%">
										작성자 - ${uid}</br>
										</br>
										<div class="form-group">
											제목 </br>
											<input class="form-control" type="text" name="writing_title">
										</div>
										<div class="form-group">
											내용 </br>
											<textarea rows="13" cols="131"
												style="color: black; resize: none;" name="writing_content"></textarea>
										</div>
										</br> <input type="hidden" value="${uid}" name="member_id" />
										<!-- 인풋 타입 히든으로 안보이게 처리 -->
										<input type="hidden" value="${gr_id}" name="gr_id" /> <input
											class="btn btn-default" type="submit" value="등록">
										<button class="btn btn-default" id="list">삭제</button>
									</form>
								</div>

								<div id="Pop_Re"
									style="position: absolute; left: 100px; top: 100px; width: 1000px; height: 600px; z-index: 1; display: none; margin: 5% 5%; background: #101010; color: #fff;">
									<a href="javascript:ViewClose2();"><img id="popLogo"
										src="./resources/img/cancelcel.png" /></a>
									<div style="margin: 5% 5%">
										작성자 - <label id="re_id"></label></br>
										제목 - <label id="re_title"></label></br>
										내용   <div id="re_content" style="height:330px; background-color:#505457;"></div></br>
										작성일 - 
										<label id="re_date"></label>
										
										<!-- <input class="btn btn-default" type="submit" value="수정"> -->
										<input class="btn btn-default" type="submit" value="수정" style="float: right">
										<button class="btn btn-default" id="list"  style="float: right">삭제</button>
									</div>
								</div>
							</div>
							<!-- End Blog Posts -->

							<!-- Blog Posts -->
							<div class="news-v3 bg-color-white margin-bottom-60">sss</div>
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
							<div class="headline-v2">
								<h2>가입</h2>
							</div>
							<!-- Trending -->
							<ul class="list-unstyled blog-trending margin-bottom-50">

							</ul>
							<!-- End Trending -->

							<div class="headline-v2">
								<h2>라이딩스타트</h2>
							</div>
							<!-- Latest Links -->
							<ul class="list-unstyled blog-latest-posts margin-bottom-50">

							</ul>
							<!-- End Latest Links -->

							<div class="headline-v2">
								<h2>회원 리스트</h2>
							</div>
							<!-- Tags v2 -->
							<ul class="list-inline tags-v2 margin-bottom-50">
								<li><a href="#">Web Design</a></li>
								<li><a href="#">Economy</a></li>
								<li><a href="#">Sport</a></li>
								<li><a href="#">Marketing</a></li>
								<li><a href="#">Books</a></li>
								<li><a href="#">Elections</a></li>
								<li><a href="#">Flickr</a></li>
								<li><a href="#">Politics</a></li>
								<li><a href="#">Marketing</a></li>
								<li><a href="#">Web Hosting</a></li>
								<li><a href="#">Wrapbootstrap</a></li>
								<li><a href="#">Art</a></li>
							</ul>
							<!-- End Tags v2 -->

							<div class="headline-v2">
								<h2>사진모아보기</h2>
							</div>
							<!-- Photostream -->
							<ul class="list-inline blog-photostream margin-bottom-50">
								<li><a href="assets/img/main/img22.jpg" rel="gallery"
									class="fancybox img-hover-v2" title="Image 1"> <span><img
											class="img-responsive" src="assets/img/main/img22.jpg" alt=""></span>
								</a></li>
								<li><a href="assets/img/main/img23.jpg" rel="gallery"
									class="fancybox img-hover-v2" title="Image 2"> <span><img
											class="img-responsive" src="assets/img/main/img23.jpg" alt=""></span>
								</a></li>
								<li><a href="assets/img/main/img4.jpg" rel="gallery"
									class="fancybox img-hover-v2" title="Image 3"> <span><img
											class="img-responsive" src="assets/img/main/img4.jpg" alt=""></span>
								</a></li>
								<li><a href="assets/img/main/img9.jpg" rel="gallery"
									class="fancybox img-hover-v2" title="Image 4"> <span><img
											class="img-responsive" src="assets/img/main/img9.jpg" alt=""></span>
								</a></li>
								<li><a href="assets/img/main/img25.jpg" rel="gallery"
									class="fancybox img-hover-v2" title="Image 5"> <span><img
											class="img-responsive" src="assets/img/main/img25.jpg" alt=""></span>
								</a></li>
								<li><a href="assets/img/main/img6.jpg" rel="gallery"
									class="fancybox img-hover-v2" title="Image 6"> <span><img
											class="img-responsive" src="assets/img/main/img6.jpg" alt=""></span>
								</a></li>
								<li><a href="assets/img/main/img20.jpg" rel="gallery"
									class="fancybox img-hover-v2" title="Image 7"> <span><img
											class="img-responsive" src="assets/img/main/img20.jpg" alt=""></span>
								</a></li>
								<li><a href="assets/img/main/img3.jpg" rel="gallery"
									class="fancybox img-hover-v2" title="Image 8"> <span><img
											class="img-responsive" src="assets/img/main/img3.jpg" alt=""></span>
								</a></li>
								<li><a href="assets/img/main/img7.jpg" rel="gallery"
									class="fancybox img-hover-v2" title="Image 9"> <span><img
											class="img-responsive" src="assets/img/main/img7.jpg" alt=""></span>
								</a></li>
							</ul>
							<!-- End Photostream -->

							<!-- End Blog Newsletter -->
						</div>
						<!-- End Blog Sidebar -->
					</div>
				</div>
			</div>

		</div>





		<script>
			$(document).ready(function() {

				var formObj = $("form[role='form']");

				$("#gr_list").on("click", function() {
					formObj.attr("action", "groupList");
					formObj.attr("method", "get");
					formObj.submit();
				});

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

						}
					});
				});

			});
		</script>

		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="main"><img id="logo-footer" class="footer-logo"
								src="./resources/assets/img/logo2-default.png" alt=""></a>
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
	<!-- 그룹장 체크 -->
		var leader = "${leader}";

		if (leader == "") {
			$("#notice11").hide();
		} else {
			$("#notice11").show();
		}
</script>



	<script type="text/javascript" src="./resources/js/upload.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->


</body>
</html>