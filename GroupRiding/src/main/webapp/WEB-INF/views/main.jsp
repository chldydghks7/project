<%@ page language="java" contentType="text/html; charset = UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #222;">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Group Riding</title>

<!-- Bootstrap Core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./resources/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="./resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<style>
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
</style>

<body>

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
				<a class="navbar-brand" href="main"
					style="color: red; font-family: sung; font-size: 30px;">GROUP
					RIDING</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="main" style="color: black; font-family: sung;">Home</a></li>
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

	<!-- Header Carousel -->
	<header id="myCarousel" class="carousel slide" style="height: 100%">

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<div class="fill">
					<video src="./resources/main.mp4" controls="controls"
						autoplay="autoplay" loop="loop"></video>
				</div>
				<div class="carousel-caption"
					style="bottom: 35%; margin-left: 18%; border: 4px solid rgba(256, 256, 256, 0.5); width: 30%; font-family: sung;">
					<h1 style="font-family: sung;">W&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;L&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;M&nbsp;&nbsp;&nbsp;E</h1>
					<h1 style="font-size: 53px; color: red; font-family: sung;">
						<strong>GROUP RIDING</strong>
					</h1>
					</br>
					<button type="button" class="btn btn-default btn-lg"
						data-toggle="modal" data-target="#myModal"
						style="width: 95%; height: 50PX;">
						<strong>START GROUP RIDING</strong>
					</button>
				</div>
				<div></div>
			</div>
		</div>
	</header>
	<aside class="callout">
		<div class="text-vertical-center" style="font-family: sung;">
			<h1 style="font-family: nexon;">GROUP</h1>
			<br>
			<h2 style="font-family: nexon;">
				여러명의 팀원을 모아서 자전거 라이딩을 즐겨보세요! <br>자전거 전용 도로만을 안내하는 놀라운 경험을 하여
				보세요.
			</h2>
		</div>
	</aside>
	<aside class="callout2">
		<div class="text-vertical-center" style="font-family: sung;">
			<h1 style="font-family: nexon;">SHARING</h1>
			<br>
			<h2 style="font-family: nexon;">
				속도, 거리, 시간 빈틈없이 관리 하여 체계적인 시스템을 확인 하세요. <br>또한 여러분의 데이터는 그룹성장에
				큰도움이 된답니다!
			</h2>
		</div>
	</aside>
	<aside class="callout3">
		<div class="text-vertical-center" style="font-family: sung;">
			<h1 style="font-family: nexon;">SHARING</h1>
			<br>
			<h2 style="font-family: nexon;">
				자전거 라이딩을 하다가 배가 고프거나, 쉴수 있는 곳을 찾아 본적이 있습니까?<br> 저희는 라이더들의 입장에서
				가장 많이 간곳을 지도에 표시하여 드립니다.
			</h2>
		</div>
	</aside>
	<!-- Page Content -->

	<!-- Portfolio Section -->
	<div class="row"
		style="background-color: #222; margin-left: 20px; margin-right: 20px;">
		<div class="col-lg-12" style="border-color: #222;">
			<h1 class="page-header"
				style="text-align: center; color: white; border-color: #222; font-family: sung;">
				<br> GroupRiding Picture
			</h1>
			<br>
		</div>
		<div class="col-md-4 col-sm-6">
			<img style="height: 333px; width: 700px;"
				class="img-responsive img-portfolio img-hover"
				src="./resources/img/bike5.jpg" alt="">

		</div>
		<div class="col-md-4 col-sm-6">
			<img style="height: 333px; width: 700px;"
				class="img-responsive img-portfolio img-hover"
				src="./resources/img/bike3.jpg" alt="">

		</div>
		<div class="col-md-4 col-sm-6">
			<img style="height: 333px; width: 700px;"
				class="img-responsive img-portfolio img-hover"
				src="./resources/img/bike.jpg" alt="">

		</div>
		<div class="col-md-4 col-sm-6">
			<img style="height: 333px; width: 700px;"
				class="img-responsive img-portfolio img-hover"
				src="./resources/img/bike33.jpeg" alt="">

		</div>
		<div class="col-md-4 col-sm-6">
			<img style="height: 333px; width: 700px;"
				class="img-responsive img-portfolio img-hover"
				src="./resources/img/bike22.jpeg" alt="">

		</div>
		<div class="col-md-4 col-sm-6">
			<img style="height: 333px; width: 700px;"
				class="img-responsive img-portfolio img-hover"
				src="./resources/img/bike2323.PNG" alt="">

		</div>
	</div>
	<!-- /.row -->

	<!-- Features Section -->
	<!-- 로그인 모달 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
	<div class="container">
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog" style="width: 500px; height: 350px;">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<div class="modal-title"
							style="text-align: center; font-family: sung;">
							<h3 style="font-family: nexon;">LOGIN</h3>
						</div>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" action="signInPost" method="POST">
							<div class="form-group">
								<label class="control-label col-sm-2" for="email"
									style="font-family: sung;">ID</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="uid11" name="uid"
										placeholder="ID">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd"
									style="font-family: sung;">Pass</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="upw11"
										name="upw" placeholder="password">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10"
									style="margin-left: 310px;">
									<button type="submit" class="btn btn-default"
										style="font-family: sung;">Submit</button>
									&nbsp;&nbsp;&nbsp;

								</div>
							</div>
						</form>
						<button type="submit" class="btn btn-default" data-toggle="modal"
							data-target="#myModa2"
							style="margin-left: 395px; position: absolute; top: 113px; font-family: sung;">Sign
							up</button>
					</div>
				</div>

			</div>
		</div>

		<div class="modal fade" id="myModa2" role="dialog">
			<div class="modal-dialog" style="width: 1000px; height: 700px;">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<div class="modal-title"
							style="text-align: center; font-family: sung;">
							<h3 style="font-family: nexon;">Register</h3>
						</div>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-2" for="email"
									style="font-family: sung;">ID</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="uid" name="uid"
										placeholder="ID">
								</div>
								<div class="input-group margin-bottom-20">
									<input type="button" class="btn-u btn-block rounded"
										style="background-color: white; width: 120px; height: 35px; text-align: center; font-family: nexon; margin-left: 182px; margin-top: 5px;"
										id="check" value="중복체크">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd"
									style="font-family: sung;">Pass</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="upw" name="upw"
										placeholder="password">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd"
									style="font-family: sung;">RE Pass</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="upw1"
										name="upw1" placeholder="re password">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd"
									style="font-family: sung;">Name</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="uname" name="uname"
										placeholder="Name">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd"
									style="font-family: sung;">Birth</label>
								<div class="col-sm-10">
									<input type="date" class="form-control" id="uage" name="uage"
										placeholder="YYDDNN">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd"
									style="font-family: sung;">Image:</label>
								<div class="col-sm-10">
									<div class="fileDrop"
										style="width: 300px; height: 100px; border: 1px dotted blue;">

									</div>
								</div>

							</div>

							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd"
									style="font-family: sung;">Profile</label>
								<div class="col-sm-10 uploadedList"></div>
							</div>
					</div>



					<button type="submit" id="save" class="btn btn-default"
						style="margin-left: 900px; margin-bottom: 10px; font-family: sung;">Register</button>


					</form>
				</div>
			</div>

		</div>
	</div>

	</div>
	<div class="col-lg-12" style="border-color: #222;">
		<h1 class="page-header"
			style="text-align: center; color: white; border-color: #222; font-family: sung;">
			<br> About us
		</h1>
		<br>
	</div>
	<!-- 로그인 모달 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
	<div class="w3-row">
		<div class="w3-half w3-light-grey w3-center" style="height: 600px">
			<div class="w3-padding-64">
				<h2 style="font-family: sung;">LIM JAE HWAN</h2>
				<p>This is Hwan Jae "Go to the Home"</p>
			</div>
			<div class="w3-row">
				<div class="w3-half">
					<img src="./resources/img/hwan.jpg"
						style="width: 100%; height: 100%; -ms-transform: rotate(90deg); -webkit-transform: rotate(90deg); transform: rotate(90deg); border: solid 2px; border-color: black;">
				</div>
				<div style="font-family: nexon; font-size: 20px;">
					<p>Name - LIM JAE HWAN</p>
					<br>
					<p>AGE - 25</p>
					<br>
					<P>Tel - 010 - 2313 - 1573</P>
					<br>
					<p>Specialty - 먹는것을 매우 좋아함!</p>
					<br>
					<p>Hobby - 배틀그라운드 4랩 가방
				</div>
			</div>
		</div>


		<div class="w3-half w3-blue-grey w3-container" style="height: 600px">
			<div class="w3-padding-64 w3-center">
				<h1 style="font-family: sung;">KANG MIN</h1>
				<p>"집가서 코딩 할께요^^"</p>
			</div>
			<div class="w3-row">
				<div class="w3-half">
					<img src="./resources/img/kang.jpg"
						style="width: 100%; height: 100%; -ms-transform: rotate(90deg); -webkit-transform: rotate(90deg); transform: rotate(90deg); border: solid 2px; border-color: black;">
				</div>
				<div style="font-family: nexon; font-size: 20px; text-align: center;">
					<p>Name - KANG MIN</p>
					<br>
					<p>AGE - 23</p>
					<br>
					<P>Tel - 010 - 2313 - 1573</P>
					<br>
					<p>Specialty - 현실 군복무중</p>
					<br>
					<p>Hobby - 코딩은 집!</p>
				</div>
			</div>
			
		</div>
	</div>

	<!-- Second Grid: Swing By & Contact -->
	<div class="w3-row">
		<div class="w3-half w3-dark-grey w3-container w3-center"
			style="height: 600px">
			<div class="w3-padding-64">
				<h1 style="font-family: sung;">JUNG SUNG JAE</h1>
				<p>This is Good</p>
			</div>
			<div class="w3-row">
				<div class="w3-half">
					<img src="./resources/img/sungjae.jpg"
						style="width: 100%; height: 100%; -ms-transform: rotate(90deg); -webkit-transform: rotate(90deg); transform: rotate(90deg); border: solid 2px; border-color: black;">
				</div>
				<div style="font-family: nexon; font-size: 20px;">
					<p>Name - JUNG SUNG JAE</p>
					<br>
					<p>AGE - 26</p>
					<br>
					<P>Tel - 010 - 9554 - 6737</P>
					<br>
					<p>Specialty - 운동을 생활화 하고 있음!</p>
					<br>
					<p>Hobby - 독서, 다과, 운동</p>
				</div>
			</div>
		</div>


		<div class="w3-half w3-teal w3-container w3-center"
			style="height: 600px">
			<div class="w3-padding-64">
				<h1 style="font-family: sung;">CHIO YONG HWAN</h1>
				<p>"예수 시X 새X 끼야"</p>
			</div>
			<div class="w3-row">
				<div class="w3-half">
					<img src="./resources/img/sungjae.jpg"
						style="width: 100%; height: 100%; -ms-transform: rotate(90deg); -webkit-transform: rotate(90deg); transform: rotate(90deg); border: solid 2px; border-color: black;">
				</div>
				<div style="font-family: nexon; font-size: 20px;">
					<p>Name - CHIO YONG HWAN</p>
					<br>
					<p>AGE - 24</p>
					<br>
					<P>Tel - 010 - 2313 - 1573</P>
					<br>
					<p>Specialty - 예수충</p>
					<br>
					<p>Hobby - 예수충
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<footer>
		<div class="row" style="">
			<div class="col-lg-12"
				style="color: white; margin-left: 40px; font-family: nexon;">
				<p>Copyright &copy; GROUP RIDING 2017</p>
			</div>
		</div>
	</footer>




	<!-- /.container -->

	<!-- jQuery -->
	<script src="./resources/js2/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="./resources/js2/bootstrap.min.js"></script>

	<!-- Script to Activate the Carousel -->
	<script>
		$('.carousel').carousel({
			interval : 5000
		//changes the speed
		})
	</script>

	<script type="text/javascript" src="./resources/js/upload.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

	<script id="template" type="text/x-handlebars-template">

 <img src="{{imgsrc}}" alt="Attachment">

               
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

						$("#profile").prepend(img);

						var logoutform = $("form[data-role='out']");

						$("#logout").click(function() {

							logoutform.submit();
						});

					});

				});
	</script>

	<script>
		$("#save").on("click", function() {
			if ($("#uid").val() == "") {
				alert("아이디를 입력하세요");
				return false;
			}
			if ($("#uname").val() == "") {
				alert("이름을 입력하세요");
				return false;
			}
			if ($("#upw").val() == "") {
				alert("비밀번호를 입력하세요");
				return false;
			}
			if ($("#upw1").val() == "") {
				alert("비밀번호 확인을 입력하세요");
				return false;
			}
			if ($("#uage").val() == "") {
				alert("생년월일 입력하세요");
				return false;
			}
			if ($("#upw").val() != $("#upw1").val()) {
				alert("비밀번호 일치 ㄴㄴ");
				return false;
			}
			window.alert("가입 됨");
		});

		$("#sign").on("click", function() {
			if ($("#uid11").val() == "") {
				alert("아이디를 입력하세요");
				return false;
			}
			if ($("#upw11").val() == "") {
				alert("비밀번호를 입력하세요");
				return false;
			}
		});
	</script>

	<script>
		///////////////
		////	프로필
		///////////////
		var template = Handlebars.compile($("#template").html());

		$(".fileDrop").on("dragenter dragover", function(event) {
			event.preventDefault();
		});

		$(".fileDrop").on("drop", function(event) {
			event.preventDefault();

			var files = event.originalEvent.dataTransfer.files;

			var file = files[0];

			var formData = new FormData();

			formData.append("file", file);

			$.ajax({
				url : 'uploadAjax',
				data : formData,
				dataType : 'text',
				processData : false,
				contentType : false,
				type : 'POST',
				success : function(data) {

					var fileInfo = getFileInfo(data);

					var html = template(fileInfo);

					$(".uploadedList").append(html);
				}
			});
		});

		$("#registerForm")
				.submit(
						function(event) {
							event.preventDefault();

							var that = $(this);

							var str = "";
							$(".uploadedList .delbtn")
									.each(
											function(index) {
												str = "<input type='hidden' name='files' value='"
														+ $(this).attr("href")
														+ "'> ";
												// 	 str = "<input type='hidden' name='files' value='"+$(this).attr("href") +"'> ";
											});

							that.append(str);

							that.get(0).submit();
						});
	</script>

	<!-- 아이디 중복체크 -->
	<script>
		$("#check").on("click", function() {

			$.ajax({
				url : "id_check",
				type : "post",
				data : {
					uid : $("#uid").val()
				},
				dataType : "json",
				success : function(data) {
					if (data.result == "success") {
						window.alert("아이디 : " + $("#uid").val() + " 가능가능");
					} else {
						window.alert("아이디 : " + $("#uid").val() + " 불가불가");
					}

				}
			})
		});
	</script>


</body>

</html>
