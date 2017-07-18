<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
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
    
    <header id="myCarousel" class="carousel slide" style="height: 30%;background: url('./resources/img/bike22.jpeg') no-repeat center center scroll;">

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="carousel-caption" style="bottom:60px;">
                    <h1 style="font-size: 40px;">GROUP LIST</h1></br>
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
                    <li><a href="groupList">My Group</a>
                    </li>
                    <li class="active"><a href="#">Other Group</a>
                    </li>

                </ol>
            </div>
        </div>
		
		
		<div class="row text-center">
			<!-- Pricing -->
			<c:forEach items="${listother}" var="group">
			
				
						<div class="col-md-3 col-sm-6 hero-feature" >
							<div class="thumbnail">
							<img src="/displayFile?fileName=${group.gr_icon}" />
							<div class="caption">
		                        <h3>${group.gr_name}</h3>
		                        <p>${group.gr_content}</p>
		                        <p>
		                        	<a class="btn btn-primary" href="groupInfo?gr_name=${group.gr_name}&gr_id=${group.gr_id}&uid=${uid}">INFO</a>
		                        </p>   
		  
                  		  	</div>
							</div>
						
						</div>
						
					
				</c:forEach>	
			
			
			</div>
				<!--/row-->
				
			
			<form action="create_gr" method="get" >
					<button type="submit" style="background-color:yellow; width:100px; height:100px; font-size:50px;margin-left: 92%;">+</button>
				</form>
			
			
			
			 <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2017</p>
                </div>
            </div>
        </footer>
			
			
			
			
			
			<!-- End Pricing -->
		</div><!--/container-->
	
		


</body>
</html>
