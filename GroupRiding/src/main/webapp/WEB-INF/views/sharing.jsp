<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
   <title>Pricing | Unify - Responsive Website Template</title>

   <!-- Meta -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta name="description" content="">
   <meta name="author" content="">

   <!-- Favicon -->
   <link rel="shortcut icon" href="./resources/favicon.ico">


   <!-- CSS Global Compulsory -->
   <link rel="stylesheet" href="./resources/assets/plugins/bootstrap/css/bootstrap.min.css">
   <link rel="stylesheet" href="./resources/assets/css/style.css">

   <!-- CSS Header and Footer -->
   <link rel="stylesheet" href="./resources/assets/css/headers/header-default.css">
   <link rel="stylesheet" href="./resources/assets/css/footers/footer-v1.css">

   <!-- CSS Implementing Plugins -->
   <link rel="stylesheet" href="./resources/assets/plugins/animate.css">
   <link rel="stylesheet" href="./resources/assets/plugins/line-icons/line-icons.css">
   <link rel="stylesheet" href="./resources/assets/plugins/font-awesome/css/font-awesome.min.css">
   <link rel="stylesheet" href="./resources/assets/plugins/fancybox/source/jquery.fancybox.css">

   <!-- CSS Theme -->
   <link rel="stylesheet" href="./resources/assets/css/theme-colors/default.css" id="style_color">
   <link rel="stylesheet" href="./resources/assets/css/theme-skins/dark.css">

   <!-- CSS Customization -->
   <link rel="stylesheet" href="./resources/assets/css/custom.css">
   
   <style>
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
   </style>
</head>

<body>
   <div class="wrapper">
      <!--=== Header ===-->
      <div class="header">
         <div class="container">
            <!-- Logo -->
            <a class="logo" href="mainlogin">
               <img src="./resources/assets/img/logo1-default.png" alt="Logo">
            </a>
            <!-- End Logo -->

            <!-- Topbar -->
            <div class="topbar">
               <ul class="loginbar pull-right">
                  <li class="topbar-devider"></li>
                  <li><a href="page_login.html">Login</a></li>
               </ul>
            </div>
            <!-- End Topbar -->

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
               <span class="sr-only">Toggle navigation</span>
               <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
         </div><!--/end container-->

         <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
               <ul class="nav navbar-nav">
                  <!-- Home -->
                  <li class="dropdown active">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Home
                     </a>
                  <!-- End Home -->

                  <!-- Pages -->
                  <li class="dropdown">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Group
                     </a>
                     <ul class="dropdown-menu">
                        <!-- About Pages -->
                        <li class="dropdown-submenu">
                           <a href="groupList">GroupList</a>
                        </li>
                        <!-- End About Pages -->

                        <!-- Service Pages -->
                        <li class="dropdown-submenu">
                           <a href="groupRank">Ranking</a>
                        </li>
                        <!-- End Service Pages -->
                     </ul>
                  </li>
                  <!-- End Pages -->

                  <!-- Blog -->
                  <li class="dropdown">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Info
                     </a>
                     <ul class="dropdown-menu">
                        <li class="dropdown-submenu">
                           <a href="calendar?uid=${uid}">Calendar</a>
                        </li>
                        <li class="dropdown-submenu">
                           <a href="Ridingdata">Riding Data</a>
                        </li>
                     </ul>
                  </li>
                  <!-- End Blog -->

                  <!-- Portfolio -->
                  <li class="dropdown">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Sharing
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="sharing">Sharing</a></li>
                     </ul>
                  </li>
                  <!-- End Portfolio -->

                  <!-- Features -->
                  <li class="dropdown">
                     <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Hot Place
                     </a>
                     <ul class="dropdown-menu">
                        <li class="dropdown-submenu">
                           <a href="hotPlaceMap">Hot Place</a>
                        </li>
                        <!-- <li class="dropdown-submenu">
                           <a href="restaurantList">Restaurant</a>
                        </li>
                        <li><a href="hotelList">Hotel</a></li> -->
                     </ul>
                  </li>
                  <!-- End Features -->

                  <!-- Search Block -->
                  <li>
                     <i class="search fa fa-search search-btn"></i>
                     <div class="search-open">
                        <div class="input-group animated fadeInDown">
                           <input type="text" class="form-control" placeholder="Search">
                           <span class="input-group-btn">
                              <button class="btn-u" type="button">Go</button>
                           </span>
                        </div>
                     </div>
                  </li>
                  <!-- End Search Block -->
               </ul>
            </div><!--/end container-->
         </div><!--/navbar-collapse-->
      </div>
      <!--=== End Header ===-->

      <!--=== Breadcrumbs ===-->
      <div class="breadcrumbs">
         <div class="container">
            <h1 class="pull-left">Sharing</h1>
            <ul class="pull-right breadcrumb">
               <li><a href="/">Home</a></li>
               <li class="active">Sharing</li>
            </ul>
         </div>
      </div><!--/breadcrumbs-->
      <!--=== End Breadcrumbs ===-->

      <!--=== Content Part ===-->
      <div class="container content">
         <div class="row">

            <!-- Begin Content -->
            <form id = "form">
               <button id = "newBtn" class = "btn btn-default rounded" style = "margin-left:96%;">글쓰기</button>
            </form>
            
            <br/><br/>
            <div>
               <!-- Thumbnails v1 -->
               <div class = "row">
                  <c:forEach items = "${board}" var = "board">
                     <div class="col-md-4">
                        <div class="thumbnails thumbnail-style thumbnail-kenburn">
                        <p class = "w_id" style = "display:none;">${board.writing_Id}</p>
                        <img src="./resources/img/hearts.png" class="likeCnt">&nbsp;&nbsp;&nbsp; ${board.view_Number}
                        <p class = "cnt" style = "display:none;">${board.view_Number}</p>  
                           <div class="thumbnail-img">
                              <div class="overflow-hidden">
                                 <img class="img-responsive" src="${board.bbs_FilePath}" alt="" />
                              </div>
                              <a class="test btn-more hover-effect" href="${board.writing_Id}" data-toggle = "modal" data-target = "#myModal" data-backdrop="static" data-keyboard="false">read more +</a>
                           </div>
                           <div class="caption">
                              <h3>${board.writing_title}</h3>
                           </div>
                        </div>
                     </div>   
                  </c:forEach>
               </div>
               
               <!-- End Thumbnails v1 -->
            </div>
            <!-- End Content -->
         </div>
      </div><!--/container-->
      <!--=== End Content Part ===-->

      <!--=== Footer Version 1 ===-->
      <div class="footer-v1">
         <div class="footer">
            <div class="container">
               <div class="row">
                  <!-- About -->
                  <div class="col-md-3 md-margin-bottom-40">
                     <a href="/"><img id="logo-footer" class="footer-logo" src="./resources/assets/img/logo2-default.png" alt=""></a>
                     <p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
                     <p>Duis eleifend fermentum ante ut aliquam. Cras mi risus, dignissim sed adipiscing ut, placerat non arcu.</p>
                  </div><!--/col-md-3-->
                  <!-- End About -->

                  <!-- Latest -->
                  <div class="col-md-3 md-margin-bottom-40">
                     <div class="posts">
                        <div class="headline"><h2>Latest Posts</h2></div>
                        <ul class="list-unstyled latest-list">
                           <li>
                              <a href="#">Incredible content</a>
                              <small>May 8, 2014</small>
                           </li>
                           <li>
                              <a href="#">Best shoots</a>
                              <small>June 23, 2014</small>
                           </li>
                           <li>
                              <a href="#">New Terms and Conditions</a>
                              <small>September 15, 2014</small>
                           </li>
                        </ul>
                     </div>
                  </div><!--/col-md-3-->
                  <!-- End Latest -->

                  <!-- Link List -->
                  <div class="col-md-3 md-margin-bottom-40">
                     <div class="headline"><h2>Useful Links</h2></div>
                     <ul class="list-unstyled link-list">
                        <li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
                     </ul>
                  </div><!--/col-md-3-->
                  <!-- End Link List -->

                  <!-- Address -->
                  <div class="col-md-3 map-img md-margin-bottom-40">
                     <div class="headline"><h2>Contact Us</h2></div>
                     <address class="md-margin-bottom-40">
                        25, Lorem Lis Street, Orange <br />
                        California, US <br />
                        Phone: 800 123 3456 <br />
                        Fax: 800 123 3456 <br />
                        Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
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
                        2015 &copy; All Rights Reserved.
                        <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
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
   
    <!-- Modal -->
    <div id = "myModal" class = "modal fade" role = "dialog">
      <div class = "modal-dialog">
         <div class = "modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
               <%-- <p style="float: left">제목: ${read.writing_title}</p>
               <br>
               <hr>
               <div>
                  <img src="./displayFile?fileName=${read.bbs_FilePath}" id="s-img">
               </div>
               <hr>
               <div id="s-content">
                  <p>내용 : ${read.writing_content}</p>
                  <p>글번호 : ${read.writing_Id}</p>
               </div> --%>
            </div>
            <div class="modal-footer">
               <!-- <img src="./resources/img/hearts.png" id="like"> -->
               <input type="text" id="s-reply" />
               <input type = "text" id = "uid" style = "display: none;" value = "${uid}"/>
               <button id="addReply" class="btn btn-default">댓글등록</button>
            </div>
         </div>
      </div>
   </div>

   <!-- JS Global Compulsory -->
   <script type="text/javascript" src="./resources/assets/plugins/jquery/jquery.min.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- JS Implementing Plugins -->
   <script type="text/javascript" src="./resources/assets/plugins/back-to-top.js"></script>
   <script type="text/javascript" src="./resources/assets/plugins/smoothScroll.js"></script>
      <script type="text/javascript" src="./resources/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
   <!-- JS Customization -->
   <script type="text/javascript" src="./resources/assets/js/custom.js"></script>
   <!-- JS Page Level -->
   <script type="text/javascript" src="./resources/assets/js/app.js"></script>
   <script type="text/javascript" src="./resources/assets/js/plugins/style-switcher.js"></script>
   <script type="text/javascript" src="./resources/assets/js/plugins/fancy-box.js"></script>
   <script type="text/javascript" src="./resources/js/upload.js"></script>
   <script type="text/javascript">
      jQuery(document).ready(function() {
         App.init();
         StyleSwitcher.initStyleSwitcher();
      });
      
      var form = $("#form");
      
      $("#addReply").on("click", function() {
    	 var id = $("#w_id").text();
    	 var replyer = $("#uid").val();
    	 var replyText = $("#s-reply").val();
    	 
    	 alert(id + ", " + replyer + ", " + replyText);
    	 
    	 $.ajax({
    		type: 'post',
    		url: 'replies',
    		headers: {
    			"content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
    		},
    		dataType: 'text',
    		data: JSON.stringify({
    			writing_Id: id,
    			uid: replyer,
    			replyText: replyText
    		}),
    		success: function(result, status) {
    			if(result == "SUCCESS") {
    				getAllReplies();
    			}
    		}
    	 });
      });
      
      $(".likeCnt").on("click", function() {
    	  event.preventDefault();
    	  var id = $(this).prev().text();
    	  var cnt = $(this).next().text();
    	  
    	  ++cnt;
    	  
    	  alert(cnt + ", " + id);
    	  
    	  $.ajax({
    		  url: 'likeShar',
    		  type: 'post',
    		  data: {
    			  writing_Id: id,
    			  view_Number: cnt
    		  },
    		  success: function(data) {
    			  if(data) {
    				  alert('성공');
    			  }
    		  },
    		  error: function() {
    			  alert('실패');
    		  }
    	  });
      });
      
      $("#newBtn").on("click", function() {
         form.attr('action', 'sharingForm');
         form.attr('method', 'get');
         form.submit();
      });
      
      $(".test").on("click", function () {
         event.preventDefault();
         var   title = $(this).attr("href");
         alert(title);
         /* form.attr("action", "sharing");
         form.attr("method", "get");
         $("<input type = 'text' name = 'writing_Id' value = '" + title + "'>").appendTo(form);
         form.submit(); */
         
         $.ajax({
            url: 'readShar',
            type: 'get',
            data: {
               writing_Id: title
            },
            success: function(data) {
               if(data) {
                  alert('전송');
                  console.log(data);
               }
               var html = "";
               html = "<h3 style = 'float: left'>제목 : " + data.writing_title + "</h3>"
               		 + "<p style = 'display: none;' id = 'w_id'>" + data.writing_Id + "</p>"
               		 + "<p style = 'float: right;'>작성자 : " + data.member_Id + "</p><br>"
                     + "<hr><div><img id = 's-img' src = '"+ data.bbs_FilePath + "'></div>"
                     + "<hr><div id = 's-content'>내용 : " + data.writing_content + "</div><hr>"
                     + "<div><ul class = 'timeline'></ul></div>";
                     
               $(".modal-body").append(html);      
               
               getAllReplies();
               
               function getAllReplies() {
            	   $.getJSON("replies/all/" + title, function(data) {
                    	 var str = ""; 
                    	 console.log(data);
                    	 $(data.list).each(function() {
                    		str += "<li data-rno = '" + this.rno + "' class = 'replyLI'>"
                    			+ "<span class = 'reply replyNum'>" + this.uid + " : </span>"
                    			+ "<span class = 'reply replyText'>" + this.replyText + "</span>";
                    	 });
                    	 $('.timeline').append(str);
                      });
               }
            },
            error: function() {
               alert('에러');
            }
         });
      });
      
      $(".close").on("click", function() {
         event.preventDefault();
         $(".modal-body").html("");
      });
   </script>
<!--[if lt IE 9]>
   <script src="assets/plugins/respond.js"></script>
   <script src="assets/plugins/html5shiv.js"></script>
   <script src="assets/plugins/placeholder-IE-fixes.js"></script>
   <![endif]-->

</body>
</html>