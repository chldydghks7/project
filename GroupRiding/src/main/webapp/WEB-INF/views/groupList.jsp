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
<title>Group Riding</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- Custom CSS -->
<link href="./resources/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="./resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
</style>

</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main">Group Riding</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="main">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">My Page <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="MyInfo">My Information</a></li>

						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Group <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="groupList">Group List</a></li>
							<li><a href="racePoint">Race Point</a></li>
						</ul></li>
					<li><a href="groupRank">Rank</a></li>
					<li><a href="sharing">Sharing</a></li>
					<li><a href="hotPlaceMap">Hot Place</a></li>




					<div style="float: right; width: 180px;">
						<li id="profile" style="float: left; margin-top: 6px;"></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown"
							style="font-size: 25px; color: white; float: left; margin-top: 8px; margin-left: 2px;">${uid}님</a>

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
		style="height: 30%; background: url('./resources/img/bike22.jpeg') no-repeat center center scroll;">

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<div class="carousel-caption" style="bottom: 60px;">
					<h1 style="font-size: 40px;">GROUP LIST</h1>
					</br>
				</div>
			</div>
		</div>
	</header>

	<!--=== End Header ===-->




	<div class="container">

		<div class="row">
			<div class="col-lg-12">
				<h1></h1>
				<ol class="breadcrumb" style="float: right;">
					<li class="active"><a href="#" style="font-size: 20px;">My
							Group</a></li>
					<li><a href="groupListOther" style="font-size: 20px;">Other
							Group</a></li>
				</ol>
			</div>
		</div>


		<div class="row text-center">
			<!-- Pricing -->
			<c:forEach items="${list}" var="group">


				<div class="col-md-3 col-sm-6 hero-feature">
					<div class="thumbnail">
						<img src="/displayFile?fileName=${group.gr_icon}"
							style="width: 250px; height: 100px; border: solid 2px; border-color: black;" />
						<div class="caption">
							<h3>
								<strong>${group.gr_name}</strong>
							</h3>
							<p>${group.gr_content}</p>
							<p>
								<a class="w3-button w3-dark-grey"
									href="groupInfo?gr_name=${group.gr_name}&gr_id=${group.gr_id}&uid=${uid}"
									style="width: 230px; font-size: 20px;"><strong>I&nbsp;N&nbsp;F&nbsp;O</strong></a>
							</p>

						</div>
					</div>

				</div>


			</c:forEach>


		</div>
		<!--/row-->


		<button type="submit" class="btn btn-default" data-toggle="modal"
			data-target="#myModal"
			style="width: 100px; height: 100px; font-size: 60px; margin-left: 92%;">+</button>
		<!-- 그룹생성모달 -->
		<div class="container">
			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" style="text-align: center;">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h3 class="modal-title">Group Create</h3>
						</div>
						<div class="modal-body">


							<form id="registerForm" action="create_gr" method="post">
								<!-- Group Icon : <input type="text" id="gr_icon" name="gr_icon"> <br> -->
								<input type="hidden" id="gr_leader" name="gr_leader"
									value="${uid}"> <input type="hidden" id="uid"
									name="uid" value="${uid}"> <input type="hidden"
									name="introduce" value="그룹장">
								<div class="form-group">
									<label>그룹이름 </label> <input type="text" class="form-control"
										id="gr_name" name="gr_name"> <input
										class="btn btn-default" type="button" id="n_check"
										value="중복체크" style="float: right; margin-top: 5px;"> <br>
								</div>
								<div class="form-group">
									<label>그룹소개 </label>
									<textarea id="gr_content" class="form-control"
										name="gr_content"></textarea>
								</div>
								<!-- 파일 업로드 -->
								<div>
									<label>프로필 이미지 등록 [ File DROP Here ]</label>

									<div>
										<div class="fileDrop"
											style="width: 100%; height: 100px; border: 1px solid black;">
											<ul id="imgshow">


											</ul>

										</div>
									</div>

									<div>
										<div></div>

										<ul class="mailbox-attachments cleafix uploadedList">
										</ul>
									</div>
								</div>
								<div class="modal-footer">
									<button class="btn btn-default" type="submit">생성</button>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>

							</form>
							<div></div>
						</div>

					</div>

				</div>
			</div>

		</div>
		<!-- 그룹명 중복체크 -->
		<script>
			$("#n_check").on(
					"click",
					function() {

						$.ajax({
							url : "n_check",
							type : "post",
							data : {
								gr_name : $("#gr_name").val()
							},
							dataType : "json",
							success : function(data) {
								if (data.result == "success") {
									window.alert("그룹명 : " + $("#gr_name").val()
											+ " 가능가능");
								} else {
									window.alert("그룹명 : " + $("#gr_name").val()
											+ " 불가불가");
								}

							}
						})
					});
		</script>
		<!-- 그룹생성모달 -->
		<script type="text/javascript" src="./resources/js/upload.js"></script>
		<script>
			$(".fileDrop").on("dragenter dragover", function(event) {
				event.preventDefault();
			});

			$(".fileDrop")
					.on(
							"drop",
							function(event) {
								event.preventDefault();

								var files = event.originalEvent.dataTransfer.files;

								var file = files[0];

								var formData = new FormData();

								formData.append("file", file);

								$
										.ajax({
											url : 'uploadAjax',
											data : formData,
											dataType : 'text',
											processData : false,
											contentType : false,
											type : 'POST',
											success : function(data) {

												var fileInfo = getFileInfo(data);

												console.log(fileInfo);

												var img = "<input type='hidden' name='gr_icon' value='"+fileInfo.fullName+"'/>";
												var imgshow = "<img src='"+fileInfo.imgsrc+"'/>"

												$(img).appendTo(
														$("#registerForm"));
												$("#imgshow")
														.append($(imgshow));

												/*   var sumnailimg="<img src='display'" */

											}
										});
							});
		</script>
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Your Website 2017</p>
				</div>
			</div>
		</footer>





		<!-- End Pricing -->
	</div>
	<!--/container-->




</body>
</html>
