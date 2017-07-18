<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <!-- Bootstrap Core CSS -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="./resources/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="./resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<style>
.huge {
    font-size: 40px;
}

.panel-green {
    border-color: #5cb85c;
}

.panel-green > .panel-heading {
    border-color: #5cb85c;
    color: #fff;
    background-color: #5cb85c;
}

.panel-green > a {
    color: #5cb85c;
}

.panel-green > a:hover {
    color: #3d8b3d;
}

.panel-red {
    border-color: #d9534f;
}

.panel-red > .panel-heading {
    border-color: #d9534f;
    color: #fff;
    background-color: #d9534f;
}

.panel-red > a {
    color: #d9534f;
}

.panel-red > a:hover {
    color: #b52b27;
}

.panel-yellow {
    border-color: #f0ad4e;
}

.panel-yellow > .panel-heading {
    border-color: #f0ad4e;
    color: #fff;
    background-color: #f0ad4e;
}

.panel-yellow > a {
    color: #f0ad4e;
}

.panel-yellow > a:hover {
    color: #df8a13;
}

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

    <!-- Header Carousel -->
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

        <!-- /.row -->
         <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">OOO님 안녕하세요</h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <ul class="nav nav-tabs">
            <li class="active" ><a href="#">내정보</a></li>
            <li><a href="calendar?uid=${uid}">달력</a></li>  <!-- data-toggle="tab" <a href="calendar?uid=${uid}">달력</a> -->
		</ul>


        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-12" id="content">
				
                <table class="table table-striped table-bordered table-hover" style="float: center;">
                <thead>
                    <tr>
                        <td colspan="3" style="text-align: center;"><h3>MY PROFILE</h3></td>
                    </tr>
                    </thead>
                    <tbody style="text-align: center;">
                    <tr>
                        <td rowspan="5"><img class="img-responsive" src="http://placehold.it/500x300" alt="" style="width: 100%;"></td>
                        <td>아이디</td>
                        <td>sung564</td>
                    </tr>
                    <tr>
                        <td>자전거 등록번호</td>
                        <td>321412-2233</td>
                    </tr>
                    <tr>
                        <td>소속그룹</td>
                        <td>비앙키, 스페셜라이즈드</td>
                    </tr>
                    <tr>
                        <td>평균속도</td>
                        <td>43km/h</td>
                    </tr>
                    <tr>
                        <td>평균거리</td>
                        <td>123km</td>
                    </tr>
                    </tbody>
                </table>
                <!-- Preview Image -->
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

        <!-- Footer -->
 




    <!-- /.container -->

    <!-- jQuery -->
    <script src="./resources/js2/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="./resources/js2/bootstrap.min.js"></script>
	<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    });
    
   
    </script>
  
   
</body>

</html>
