<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>Home Basic 4 | Unify - Responsive Website Template</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<!-- Favicon -->
	<link rel="shortcut icon" href="./resources/favicon.ico">

	<!-- Web Fonts -->
<!-- 	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'> -->

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="./resources/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/assets/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="./resources/assets/css/headers/header-v6.css">
	<link rel="stylesheet" href="./resources/assets/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="./resources/assets/plugins/animate.css">
	<link rel="stylesheet" href="./resources/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="./resources/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/assets/plugins/animated-headline/css/animated-headline.css">
	<link rel="stylesheet" href="./resources/assets/plugins/parallax-slider/css/parallax-slider.css">
	<link rel="stylesheet" href="./resources/assets/plugins/fancybox/source/jquery.fancybox.css">
	<link rel="stylesheet" href="./resources/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="./resources/assets/plugins/animate.css">
	<link rel="stylesheet" href="./resources/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="./resources/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/assets/plugins/animated-headline/css/animated-headline.css">
	<link rel="stylesheet" href="./resources/assets/plugins/parallax-slider/css/parallax-slider.css">
	<link rel="stylesheet" href="./resources/assets/plugins/fancybox/source/jquery.fancybox.css">
	<link rel="stylesheet" href="./resources/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
	<link rel="stylesheet" href="./resources/assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
	<link rel="stylesheet" href="./resources/assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
	<link rel="stylesheet" href="./resources/assets/plugins/animated-headline/css/animated-headline.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="./resources/assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="./resources/assets/css/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="./resources/assets/css/custom.css">
</head>

<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v6 ===-->
		<div class="header-v6 header-transparent header-dark-dropdown header-sticky">
			<!-- Navbar -->
			<div class="navbar mega-menu" role="navigation">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="menu-container">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>

						<!-- Navbar Brand -->
						<div class="navbar-brand">
							<a href="">
								<img class="default-logo" src="./resources/assets/img/logo3-light.png" alt="Logo">
								<img class="shrink-logo" src="./resources/assets/img/logo3-dark.png" alt="Logo">
							</a>
						</div>
						<!-- ENd Navbar Brand -->

						<!-- Header Inner Right -->
						<div class="header-inner-right">
							<ul class="menu-icons-list">
								<li class="menu-icons shopping-cart">
									<i class="menu-icons-style radius-x fa fa-shopping-cart"></i>
									<span class="badge">0</span>
									<div class="shopping-cart-open">
										<span class="shc-title">No products in the Cart</span>
										<button type="button" class="btn-u"><i class="fa fa-shopping-cart"></i> Cart</button>
										<span class="shc-total">Total: <strong>$0.00</strong></span>
									</div>
								</li>
								<li class="menu-icons">
									<i class="menu-icons-style search search-close search-btn fa fa-search"></i>
									<div class="search-open">
										<input type="text" class="animated fadeIn form-control" placeholder="Start searching ...">
									</div>
								</li>
							</ul>
						</div>
						<!-- End Header Inner Right -->
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-responsive-collapse">
						<div class="menu-container">
							<ul class="nav navbar-nav">
								<!-- Home -->
								<li class="dropdown active">
									<a href="main" class="dropdown-toggle" data-toggle="dropdown">
										Home
									</a>
								</li>
								<!-- End Home -->

								<!-- Pages -->
								<li class="dropdown">
									<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
										Group
									</a>
									<!-- 소메뉴 -->
									<ul class="dropdown-menu">
										<li><a href="groupList">Group List</a></li>
										<li><a href="groupRank">Ranking</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home1.html">- One Page Option 1</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home2.html">- One Page Option 2</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home3.html">- One Page Option 3</a></li>
									</ul>
									
								</li>
								<!-- End Pages -->

								<!-- Blog -->
								<li class="dropdown">
									<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
										Info
									</a>
									<ul class="dropdown-menu">
										<li><a href="calendar">Calendar</a></li>
										<li><a href="Ridingdata">Riding Data</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home1.html">- One Page Option 1</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home2.html">- One Page Option 2</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home3.html">- One Page Option 3</a></li>
									</ul>
									
								</li>
								<!-- End Blog -->

								<!-- Portfolio -->
								<li class="dropdown">
									<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
										Sharing
									</a>
									<ul class="dropdown-menu">
										<li><a href="sharing">Picture</a></li>
										<li><a href="One-Pages/Classic/one_page_dark.html">Route</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home1.html">- One Page Option 1</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home2.html">- One Page Option 2</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home3.html">- One Page Option 3</a></li>
									</ul>
									
								</li>
								<!-- End Portfolio -->

								<!-- Features -->
								<li class="dropdown ">
									<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
										Hot Place
									</a>
									<ul class="dropdown-menu">
										<li><a href="hotPlaceMap">Map</a></li>
										<li><a href="restaurantList">Restaurant</a></li>
										<li><a href="hotelList">Hotel</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home2.html">- One Page Option 2</a></li>
										<li><a target="_blank" href="One-Pages/Classic/one_page_home3.html">- One Page Option 3</a></li>
									</ul>
								</li>

							</ul>
						</div>
					</div><!--/navbar-collapse-->
				</div>
			</div>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v6 ===-->

		<!--=== Full Height Text Rotater ===-->
		<div class="fullscreen-static-image1 fullheight bg-color-darker">
			<div class="container valign__middle text-center">
				<span class="promo-text-v1 color-light animated fadeInDown wow margin-bottom-10" data-wow-duration="1.5s" data-wow-delay=".5s">
					2017 YEUNGJIN COLLEGE
				</span>
				<h2 class="promo-text-v2 color-light cd-headline letters type margin-bottom-20">
					GROUP
					<span class="cd-words-wrapper">
						<b class="is-visible">RIDING</b>
						<!-- <b>AWESOME</b> b태그 삽입시 타이핑 효과추가 
						<b>CREATIVE</b> -->
					</span>
				</h2>
				<div class="animated fadeInUp wow" data-wow-duration="1.5s" data-wow-delay="1s">
					<!-- <a href="#" class="btn-u btn-brd btn-brd-width-2 btn-brd-hover btn-u-light btn-u-block rounded-4x margin-right-10">Start</a> -->
					<form action="signIn" method="get">
						<button type="submit" class="btn-u btn-brd btn-brd-width-2 btn-brd-hover btn-u-light btn-u-block rounded-4x">Login</button>
					</form>
				</div>
				
			</div>
		</div>
		<!--=== End Full Height Text Rotater ===-->
		<div class="container-fluid">
			<div class="row no-gutter equal-height-columns">
				<div class="col-sm-4">
					<div class="service-block service-block-purple no-margin-bottom content equal-height-column">
						<i class="icon-custom icon-md rounded icon-color-light icon-line icon-badge"></i>
						<h2 class="font-light">GroupRiding</h2>
						<p class="no-margin-bottom font-light">여러명의 팀원을 모아서 자전거 라이딩을 즐겨보세요! 자전거 전용 도로만을
						안내하는 놀라운 경험을 하여 보세요.</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="service-block service-block-red no-margin-bottom content equal-height-column">
						<i class="icon-custom icon-md rounded icon-color-light icon-line icon-layers"></i>
						<h2 class="font-light">Information</h2>
						<p class="no-margin-bottom font-light">속도, 거리, 시간 빈틈없이 관리 하여 체계적인 시스템을 확인 하세요. 또한
						여러분의 데이터는 그룹성장에 큰도움이 된답니다!</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="service-block service-block-blue no-margin-bottom content equal-height-column">
						<i class="icon-custom icon-md rounded icon-color-light icon-line icon-support"></i>
						<h2 class="font-light">Hot Place</h2>
						<p class="no-margin-bottom font-light">자전거 라이딩을 하다가 배가 고프거나, 쉴수 있는 곳을 찾아 본적이 있습니까?
						저희는 라이더들의 입장에서 가장 많이 간곳을 지도에 표시하여 드립니다.</p>
					</div>
				</div>
			</div>
		</div>
		<!--=== Content Part ===-->
		<!--=== Cube Portfolio ===-->
		<div class="container content-md">
			<div class="text-center margin-bottom-30">
				<h2 class="title-v2 title-center">LATEST PROJECTS</h2>
				<p class="space-lg-hor">If you are going to use a <span class="color-green">passage of Lorem Ipsum</span>, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making <span class="color-green">this the first</span> true generator on the Internet.</p>
			</div>

			<div class="cube-portfolio container margin-bottom-20">
				<div class="margin-bottom-30">
					<div id="filters-container" class="cbp-l-filters-text">
						<div data-filter="*" class="cbp-filter-item-active cbp-filter-item"> All </div> |
						<div data-filter=".illustration" class="cbp-filter-item"> Illustration </div> |
						<div data-filter=".web-design" class="cbp-filter-item"> Web Design </div> |
						<div data-filter=".graphic" class="cbp-filter-item"> Graphic </div> |
						<div data-filter=".logo" class="cbp-filter-item"> Logo </div>
					</div><!--/end Filters Container-->
				</div>

				<div id="grid-container" class="cbp-l-grid-gallery">
					<div class="cbp-item illustration web-design">
						
						<div class="cbp-caption-defaultWrap">
							<img src="./resources/assets/img/portfolio/20.jpg" alt="">
						</div>
					
					
				</div>
			
		



	</div><!--/end Grid Container-->
	</div>
	</div>


		<!--=== Parallax Counter v1 ===-->
	<div class="parallax-counter-v1 parallaxBg">
		<div class="container">
			<h2 class="title-v2 title-light title-center">실시간 현황판</h2>
			<p class="space-xlg-hor text-center color-light">실시간 현황판을 통하여, 여러분도 어서 그룹라이딩의 세계로 빠져 보세요</p>

			<div class="margin-bottom-40"></div>

			<div class="row">
				<div class="col-sm-3 col-xs-6 md-margin-bottom-20">
					<div class="counters">
						<span class="counter">234명</span>
						<h4>Users</h4>
					</div>
				</div>
				<div class="col-sm-3 col-xs-6 md-margin-bottom-20">
					<div class="counters">
						<span class="counter">32그룹</span>
						<h4>Group</h4>
					</div>
				</div>
				<div class="col-sm-3 col-xs-6">
					<div class="counters">
						<span class="counter">78회</span>
						<h4>Complete Riding</h4>
					</div>
				</div>
				<div class="col-sm-3 col-xs-6">
					<div class="counters">
						<span class="counter">4322km</span>
						<h4>Distancce</h4>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--=== End Parallax Counter v1 ===-->
		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="main"><img id="logo-footer" class="footer-logo" src="./resources/assets/img/logo2-default.png" alt=""></a>
							<p>GroupRiding은 2017년 9월에 탄생하였습니다.</p>
							<p>그중 첫번째 프로젝트에 해당한다.</p>
						</div><!--/col-md-3-->
						<!-- End About -->

						<!-- Latest -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="posts">
								<div class="headline"><h2>Latest Posts</h2></div>
								<ul class="list-unstyled latest-list">
									<li>
										<a href="#">놀라운 콘텐츠</a>
										<small>2017년 5월 26일</small>
									</li>
									<li>
										<a href="#">최고의 촬영</a>
										<small>2017년 5월 26일</small>
									</li>
									<li>
										<a href="#">새로운 이용 약관</a>
										<small>September 15, 2014</small>
									</li>
								</ul>
							</div>
						</div><!--/col-md-3-->
						<!-- End Latest -->

						<!-- Link List -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="headline"><h2>유용한 링크</h2></div>
							<ul class="list-unstyled link-list">
								<li><a href="#">회사 소개</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">포트폴리오</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">최신 채용 정보</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">커뮤니티</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">문의하기</a><i class="fa fa-angle-right"></i></li>
							</ul>
						</div><!--/col-md-3-->
						<!-- End Link List -->

						<!-- Address -->
						<div class="col-md-3 map-img md-margin-bottom-40">
							<div class="headline"><h2>Contact Us</h2></div>
							<address class="md-margin-bottom-40">
								대구광역시 북구 복현동 <br />
								에이타운505호 <br />
								Phone: 010 9554 6737 <br />
								Fax: 053 561 6737 <br />
								Email: <a href="mailto:info@anybiz.com" class="">tjdwo564@naver.com</a>
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
								2017 &copy; 모든 권리 보유.
								<a href="#">개인 정보 보호 정책</a> | <a href="#">서비스 약관</a>
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
<!-- JS Global Compulsory -->
<script type="text/javascript" src="./resources/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="./resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="./resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="./resources/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="./resources/assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="./resources/assets/plugins/jquery.parallax.js"></script>
<script type="text/javascript" src="./resources/assets/plugins/counter/waypoints.min.js"></script>
<script type="text/javascript" src="./resources/assets/plugins/counter/jquery.counterup.min.js"></script>
<script type="text/javascript" src="./resources/assets/plugins/wow-animations/js/wow.min.js"></script>
<script src="./resources/assets/plugins/animated-headline/js/modernizr.js"></script>
<script src="./resources/assets/plugins/animated-headline/js/animated-headline.js"></script>
<script type="text/javascript" src="./resources/assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="./resources/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="./resources/assets/js/app.js"></script>
<script type="text/javascript" src="./resources/assets/js/plugins/style-switcher.js"></script>
<script type="text/javascript" src="./resources/assets/js/plugins/cube-portfolio/cube-portfolio-lightbox.js"></script>
	<!-- JS Global Compulsory -->
	<script src="./resources/assets/plugins/jquery/jquery.min.js"></script>
	<script src="./resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="./resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="./resources/assets/plugins/back-to-top.js"></script>
	<script src="./resources/assets/plugins/smoothScroll.js"></script>
	<script src="./resources/assets/plugins/backstretch/backstretch-ini.js"></script>
	<script src="./resources/assets/plugins/wow-animations/js/wow.min.js"></script>
	<script src="./resources/assets/plugins/animated-headline/js/modernizr.js"></script>
	<script src="./resources/assets/plugins/animated-headline/js/animated-headline.js"></script>
	<script src="./resources/assets/plugins/jquery.parallax.js"></script>
	<script src="./resources/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
	<script src="./resources/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<!-- JS Customization -->
	<script src="./resources/assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="./resources/assets/js/app.js"></script>
	<script src="./resources/assets/js/plugins/fancy-box.js"></script>
	<script src="./resources/assets/js/plugins/owl-carousel.js"></script>
	<script src="./resources/assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			new WOW().init();
			App.initParallaxBg();
			FancyBox.initFancybox();
			OwlCarousel.initOwlCarousel();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>
<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->

</body>
</html>
