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
   </style>
</head>

<body>
   <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Group Riding</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Page <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="MyInfo">My Information</a>
                            </li>
                           
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Group <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="groupList">Group List</a>
                            </li>
                            <li>
                                <a href="racePoint">Race Point</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="groupRank">Rank</a>
                    </li>
                    <li>
                        <a href="sharing">Sharing</a>
                    </li>
                    <li>
                        <a href="hotPlaceMap">Hot Place</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	    <header id="myCarousel" class="carousel slide" style="height: 30%;background: url('./resources/img/infor.jpeg') no-repeat center center scroll;">

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="carousel-caption" style="bottom:60px;">
                    <h1 style="font-size: 40px;">MY INFORMATION</h1></br>
                </div>
            </div>
        </div>
    </header>
      
      <!--=== Content Part ===-->
      <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">OOO님 안녕하세요</h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <ul class="nav nav-tabs">
            <li><a href="MyInfo">내정보</a></li>
            <li class="active"><a href="#">달력</a></li>  <!-- data-toggle="tab" <a href="calendar?uid=${uid}">달력</a> -->
      	</ul>
      
      
         <div class="row">
	<!-- 캘린더 --> <div class="col-lg-12" id="content">
			<table class="table" style="float: center;">
                <thead>
                    <tr>
                        <td colspan="3" style="text-align: center;"><h3>MY PROFILE</h3></td>
                    </tr>
                    </thead>
                    <tbody style="text-align: center;">
                    <tr>
                        <td colspan="3"><div id='calendar'></div></td>
                    </tr>
                   
                    </tbody>
                </table>
           			
           			
					<table>
						
							<tr style="text-allgn: center; color:red;">
								<th> 공지이름 </th>
								<th> 참여여부 </th>
							</tr>
						
						<c:forEach items="${llll}" var="i">
							<tr>
								<td>${i.notice_title}</td>
								<td>${i.joing}</td>
							</tr>
						</c:forEach>
						
					</table>
            
         </div>
      </div>
      
      <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-bicycle fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">226km</div>
                                        <div>총 거리</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-clock-o fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">87hour </div>
                                        <div>시간</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-group fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">3그룹</div>
                                        <div>가입 그룹 수</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-flag-checkered fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">13</div>
                                        <div>완료한 라이딩 수</div>
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
                                <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> Area Chart</h3>
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
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
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
						title: "${i.notice_title} 그룹 : ${i.gr_name} (${joinCheck})",
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



</body>
</html>