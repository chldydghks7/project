<%@ page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
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
   <link rel="stylesheet" href="./resources/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
   <link rel="stylesheet" href="./resources/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

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
         height: 350px;
      }
      #s-reply {
         width: 400px;
         margin-right: 20px;
      }
      .modal-body {
         height: 700px;
      }
      
      #myPic>img{
      margin-right:10px;
      width:210px;
      height: 150px;
      }
      
      .logo, .footer-logo {
         width: 200px;
         heigth: 100px;
      }
      
      #myRoute{
      width:600px;}
      
      #RouteMap{
      width:300px;
      height:300px;
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
               <img src="./resources/img/logo(b).png" alt="Logo">
            </a>
            <!-- End Logo -->

            <!-- Topbar -->
            <div class="topbar">
               <ul class="loginbar pull-right">
                  <li class="topbar-devider"></li>
                  <li><a href="logout">Logout</a></li>
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
                        <li class="dropdown-submenu">
                             <a href="racePoint">RacePoint</a>
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
            <h1 class="pull-left">Picture</h1>
            <ul class="pull-right breadcrumb">
               <li><a href="/">Home</a></li>
               <li><a href="javascript:void(0);">Sharing</a></li>
               <li class="active">Picture</li>
            </ul>
         </div>
      </div><!--/breadcrumbs-->
      <!--=== End Breadcrumbs ===-->

      <!--=== Content Part ===-->
      <div class="container content">
         <div class="row">
            <!-- Begin Content -->
            <form class = "sky-form" id="sharForm" action="sharingForm" method="post">
               <fieldset>
                     <section style = "display: none;">
                        <label class="input">
                           <input type="text" name = "bbs_Id" id = "bbs_Id" value = "rs">
                           <input type = "text" name = "member_Id" id = "member_Id" value = "${uid}">
                        </label>
                     </section>            
                     <section>
                        <label class="label">제목</label>
                        <label class="input">
                           <input type="text" name = "writing_title" id = "title">
                        </label>
                     </section>

                     <section>
                        <label class="label">첨부파일</label>
                        <!-- <label for="file" class="input input-file">
                           <div class="button"><input type="file" id="file" onchange="this.parentNode.nextSibling.value = this.value" name = "bbs_FilePath">찾아보기</div><input type="text" readonly>
                        </label> -->
                        <div>
                           <div class="fileDrop" style="width: 100%; height: 200px; border: 1px dotted;"></div>
                        </div>
                        <div>
                           <ul class="uploadedList"></ul>
                        </div>
                     </section>
                     
                     <section>
                        <label class="label">내 사진</label>
                        <div id="myPic"></div>
                     
                     </section>
                     <section>
                        <label>라이딩정보</label>
                        <table id="myRoute" class="table table-hover">
                        <tr>
                        <td>라이딩날짜</td>
                        <td>평균속도</td>
                        <td>총시간</td>
                        <td>칼로리</td>
                        </tr>
                        
                        </table>
                        <label>경로정보</label>
                        <div id='RouteMap'></div>
                     </section>
                     
                     <section>
                        <label class="label">내용</label>
                        <label class="textarea textarea-resizable">
                           <textarea rows="3" id="content" name="writing_content"></textarea>
                        </label>
                     </section>
                  </fieldset>
                  <!-- <input type='hidden' class='file' name='bbs_FilePath' value=''> -->
                
                 <!--  <input type='hidden' class='picLocation' name='picture_location' value=''> -->
                   <input type='hidden' class='kmlcenter' name='kml_center' value=''>
                   <input type='hidden' class='thumbnail' name='thumbnail'>
                  
                  <footer>
                     <button type="submit" class="btn-u">등록</button>
                     <button type="button" class="btn-u btn-u-default" onclick="window.history.back();">취소</button>
                  </footer>
            </form>
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
                     <a href="main"><img id="logo-footer" class="footer-logo" src="./resources/img/logo(w).png" alt=""></a>
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
   
   <!-- Upload JS -->
   <script type="text/javascript" src="./resources/js/upload.js"></script>
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDyQjki7axvtCvqFULjxcicQimSUtg0tvk">
    </script>   
   <script type="text/javascript">
      jQuery(document).ready(function() {
         App.init();
         StyleSwitcher.initStyleSwitcher();
      });
      
      $(".fileDrop").on("dragenter dragover", function(event){
         event.preventDefault();
      });


      $(".fileDrop").on("drop", function(event){
         event.preventDefault();
         
         var files = event.originalEvent.dataTransfer.files;
         var file = files[0];
         var formData = new FormData();
         
         formData.append("file", file);   
         
         
         $.ajax({
              url: 'uploadAjax',
              data: formData,
              dataType:'text',
              processData: false,
              contentType: false,
              type: 'POST',
              success: function(data){
                 var fileInfo = getFileInfo(data);
                   alert(data);
                   
                   var upload = "";
                   upload = "<input type='hidden' name='bbs_FilePath' value='"+ data +"'> ";
                   
                   var form = $("#sharForm");
                   form.append(upload);
              }
         });   
      });
      
      
      $("#myPic").on("click","img",function(){
         /* <!-- <input type='hidden' class='file' name='bbs_FilePath' value=''> -->
         <!--  <input type='hidden' class='picLocation' name='picture_location' value=''> --> */
         console.log($(this));
         var form = $("#sharForm");
          var filepath=$(this).attr('src');
          var pictureLocation=$(this).attr('class');
         
         alert($(this).css('border'));
         if($(this).css('border')=='1.99219px solid rgb(0, 128, 0)')
            {
            $(this).css('width','300px');
            $(this).css('height','200px');
            
             $(this).siblings().css('width','210px');
             $(this).siblings().css('height','150px');
             
            
            $('.thumbnail').val(filepath);
            return;
            }
         $(this).css('border','2px solid green');
       
         
         
         
         var picFile=$("<input type='hidden' name='bbs_FilePath'>");
         picFile.val(filepath);
         var picLocation=$("<input type='hidden' name='picture_location'>");
         picLocation.val(pictureLocation);
         
         form.append(picFile);
         form.append(picLocation);
         
          /*  
           $('.file').val(filepath);
           $('.picLocation').val(pictureLocation); */
         
      });
      
      
      $("#myRoute").on("click","tr",function(){
         
         $(this).css('border','2px solid green');
         $(this).siblings().css('border','');
         
           var form = $("#sharForm");
           var kmlname=$(this).attr("class");
           console.log(kmlname);
           
           var kml=$("<input type='hidden' name='kml_name'>");
           
           kml.val(kmlname);
           
           form.append(kml);
           
           var kmlcenter=$(this).attr("id");
           
           $(".kmlcenter").val(kmlcenter);
          
         
          var map = new google.maps.Map(document.getElementById('RouteMap'));
          
          var ctaLayer = new google.maps.KmlLayer({
                url: 'http://39.121.239.182:8080/can/resources/'+kmlname,
                map: map
              });
         
      });
      
      
      
      
      
      
      $(document).ready(function(){
         
         $.ajax({
            url:'showMyPicture',
            type:'get',
            success:function(data){
               if(data.result=="success")
               {
                  console.log(data);
                  var picarray=data.list;
                  
                  for(var i=0;i<picarray.length;i++)
                  {   
                  
                  var src=picarray[i].picture_path;
                  var img=$('<img />').attr('src', 'http://localhost:8080/GroupRidingApp/image/' + src);
                  img.attr('class',picarray[i].picture_location);
                  
                  img.appendTo($("#myPic"));   
                  }
                  
                                    
                  
               }
            }
            
         });
         
         
         
         $.ajax({
            url:'show_history_web',
            type:'get',
                dataType:'json',
                success:function(data){
                     console.log(data.history);
                    var list=data.history; 
                    
                    var str="";
                    
                    for(var i=0;i<list.length;i++)
                      {
                   var time=list[i].alltime;
                   var alltime;
                   time=time.split("/");
                   
                   str+="<tr id='"+list[i].kml_center+"'  class='"+list[i].kml_name+"'><td>"+list[i].startDate+"</td>"+
                   "<td>"+list[i].avgspeed+"</td>"+
                   "<td>"+time[0]+"시간"+time[1]+"분"+time[2]+"초"+"</td>"+
                   "<td>"+list[i].kcal+"</td></tr>";
                       
                       
                      }
                    
                    $("#myRoute").append(str);
                     
                     
                }
         });

         
         
      });
   </script>
<!--[if lt IE 9]>
   <script src="assets/plugins/respond.js"></script>
   <script src="assets/plugins/html5shiv.js"></script>
   <script src="assets/plugins/placeholder-IE-fixes.js"></script>
   <![endif]-->

</body>
</html>