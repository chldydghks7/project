<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
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
  
    <link rel='stylesheet' type='text/css' href='./resources/calendar/fullcalendar.css' />
    
    
 <script src="./resources/js2/jquery.js"></script>   
<script src="./resources/js2/bootstrap.min.js"></script>

   
   <style>
   		.logo, .footer-logo {
			width: 200px;
			heigth: 100px;
		}
   
      #like {
         margin-right: 20px;
         width: 30px;
      }
      #s-img {
      	 width: 550px;
         height: 300px;
      }
      #s-reply {
         width: 450px;
         margin-left: 0;
         margin-right: 20px;
      }
      .modal-body {
         height: 780px;
      }
      .s-content {
      	height: 400px;
      }
      
      .likeCnt {
      	width: 20px;
      	height: 20px;
      	cursor: pointer;
      }
      
    /* #replyContainer {
		position: relative;
	} */

	.reply {
		display: inline-block;
		float: left;
	}
	
	.replyNum {
		width: 3em;
	}
	
	.replyWriter {
		width: 10em;
	}
	
	.date {
		widows: 10em;
	}
	
	.replyText {
		width: 30em;
		height: 3em;
		overflow: auto;
		margin-right: 10px;
	}
	
	.replyLI {
		margin-bottom: 2em;
		list-style-type: none;
		clear: both;
	}
	.rList {
		list-style-type: none;
	}
	
	#calendar {
		width: 900px;
		margin: 0 auto;
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
	.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:focus,
	.navbar-inverse .navbar-nav>.open>a:hover {
	color: #fff;
	background-color: #929292
}
   </style>
</head>

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
		style="height: 30%;background: url('./resources/img/infor.jpeg') no-repeat center center scroll;">

	<!-- Wrapper for slides -->
	<div class="carousel-inner">
		<div class="item active">
			<div class="carousel-caption" style="bottom: 60px;">
				<h1 style="font-size: 40px; font-family: sung;">MY PAGE</h1>
			</div>
		</div>
	</div>
	</header>

      <!--=== Content Part ===-->
      <div class="container">
 	<div class="row" style="font-family: sung;">
			<div class="col-lg-12">
				<h1 class="page-header" style="font-family: nexon;">${uid}님&nbsp;&nbsp;안녕하세요</h1>
			</div>
		</div>
        
        <!-- /.row -->
        <!-- Content Row -->
        <ul class="nav nav-tabs">
            <li><a href="MyInfo?uid=${uid}" style="font-family: sung;">내정보</a></li>
            <li class="active"><a href="#" style="font-family: sung;">달력</a></li>  <!-- data-toggle="tab" <a href="calendar?uid=${uid}">달력</a> -->
      	</ul>
      <span></span>
      <span></span>
     	
         <div class="row">
	<!-- 캘린더 --> <div class="col-lg-12" id="content">
			<table class="table" style="float: center;">
  
                    <tbody style="text-align: center;">
                    <tr>
                        <td colspan="3"><div id='calendar'></div></td>
                    </tr>
                   
                    </tbody>
                </table>
           		   
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
	
   
   


   
<script type='text/javascript' src='./resources/calendar/jquery/jquery.js'></script>
<script type='text/javascript' src='./resources/calendar/jquery/jquery-ui-custom.js'></script>
<script type='text/javascript' src='./resources/calendar/fullcalendar.min.js'></script>


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
				
				<c:forEach items="${list}" var="i">
					
					{
						title: "${i.notice_title} 그룹 : ${i.gr_name} (${i.joing})",
						start: "${i.ridingDate}",
						url: "noticeInfo?noticeId=${i.noticeId}&uid=${uid}"
					},
					
				</c:forEach>
					
				<c:forEach items="${iiii}" var="i">
					
					{
						title: "Riding",
						start: "${i.startDate}",
						url: "ridingInfo?riding_id=${i.riding_id}&uid=${uid}"
					},
					
				</c:forEach>
				
				
			]	// events
		});
		
	});
	

	
	
</script>

<script>
	var joinCheck = "${joinCheck}";
	if(joinCheck == "참여") {
		
	} else if(joinCheck == "불참"){
		
	}
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



</body>
</html>