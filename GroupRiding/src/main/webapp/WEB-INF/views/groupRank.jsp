<%@ page language="java" contentType="text/html; charset = UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>

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



</head>
<style>
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
				<a class="navbar-brand" href="main" style="color: red; font-family: sung; font-size: 30px;">GROUP RIDING</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="main"  style="color:black; font-family: sung;">Home</a></li>
					<li class="dropdown"><a href="MyInfo"  style="color:black; font-family: sung;">My Page</a></li>
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
	    
	     <header id="myCarousel" class="carousel slide" style="background-color: #282828; height: 30%">

	        <div class="carousel-inner">
	            <div class="item active">
	                <div class="carousel-caption" style="bottom:60px;">
	                    <h1 style="font-size: 40px;position: absolute;margin-left: 450px;top: 20px;font-family: sung;">R&nbsp;A&nbsp;N&nbsp;K</h1></br>
	                    <marquee><h3 style="margin-top: 60px;font-family: sung;">랭킹순위권에 들게 되면 해택이 지급됩니다. :)</h3></marquee>
	                </div>
	            </div>
	        </div>
	        
    	</header>
		
		
		<div style="background:url('./resources/img/bikeMain3.jpg') no-repeat; width: 100%; height:125%; ">
        <div  class="text-vertical-center">
            <div class="container">
                 <div class="row">
                 <div>
                    &nbsp;
                    </div>
                    <h1 style="color: white; font-family: sung; color: red;"><strong>Daily Ranking</strong></h1>

                    <div class="col-lg-12" style="font-family: sung;">
                        <table style="width: 100%;border:1px;border:1px solid white; color: white; text-align: center;" >
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"></td>
                                <td style="width: 25%;border:1px solid white;"><h3><strong>속도</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h3><strong>거리</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h3><strong>거점전</strong></h3></td>
                            </tr>
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"><h3><strong>1</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>비앙키</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>자이언트</em><h4></td>
                            </tr>
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"><h3><strong>2</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>비앙키</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                            </tr>
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"><h3><strong>3</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>자이언트</em><h4></td>
                            </tr>
                        </table>
                    </div>
                    <div>
                    &nbsp;
                    </div>
                    <h1 style="color: white; font-family: sung; color: red;"><strong>Weekly Ranking</strong></h1>
                    <div class="col-lg-12" style="font-family: sung;">

                        <table style="width: 100%;border:1px;border:1px solid white; color: white; text-align: center;" >
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"></td>
                                <td style="width: 25%;border:1px solid white;"><h3><strong>속도</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h3><strong>거리</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h3><strong>거점전</strong></h3></td>
                            </tr>
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"><h3><strong>1</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>비앙키</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                            </tr>
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"><h3><strong>2</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                            </tr>
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"><h3><strong>3</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                            </tr>
                        </table>
                    </div>
                    <div>
                    &nbsp;
                    </div>
                    <h1 style="color: white;font-family: sung; color: red;"><strong>Monthly Ranking</strong></h1>
                    <div class="col-lg-12" style="font-family: sung;">

                        <table style="width: 100%;border:1px;border:1px solid white; color: white; text-align: center;" >
                            <tr style="height: 50px;">
                               <td style="width: 25%;border:1px solid white;"></td>
                                <td style="width: 25%;border:1px solid white;"><h3><strong>속도</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h3><strong>거리</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h3><strong>거점전</strong></h3></td>
                            </tr>
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"><h3><strong>1</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                            </tr>
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"><h3><strong>2</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                            </tr>
                            <tr style="height: 50px;">
                                <td style="width: 25%;border:1px solid white;"><h3><strong>3</strong></h3></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                                <td style="width: 25%;border:1px solid white;"><h4><em>스페셜라이즈드</em><h4></td>
                            </tr>
                        </table>
                    </div>

        
<div>
                    &nbsp;
                    </div>
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p style="color: white; font-family: sung;">Copyright &copy; Your Website 2017</p>
                </div>
            </div>
        </footer>

                </div>
            </div> 
        </div>
    </div>
		
	
		<!------------------------------------------------------------ code ------------------------------------------------------------------------------->
	<%-- 
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

		</table> --%>
		<!------------------------------------------------------------ code ------------------------------------------------------------------------------->
  <!-- jQuery -->
    <script src="./resources/js2/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="./resources/js2/bootstrap.min.js"></script>
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

	
</body>
</html>
