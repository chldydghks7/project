<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
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
    <link href="./resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
    background: url('./resources/img/bike.jpg') no-repeat center center scroll;
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
    background: url('./resources/img/bike3.jpg') no-repeat center center scroll;
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
    background: url('./resources/img/bike5.jpg') no-repeat center center scroll;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    background-size: cover;
    -o-background-size: cover;

}
.text-vertical-center {
    display: table-cell;
    text-align: center;
    vertical-align: middle;
    background-color: rgba( 0, 0, 0, 0.5 );
}
</style>

</head>

<body>
<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
                                <a href="MyInfo?uid=${uid}">My Information</a>
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
    
    <header id="myCarousel" class="carousel slide" style="height: 30%;background: url('./resources/img/bike22.jpeg') no-repeat center center scroll;">

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="carousel-caption" style="bottom:60px;">
                    <h1 style="font-size: 40px;">Notice Info</h1></br>
                </div>
            </div>
        </div>
    </header>

		<!--=== End Header ===-->

		
		
	
		<div class="container">
			<div class="row" style="padding: 50px 50px 50px 10px;">
				<div class="col-lg-12">
					<div id="map_div"></div>
		
		
					<%-- 출발지점 : ${info.start_point} <br><br>
					도착지점 : ${info.end_point} <br><br> --%>
					
					그룹명 : ${info.gr_name}	<br><br>	
					공지제목 : ${info.notice_title} <br><br>
					출발날짜 : ${info.ridingDate} <br><br>
					출발시간 : ${info.ridingTime} <br><br>
					준비물 : ${info.material}<br><br>
					
					
					<form action="joinNotice" method="post">
						<div id="ox">
							<input type="hidden" name="uid" value="${uid}">
							<input type="hidden" name="noticeId" value="${info.noticeId}">
							<input type="submit" id="o" name="joing" value="참여" />
							<input type="submit" id="x" name="joing" value="불참" />
						</div>
					</form>
					
					<form action="updateCheck" method="get">
						<input type="hidden" name="noticeId" value="${info.noticeId}">
						<input type="hidden" name="uid" value="${uid}">
						<input type="submit" style="color:red;" id="oo" name="joing" value="참여" />
						<input type="submit" style="color:red;" id="xx" name="joing" value="불참" />
					</form>
					
					<h4 id="ooo">참여됨</h4>
					<h4 id="xxx">불참됨</h4>
					
					
						<table border="1">
							<tr>
								<th>맴버</th>
								<th>참불</th>
							</tr>
								
								<c:forEach items="${memberjoininfo}" var="i">
									<tr style="text-align: center;">
										<td>${i.uid}</td>
										<td>${i.joing}</td>
									</tr>
								</c:forEach>
						</table>
				
					
				</div>
			</div>
		</div><!--/container-->
	

<!-- jQuery -->
    <script src="./resources/js2/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="./resources/js2/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
    
    <script type="text/javascript" src="./resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">

 <img src="{{imgsrc}}" alt="Attachment">

               
</script>  


<script>



$(document).ready(function(){
	var uid = "${uid}";
	$.getJSON("getAttach/"+uid,function(list){
		
		var img=$("<img/>").attr('src',"/displayFile?fileName="+list[0]);
		img.css("width","50px");
		img.css("height","50px");
		
		$("#profile").prepend(img);
		
		
		
	var logoutform=$("form[data-role='out']");
	
	$("#logout").click(function(){
		
		logoutform.submit();
	});
	
		
	});
	
	
});
</script>


<!-- 지도 -->
<script>
	$("#oo").hide();
	$("#xx").hide();
	$("#ooo").hide();
	$("#xxx").hide();

	var joinCheck = "${joinCheck}"
	if(joinCheck=="참여") {
		$("#ox").hide();
		$("#xx").show();
		$("#ooo").show();
	} else if(joinCheck=="불참"){
		$("#ox").hide();
		$("#oo").show();
		$("#xxx").show();
	}
	
</script>

<script>
		map = new Tmap.Map({div:'map_div',
		                        width:'50%', 
		                        height:'400px',
		                        transitionEffect:"resize",
		                        animation:true
		                    }); 
		    map.setCenter(new Tmap.LonLat(14315520.90430,4283115.74626), 11);
		    map.addControl(new Tmap.Control.KeyboardDefaults());
            map.addControl(new Tmap.Control.MousePosition());
		    searchRoute();


		//경로 정보 로드
		function searchRoute(){
			var startPoint = "${info.start_point}";
			var endPoint = "${info.end_point}";
			// lon=14318318.42280631,lat=4286211.12903949
			var startx = new String(startPoint).substr(4, 17);   // 경도 자르기
			var starty = new String(startPoint).substr(26);   // 경도 자르기
              
			var stopx = new String(endPoint).substr(4, 17);   // 경도 자르기
            var stopy = new String(endPoint).substr(26);   // 경도 자르기
                

		    var routeFormat = new Tmap.Format.KML({extractStyles:true, extractAttributes:true});
		    var startX = new Object(startx);
		    var startY = new Object(starty);
		    var endX = new Object(stopx)// 14136027.789587;
		    var endY = new Object(stopy)// 4517572.4745242;
		    var urlStr = "https://apis.skplanetx.com/tmap/routes?version=1&format=xml";
		    urlStr += "&startX="+startX;
		    urlStr += "&startY="+startY;
		    urlStr += "&endX="+endX;
		    urlStr += "&endY="+endY;
		    urlStr += "&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b";
		    var prtcl = new Tmap.Protocol.HTTP({
		                                        url: urlStr,
		                                        format:routeFormat
		                                        });
		    var routeLayer = new Tmap.Layer.Vector("route", {protocol:prtcl, strategies:[new Tmap.Strategy.Fixed()]});
		    routeLayer.events.register("featuresadded", routeLayer, onDrawnFeatures);
		    map.addLayer(routeLayer);
		}
		
		//경로 그리기 후 해당영역으로 줌
		function onDrawnFeatures(e){
		    map.zoomToExtent(this.getDataExtent());
		}	
</script>

</body>
</html>
