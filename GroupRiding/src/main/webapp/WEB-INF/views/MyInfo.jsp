<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<<<<<<< HEAD
=======

>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./resources/css/modern-business.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- Custom Fonts -->
<link href="./resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>

<style>
.huge {
	font-size: 40px;
}

.panel-green {
	border-color: #5cb85c;
}

.panel-green>.panel-heading {
	border-color: #5cb85c;
	color: #fff;
	background-color: #5cb85c;
}

.panel-green>a {
	color: #5cb85c;
}

.panel-green>a:hover {
	color: #3d8b3d;
}

.panel-red {
	border-color: #d9534f;
}

.panel-red>.panel-heading {
	border-color: #d9534f;
	color: #fff;
	background-color: #d9534f;
}

.panel-red>a {
	color: #d9534f;
}

.panel-red>a:hover {
	color: #b52b27;
}

.panel-yellow {
	border-color: #f0ad4e;
}

.panel-yellow>.panel-heading {
	border-color: #f0ad4e;
	color: #fff;
	background-color: #f0ad4e;
}

.panel-yellow>a {
	color: #f0ad4e;
}

.panel-yellow>a:hover {
	color: #df8a13;
}

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
	font-family: 'nexon';
	src: url('./resources/fonts/NEXON FOOTBALL GOTHIC B.OTF');
}

@font-face {
	font-family: 'nexon2';
	src: url('./resources/fonts/NEXON FOOTBALL GOTHIC L.OTF');
}

@font-face {
<<<<<<< HEAD
	font-family: 'sung';
	src: url('./resources/fonts/sung.ttf');
}

@font-face {
	font-family: 'jae';
	src: url('./resources/fonts/DXSPDM-KSCPC-EUC-H.TTF')
}

@font-face {
	font-family: 'jae2';
	src: url('./resources/fonts/a타임머신.ttf')
}

.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:focus,
	.navbar-inverse .navbar-nav>.open>a:hover {
	color: #fff;
	background-color: #929292
=======
   font-family: 'sung';
   src: url('./resources/fonts/sung.ttf'); 
   }
@font-face{
   font-family: 'jae';
   src: url('./resources/fonts/DXSPDM-KSCPC-EUC-H.TTF')
}
@font-face{
   font-family: 'jae2';
   src: url('./resources/fonts/a타임머신.ttf')
}
   .navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:focus,
   .navbar-inverse .navbar-nav>.open>a:hover {
   color: #fff;
   background-color: #929292
>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6
}
</style>


<body>
<<<<<<< HEAD
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
				<li><a href="mainlogin"
					style="color: black; font-family: sung;">Home</a></li>
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
	<!-- /.container --> </nav>

	<!-- Header Carousel -->
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

	<!-- /.row -->
	<div class="container">
		<div class="w3-panel w3-red w3-display-container w3-card-4">
			<span onclick="this.parentElement.style.display='none'"
				class="w3-button w3-red w3-large w3-display-topright ">x</span>
			<p style="font-family: nexon; font-size: 20px; margin-top: 5px;">#
				My Info에서는 자기 자신의 라이딩 누적 정보를 확인할수 있습니다! 누적 기록에 따라 골드, 실버, 브론즈로 나뉘게
				됩니다!</p>
			<p style="font-family: nexon; font-size: 20px;">또한 일정 관리를 통하여 라이딩
				참여 불참 여부를 선택하세요!</p>
		</div>
=======
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
            <a class="navbar-brand" href="mainlogin" style="color: red; font-family: sung; font-size: 30px;">GROUP RIDING</a>
         </div>
         <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="collapse navbar-collapse"
            id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
               <li><a href="mainlogin"  style="color:black; font-family: sung;">Home</a></li>
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
   <header id="myCarousel" class="carousel slide"
      style="height: 30%;background: url('./resources/img/infor.jpeg') no-repeat center center scroll;">

   <!-- Wrapper for slides -->
   <div class="carousel-inner">
      <div class="item active">
         <div class="carousel-caption" style="bottom: 60px;">
            <h1 style="font-size: 50px; font-family: sung;">MY PAGE</h1>
         </div>
      </div>
      
   </div>
   </header>

   <!-- /.row -->
   <div class="container">

<div class="w3-panel w3-red w3-display-container w3-card-4">
  <span onclick="this.parentElement.style.display='none'"
  class="w3-button w3-red w3-large w3-display-topright ">x</span>
  <p style="font-family: nexon; font-size: 20px; margin-top: 5px;"># My Info에서는 자기 자신의 라이딩 누적 정보를 확인할수 있습니다! 누적 기록에 따라 골드, 실버, 브론즈로 나뉘게 됩니다!</p>
  <p style="font-family: nexon; font-size: 20px;">또한 일정 관리를 통하여 라이딩 참여 불참 여부를 선택하세요!</p>
</div>

>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6
		<!-- Page Heading/Breadcrumbs -->
		<div class="row" style="font-family: sung;">
			<div class="col-lg-12">
				<h1 class="page-header" style="font-family: nexon;">${uid}님&nbsp;&nbsp;안녕하세요</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Content Row -->
		<ul class="nav nav-tabs">
			<li class="active"><a href="#" style="font-family: sung;">내정보</a></li>
			<li style="font-family: sung;"><a href="calendar?uid=${uid}">달력</a></li>
			<!-- data-toggle="tab" <a href="calendar?uid=${uid}">달력</a> -->
		</ul>

		<br>
		<div class="row">

			<!-- Blog Post Content Column -->
			<div class="col-lg-12" id="content">

				<!-- Preview Image -->
				<div id="rankk" class="w3-card-4 w3-round-xxlarge"
					style="height: 600px; border-color: #ddd;">
					<span
						style="font-family: nexon; position: absolute; font-size: 40px; margin-top: 37px; margin-left: 100px;">No
						: 001</span> <span
						style="font-size: 80px; font-family: nexon; margin-left: 340px;">Member
						Card</span> <span
						style="font-family: nexon; position: absolute; font-size: 40px; margin-top: 37px; float: right; margin-left: 50px;">2017-07-20</span>
					<div id="pngg"
						style="position: absolute; width: 395px; height: 395px; background-color: black; margin-left: 60px;"></div>
					<table
						style="position: absolute; width: 600px; height: 300px; margin-left: 520px; font-family: nexon; font-size: 40px;">

						<tr>
							<td>ID - ${uid}</td>
						</tr>
						<tr>
							<td>평균속도 - 40km/h</td>
						</tr>
						<tr>
							<td>평균거리 - 86km</td>
						</tr>
						<tr>
							<td>소속그룹 - 비앙키, 스페셜라이즈드</td>
						</tr>
					</table>
					<img id="rankkk"
						style="position: absolute; width: 400px; height: 400px; right: 695px; top: 117px;"
						src='' /> <img
						style="position: absolute; width: 180px; height: 180px; margin-top: 412px; left: 970px; z-index: 100;"
						src='./resources/img/yong.png' /> <span
						style="position: absolute; font-family: nexon; left: 500px; margin-top: 450px; font-size: 100px; width: 800px; height: 200px;">GROUP
						RIDING</span>
				</div>

			</div>




		</div>
		<br>

		<div class="row">
			<div class="col-lg-3 col-md-6">
				<div class="panel w3-card-4">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-bicycle fa-5x"></i>
							</div>

							<div class="col-xs-9 text-right">
								<div class="huge" style="font-family: nexon;">${myAlldistance}</div>

								<div style="font-family: nexon;">총 거리</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel w3-card-4">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-clock-o fa-5x"></i>
							</div>

							<div class="col-xs-9 text-right">
								<div class="huge" style="font-family: nexon;">${myAlltime}
									h</div>

								<div style="font-family: nexon;">시간</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel w3-card-4">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-group fa-5x"></i>
							</div>

							<div class="col-xs-9 text-right">
								<div class="huge" style="font-family: nexon;">${myGr_gr}</div>

								<div style="font-family: nexon;">가입 그룹 수</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel w3-card-4">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-flag-checkered fa-5x"></i>
							</div>

							<div class="col-xs-9 text-right">
								<div class="huge" style="font-family: nexon;">${myRiding}</div>

								<div style="font-family: nexon;">완료한 라이딩 수</div>
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
						<h3 class="panel-title" style="font-family: sung;">
							<i class="fa fa-bar-chart-o fa-fw"></i> Area Chart
						</h3>
					</div>
					<div class="panel-body">



						<!--  그래프  -->
						<td><div id="chart_div2" style="width: 100%; height: 500px;" /></td>


						<script type="text/javascript"
							src="https://www.gstatic.com/charts/loader.js"></script>
						<script type="text/javascript">
      //차트 및 코어 차트 패키지를 로드함.
      
      
      
      
      
      
      
      
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);
   
      function drawVisualization() {         

          
         
         $.ajax({
            url:"WeekData",
            success:function(datata){
                    
               var data3;
              // var time= data2[0].alltime.split("/");
             //  time=time[2];
             //console.log(data2);
             
                         
               data3 = new google.visualization.DataTable();
               data3.addColumn('string', '요일별 총거리, 시간');
               data3.addColumn('number', '총거리(미터)');
               data3.addColumn('number', '총시간(분)');
               data3.addRows(7);
               
      /*           for(var i=0; i<=7; i++){
                 data3.setCell(i, 0, '${i.startDate}');0
                   data3.setCell(i, 1, '${i.alldistance}');
                   data3.setCell(i, 2, '${i.alltime}');
              }  */
       
         var s;
              var a;
              var k;
              var g;
           
              
            <c:forEach items="${WeekData}" var="i"  varStatus="status">    
            
            
           s = "${i.alltime}";
              a = s.split ("/");
                 
              var abc = (a[0]*60)//+":"+ a[2];    
           var ab = a[1];
           var aaa = parseInt(abc) + parseInt(ab);    
              
           
       
              
              
              
              /* if(a[0]==0){   　　
                 abc = "00:"
                 
                 if(a[1]==0){
                     abc += "00:"; 
                  }
                  if(a[1]!=0&a[1]>9){
                     abc += a[1]+":";   
                  }
                  if(a[1]!=0&a[1]<10){
                     abc += "0" + a[1] +":";
                  }
                    if(a[2]==0){    
                       abc += "00";             
                    }
                    if(a[2]!=0&a[2]>9){
                       abc += a[2];    
                    }
                    if(a[2]!=0&a[2]<10){
                       abc += "0" + a[2];  
                    }
              } 
                      
              if(a[0]<10&a[0]!=0){       　　
                  abc = "0"+a[0]+":";
               if(a[1]==0){
                  abc += "00:"
               }  
               if(a[1]<10&a[1]!=0){
                   abc += "0"+a[1]+":";
                }
               if(a[1]>9&a[1]!=0){
                  abc += a[1] + ":";
               }
                  if(a[2]==0){
                      abc += "00"
                   }  
                  if(a[2]<10&a[2]!=0){
                     abc += "0"+a[2];
                  } 
                  if(a[2]>9&a[2]!=0){
                     abc += a[2]; 
                  }
               } 
             
              if(a[0]>9&a[0]!=0){       　　 
               abc = a[0]+":";
            if(a[1]==0){
               abc += "00:"
            }  
            if(a[1]<10&a[1]!=0){
                abc += "0"+a[1]+":";
             }
            if(a[1]>9&a[1]!=0){
               abc += a[1] + ":";
            }
                  if(a[2]==0){
                      abc += "00"
                   }  
               if(a[2]<10&a[2]!=0){
                  abc += "0"+a[2];
               } 
               if(a[2]>9&a[2]!=0){
                  abc += a[2]; 
               }
            }  */
              
            
              
            
              k = '${i.startDate}';
              g = k.substr(0,10);
              
              var abcd = g+abc;
            
          data3.setCell(${status.index}, 0, g); //+ '　'+ abc);       
         
            var allD = '${i.alldistance}'
            var allT = '${i.alltime}'
            
            data3.setCell(${status.index}, 1, parseInt(allD));
            data3.setCell(${status.index}, 2, parseInt(aaa));
            
            
           </c:forEach> 
               
              /*  data3.setCell(0, 0, '월');
               data3.setCell(0, 1, 44);
               data3.setCell(0, 2, 22);

               data3.setCell(1, 0, '화');
               data3.setCell(1, 1, 22);
               data3.setCell(1, 2, 22);
               
               data3.setCell(2, 0, '수');
               data3.setCell(2, 1, 22);
               data3.setCell(2, 2, 22);
               
               data3.setCell(3, 0, '목');
               data3.setCell(3, 1, 22);
               data3.setCell(3, 2, 22);
               
               data3.setCell(4, 0, '금');
               data3.setCell(4, 1, 22);
               data3.setCell(4, 2, 22);
               
               data3.setCell(5, 0, '토');
               data3.setCell(5, 1, 22);
               data3.setCell(5, 2, 22);
               
               data3.setCell(6, 0, '일');
               data3.setCell(6, 1, 22);
               data3.setCell(6, 2, 22);   */
        
               var options = {
                     
                       title: '최근 데이터',
                       colors: ['pink', 'skyblue'], 
                       titleTextStyle: { color: '#264158', fontSize: 24 },
                       seriesType: 'bars',
                       annotations: {
                           alwaysOutside: true,
                           textStyle: {
                               color: '#000000',
                               fontSize: 15
                           }
                       },
                       textStyle: {
                             color: 'red',  
                             fontSize: 20,
                             fontName: 'Arial',
                             bold: true,
                             italic: true
                          },
                          titleTextStyle: {
                             color: '#01579b',
                             fontSize: 20,
                             fontName: 'Arial',
                             bold: false,
                             italic: true
                          },
                       hAxis: {
                          textStyle : {
                             fontSize: 17 // or the number you want
                               
                                 
                         },
                           slantedText: true,
                           slantedTextAngle: -45
                       },
                       series: {
                           0: { targetAxisIndex: 0, },
                           1: { targetAxisIndex: 1, type: 'line' }
                       },
                       vAxes: {
                           0: { textPosition: 'left' },
                           1: { textPosition: 'right'}
                       }             
                   };
     

               var chart = new google.visualization.ComboChart(document.getElementById('chart_div2'));
               chart.draw(data3, options);
                  
            }
         });
         
         
         
      }
      
      
     
   </script>




						<div id="morris-area-chart"></div>
					</div>
				</div>
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

	<!-- Footer -->





	<!-- /.container -->

	<!-- jQuery -->
	<script src="./resources/js2/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="./resources/js2/bootstrap.min.js"></script>
	<script>
   	var myFirst = "${first1}"; //내가 가입한 그룹중 1등 그룹 하나만 출력
   	var groupFrist = "${groupFrist}"; //그룹전체에서 1등 출력
   	var groupSecon = "${groupSecon}"; //그룹전체에서 2등 출력
   	var groupTh = "${groupTh}"; //그룹전체에서 3등 출력
   	if(myFirst == groupFrist){
   		$("#rankk").css({"background":"url(../resources/img/bg_gold.png)", 'background-repeat' : 'no-repeat', 'background-position':'center center'});    	
        $("#rankkk").attr("src","./resources/img/yonggold.png");
   	};
   	if(myFirst==groupSecon){
   		$("#rankk").css({"background":"url(../resources/img/bg_silver.png)", 'background-repeat' : 'no-repeat', 'background-position':'center center'});
   		$("#rankkk").attr("src","./resources/img/yongsilver.png");
   	};
   	if(myFirst==groupTh){
   		$("#rankk").css({"background":"url(../resources/img/bg_bronze.png)", 'background-repeat' : 'no-repeat', 'background-position':'center center'});
   		$("#rankkk").attr("src","./resources/img/yongbronze.png");
   	};
   </script>
	<script>
		$('.carousel').carousel({
			interval : 5000
		//changes the speed
		});
	</script>

	<script>
	var uid = "${uid}";	//
	var template = Handlebars.compile($("#templateAttach").html());	
	
	$.getJSON("getAttach/"+uid,function(list){
		$(list).each(function(){
			
			var fileInfo = getFileInfo(this);
			
			var html = template(fileInfo);
			var aaa = 1;
			
			if(aaa=1){
			 	$(".uploadedList").append(html);
				aaa++;
			}
			
		});
	});
<<<<<<< HEAD
=======

      <!-- Page Heading/Breadcrumbs -->
      <div class="row" style="font-family: sung;">
         <div class="col-lg-12">
            <h1 class="page-header" style="font-family: nexon;">${uid}님&nbsp;&nbsp;안녕하세요</h1>
         </div>
      </div>
      <!-- /.row -->

      <!-- Content Row -->
      <ul class="nav nav-tabs">
         <li class="active"><a href="#" style="font-family: sung;">내정보</a></li>
         <li  style="font-family: sung;"><a href="calendar?uid=${uid}">달력</a></li>
         <!-- data-toggle="tab" <a href="calendar?uid=${uid}">달력</a> -->
      </ul>

      <br>
      <div class="row">

         <!-- Blog Post Content Column -->
         <div class="col-lg-12" id="content">

            <!-- Preview Image -->
            <div class="w3-card-4 w3-round-xxlarge"style="height: 600px;  border-color: #ddd;background: url('./resources/img/bg_gold.png') no-repeat center center
      scroll;">
               <span style="font-family: nexon; position: absolute; font-size: 40px;margin-top: 37px;margin-left: 100px;">No : 001</span>
               <span style="font-size: 80px;font-family: nexon;margin-left: 340px; ">Member Card</span>
               <span style="font-family: nexon; position: absolute; font-size: 40px;margin-top: 37px;float: right; margin-left: 50px;">2017-07-20</span>
               <div id="pngg" style="position: absolute; width: 395px; height: 395px; background-color: black;margin-left: 60px;"></div>
               <table style="position:absolute; width: 600px; height: 300px;margin-left: 520px; font-family: nexon;font-size: 40px;">
               
                  <tr> 
                     <td>ID - ${uid}</td>
                  </tr>
                  <tr>
                     <td>평균속도 - 40km/h</td>
                  </tr>
                  <tr>
                     <td>평균거리 - 86km</td>
                  </tr>
        <!-- 성재형 hi bro-->   	
           	<c:forEach items="${myGroup1}" var="i">
                  <tr>
                     <td id="td1">${i.gr_name}</td>
                  </tr>
            </c:forEach>
         <!-- 성재형 hi bro--> 
          
               </table>
               <img style="position: absolute; width: 400px; height: 400px; right: 695px; top: 117px;"  src='./resources/img/yonggold.png'/>
               <img style="position: absolute; width: 180px; height: 180px;margin-top: 412px;left: 970px;z-index: 100;"  src='./resources/img/yong.png'/>
               <span style="position: absolute;font-family: nexon;left:500px; margin-top: 450px;font-size: 100px; width: 800px; height: 200px;">GROUP RIDING</span>
            </div>
               
         </div>




      </div>
      <br>

      <div class="row">
         <div class="col-lg-3 col-md-6">
            <div class="panel w3-card-4">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-3">
                        <i class="fa fa-bicycle fa-5x"></i>
                     </div>

                     <div class="col-xs-9 text-right">
                        <div class="huge" style="font-family: nexon;">${myAlldistance}</div>

                        <div style="font-family: nexon;">총 거리</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-md-6">
            <div class="panel w3-card-4">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-3">
                        <i class="fa fa-clock-o fa-5x"></i>
                     </div>

                     <div class="col-xs-9 text-right">
                        <div class="huge" style="font-family: nexon;">${myAlltime} h</div>

                        <div style="font-family: nexon;">시간</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-md-6">
            <div class="panel w3-card-4">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-3">
                        <i class="fa fa-group fa-5x"></i>
                     </div>

                     <div class="col-xs-9 text-right">
                        <div class="huge" style="font-family: nexon;">${myGr_gr}</div>

                        <div style="font-family: nexon;">가입 그룹 수</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3 col-md-6">
            <div class="panel w3-card-4">
               <div class="panel-heading">
                  <div class="row">
                     <div class="col-xs-3">
                        <i class="fa fa-flag-checkered fa-5x"></i>
                     </div>

                     <div class="col-xs-9 text-right">
                        <div class="huge" style="font-family: nexon;">${myRiding}</div>

                        <div style="font-family: nexon;">완료한 라이딩 수</div>
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
                  <h3 class="panel-title" style="font-family: sung;">
                     <i class="fa fa-bar-chart-o fa-fw" ></i> Area Chart
                  </h3>
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
         <div class="col-lg-12" style="font-family: sung;">
            <p>Copyright &copy; GROUP RIDING 2017</p>
         </div>
      </div>
      </footer>

   </div>

   <!-- Footer -->





   <!-- /.container -->

   <!-- jQuery -->
   <script src="./resources/js2/jquery.js"></script>

   <!-- Bootstrap Core JavaScript -->
   <script src="./resources/js2/bootstrap.min.js"></script>
   <script>
      $('.carousel').carousel({
         interval : 5000
      //changes the speed
      });
   </script>
   
   <script>
   var uid = "${uid}";   //
   var template = Handlebars.compile($("#templateAttach").html());   
   
   $.getJSON("getAttach/"+uid,function(list){
      $(list).each(function(){
         
         var fileInfo = getFileInfo(this);
         
         var html = template(fileInfo);
         var aaa = 1;
         
         if(aaa=1){
             $(".uploadedList").append(html);
            aaa++;
         }
         
      });
   });

>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6
</script>
	<script>
$(document).ready(
		function() {
			var uid = "${uid}";
			$.getJSON("getAttach/" + uid, function(list) {

<<<<<<< HEAD
				var img = $("<img/>").attr('src',
						"/displayFile?fileName=" + list[0]);
				img.css("width", "35px");
				img.css("height", "35px");
				
				 var pngg = $("<img/>").attr('src',
		                    "/displayFile?fileName=" + list[0]);
		            pngg.css("width", "395px");
		            pngg.css("height", "395px");   

		            $("#pngg").prepend(pngg);
		            
				$("#profile").prepend(img);
				

				var logoutform = $("form[data-role='out']");
=======
            var img = $("<img/>").attr('src',
                  "/displayFile?fileName=" + list[0]);
            img.css("width", "35px");
            img.css("height", "35px");
            
            var pngg = $("<img/>").attr('src',
                    "/displayFile?fileName=" + list[0]);
            pngg.css("width", "395px");
            pngg.css("height", "395px");	

            $("#pngg").prepend(pngg);
            
            $("#profile").prepend(img);

>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6

				$("#logout").click(function() {

					logoutform.submit();
				});

			});

<<<<<<< HEAD
		});
=======
         });


      });

>>>>>>> c14b608c5d8f67ef612ea3d470080c4880d58cb6
</script>

</body>

</html>
