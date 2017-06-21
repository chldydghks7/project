<%@ page language="java" contentType="text/html; charset = UTF-8"
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
<title>Invoice | Unify - Responsive Website Template</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

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

<style>
	.logo, .footer-logo {
			width: 200px;
			heigth: 100px;
		}
</style>
</head>

<body>
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
						<li class="dropdown active"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> Home </a> <!-- End Home -->

							<!-- Pages -->
						<li class="dropdown"><a href="javascript:void(0);"
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
								<li class="dropdown-submenu"><a href="hotPlaceMap">Hot Place</a>
								</li>
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
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">그룹 랭킹</h1>

			</div>
			<!--/container-->
		</div>
		<!--/breadcrumbs-->
		<!------------------------------------------------------------ code ------------------------------------------------------------------------------->
	
		<table class="table table-bordered" id="read">
			<tr>
				<td colspan="3"><h2>라이딩 횟수</h2></td>
			</tr>
			<tr>
				<th>순위</th>
				<th>그룹이름</th>
				<th>라이딩횟수</th>
				
			</tr>
			
			<c:forEach items="${list1}" var="grouprank" varStatus="status">
				<tr>
					<td class="active">${status.count}</td>
					<td class="active">${grouprank.gr_name}</td>
					<td class="active">${grouprank.gr_number}</td>
				</tr>

			</c:forEach>

		</table>
				<table class="table table-bordered" id="read">
			<tr>
				<td colspan="3"><h2>거점 점령 횟수</h2></td>
			</tr>
			<tr>
				<th>순위</th>
				<th>그룹이름</th>
				<th>거점 점령 횟수</th>
			</tr>
			<c:forEach items="${list2}" var="grouprank" varStatus="status">
				<tr>
					<td class="success">${status.count}</td>
					<td class="success">${grouprank.gr_name}</td>
					<td class="success">${grouprank.gr_catch}</td>
				</tr>

			</c:forEach>

		</table>
				<table class="table table-bordered" id="read">
			<tr>
				<td colspan="3"><h2>평균 속도</h2></td>
			</tr>
			<tr>
				<th>순위</th>
				<th>그룹이름</th>
				<th>평균속도</th>
			</tr>
			<c:forEach items="${list3}" var="grouprank" varStatus="status">
				<tr>
					<td class="warning">${status.count}</td>
					<td class="warning">${grouprank.gr_name}</td>
					<td class="warning">${grouprank.gr_avspeed}</td>
				</tr>

			</c:forEach>

		</table>
		<!------------------------------------------------------------ code ------------------------------------------------------------------------------->

		<!--/breadcrumbs-->


		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="/"><img id="logo-footer" class="footer-logo"
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
	</script>
	<!--[if lt IE 9]>
	<script src="./resources/assets/plugins/respond.js"></script>
	<script src="./resources/assets/plugins/html5shiv.js"></script>
	<script src="./resources/./resources/assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->

</body>
</html>
