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
  
   
   <style>
      #like {
         margin-right: 20px;
         width: 30px;
      }
      #s-img {
          width: 250px;
         height: 250px;
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
          width: 560px;
         height: 25px;
         margin-top: 400px;
      }
      
      .likeCnt {
         width: 20px;
         height: 20px;
         cursor: pointer;
      }
      
      #myPic>img{
         margin-right:10px;
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
   
   .logo, .footer-logo {
         width: 200px;
         heigth: 100px;
      }
      
   #sharmap{
   margin-top: 7px;
   width:350px;
   height:350px;
   float: left;
   }   
   
   #editmap{
   margin-top: 7px;
   width:350px;
   height:250px;
   float: left;
   }  
   
   #imgDiv {
      display: inline-block;
      margin-left: 10px;
      width:100px;
      height:100px;
     
   }
   
   .file{
   width:150px !important;
   height:150px  !important;
   margin-top: 30px;
   
   }
   
   .replyImg {
      width: 20px;
      height: 20px;
      margin-right: 5px;
   }
   
   .del {
      margin-bottom: 30px;
      margin-right: 20px;
   }
   
   .snsIcon {
       width: 30px;
       height: 30px;
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
    
     <header id="myCarousel" class="carousel slide" style="height: 30%;width:100%;background: url('./resources/img/sharing.jpg') no-repeat center center scroll;">

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="carousel-caption" style="bottom:60px;">
                    <h1 style="font-size: 40px;">SHARING</h1></br>
                </div>
            </div>
        </div>
    </header>
  
      <div class="container">
      	<div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sharing
                  
                </h1>

            </div>
        </div>
      
      
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
                    <%--  <div class="col-md-4">
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
                              <c:set var = "user" value = "${uid}"/>
                              <c:set var = "writer" value = "${board.member_Id}"/>
                              <c:if test = "${user eq writer}">
                                 <a class="edit btn-more hover-effect" href="${board.writing_Id}" style = "margin-bottom: 30px; margin-right: 65px;"
                                 data-toggle = "modal" data-target = "#editModal" data-backdrop="static" data-keyboard="false">수정</a>
                                 <a class="del btn-more hover-effect" href="${board.writing_Id}">삭제</a>
                              </c:if>
                           </div>
                        </div>
                     </div>   --%>
                     
                   <div class="col-md-4 img-portfolio">
                	
		                    <img class="img-responsive img-hover" src="${board.bbs_FilePath}" alt="">
		                    <p class = "w_id" style = "display:none;">${board.writing_Id}</p>
		                     <img src="./resources/img/hearts.png" class="likeCnt">
		                     <p class = "cnt" >${board.view_Number}</p>  
		               
		                <h3>${board.writing_title}</h3>
		               
		                 <a class="btn btn-info" href="${board.writing_Id}" data-toggle = "modal" data-target = "#myModal" data-backdrop="static" data-keyboard="false">read</a>
		                  <c:set var = "user" value = "${uid}"/>
                              <c:set var = "writer" value = "${board.member_Id}"/>
                              <c:if test = "${user eq writer}">
                                 <a class="btn btn-warning" href="${board.writing_Id}" style = ""
                                 data-toggle = "modal" data-target = "#editModal" data-backdrop="static" data-keyboard="false">수정</a>
                                 <a class="btn btn-danger" href="${board.writing_Id}">삭제</a>
                              </c:if>
           		     </div> 
                      
                  </c:forEach>
               </div>
               
               <!-- End Thumbnails v1 -->
            </div>
            <!-- End Content -->
         </div>
         
         
         <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2017</p>
                </div>
            </div>
        </footer>
         
      </div><!--/container-->
      <!--=== End Content Part ===-->

    
   
    <!-- Read Modal Start -->
    <div id = "myModal" class = "modal fade" role = "dialog">
      <div class = "modal-dialog">
         <div class = "modal-content">
         
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
                
            </div>
            <div class="modal-body">
           
               <h3 style = 'float: left' class='title'></h3>
               <p style = 'display: none;' id = 'w_id' class='bbs_id'></p>
               <p style = 'float: right;' class='writer'>작성자 : </p><br><hr>
               <div id = "sns" style = "float: right; margin-top: -25px; margin-bottom: 5px;">
                     <a href="#" onclick="javascript:window.open('https://twitter.com/intent/tweet?text=[%EA%B3%B5%EC%9C%A0]%20'
               +encodeURIComponent(document.URL)+'%20-%20'+encodeURIComponent(document.title), 'twittersharedialog',
                'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank"
                alt="Share on Twitter" ><img src="./resources/img/twitter.png" class = "snsIcon"></a>
                
                <a href="#" onclick="javascript:window.open('https://www.facebook.com/sharer/sharer.php?u='
               +encodeURIComponent(document.URL)+'&t='+encodeURIComponent(document.title), 'facebooksharedialog',
                'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank"
                alt="Share on Facebook" ><img src="./resources/img/facebook.png" class = "snsIcon"></a>
               
               
               <a href="#" onclick="javascript:window.open('http://share.naver.com/web/shareView.nhn?url='+encodeURIComponent(document.URL)+'&title='+encodeURIComponent(document.title),
                'naversharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" alt="Share on Naver" >
               <img src="./resources/img/naver.png" class = "snsIcon"></a>
             </div>
               <div id="sharmap"></div>
               <div id = "imgDiv"> <img class='file' id = 's-img' src = ''></div> 
              
              <div class = 's-content'></div><hr>
               <div><ul class = 'timeline'></ul></div>
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
   <!-- Read Modal End -->
   
   <!-- Edit Modal Start -->
    <div id = "editModal" class = "modal fade" role = "dialog">
      <div class = "modal-dialog">
         <div class = "modal-content">
         
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>  
            </div>
            
            <div class="modal-body">
               <h3><input type = "text" value = "" class = "title" name = "writing_title"></h3>
               <p style = 'display: none;' id = 'w_id' class='bbs_id'></p>
               <div id="editmap"></div>
               <div id = "imgDiv"><img class='file' id = 's-img' src = ''></div>
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
              </section>
              <input type='hidden' class='file' name='bbs_FilePath' value=''>
              <input type='hidden' class='kml' name='kml_name' value=''>
         <textarea class="s-content" style = "height: 80px;" name="writing_content"></textarea><hr>
            </div>
            <div class="modal-footer">
              <%--  <input type = "text" id = "uid" style = "display: none;" value = "${uid}"/> --%>
               <button id="editBtn" class="btn btn-default">수정</button>
            </div>
         </div>
      </div>
   </div>
   <!-- Edit Modal End -->
   
  
    <!-- jQuery -->
    <script src="./resources/js2/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="./resources/js2/bootstrap.min.js"></script>
  
  
  
  
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDyQjki7axvtCvqFULjxcicQimSUtg0tvk">
    </script>   
   <script type="text/javascript">
      jQuery(document).ready(function() {
         App.init();
         StyleSwitcher.initStyleSwitcher();
      });
      var map;
      var form = $("#form");
      

      $(".likeCnt").on("click", function() {
         event.preventDefault();
         var id = $(this).prev().text();
         var cnt = $(this).next().text();
         
         ++cnt;
         
       
         
         $.ajax({
            url: 'likeShar',
            type: 'post',
            data: {
               writing_Id: id,
               view_Number: cnt
            },
            success: function(data) {
               if(data) {
            	   location.reload();
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
      
      $(".del").on("click", function() {
         event.preventDefault();
         
         var id = $(this).attr("href");
         var a = confirm("삭제하시겠습니까?");
         
         if(a) {
            $.ajax({
                  url: 'sharDel',
                  data: {
                     writing_Id: id
                  },
                  success: function(data) {
                     alert('삭제되었습니다.');
                     location.reload();
                  },
                  error: function() {
                     alert('에러');
                  }
                });
         }
         else {
            location.reload();
         }
         
      });
      
      $(".test").on("click", function () {
         event.preventDefault();
         var   title = $(this).attr("href");
     
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
              
                  console.log(data);
              
               /* var html = "";
               html = "<h3 style = 'float: left'>제목 : " + data.writing_title + "</h3>"
                      + "<p style = 'display: none;' id = 'w_id'>" + data.writing_Id + "</p>"
                      + "<p style = 'float: right;'>작성자 : " + data.member_Id + "</p><br>"
                     + "<hr><div><img id = 's-img' src = '"+ data.bbs_FilePath + "'></div>"
                     + "<hr><div id = 's-content'>내용 : " + data.writing_content + "</div><hr>"
                     + "<div><ul class = 'timeline'></ul></div>";
                     
               $(".modal-body").append(html);   */
               
               $(".title").text(data.writing_title);
               $(".bbs_id").text( data.writing_Id );
               $(".writer").text("작성자"+ data.member_Id);
               $(".file").attr('src',data.bbs_FilePath);
               $(".s-content").text(data.writing_content);
               
               map = new google.maps.Map(document.getElementById('sharmap'));
            
            var ctaLayer = new google.maps.KmlLayer({
                  url: 'http://39.121.239.182:8080/can/resources/'+data.kml_name,
                  map: map
                });
            
          
            
            var piclocation=data.picture_location.split(",");
            
            /* var picMarkerLocation={lat:parseFloat(piclocation[0]),lng:parseFloat(piclocation[1])};
            {lat:35.8960,lng:128.6235}
            4286407.4960900415,14317930.236282492*/
            
           var picMarkerLocation= {lat:parseFloat(piclocation[0]),lng:parseFloat(piclocation[1])};
            console.log(picMarkerLocation);
            var picIcon=new google.maps.MarkerImage(data.bbs_FilePath,null,null,null,new google.maps.Size(70,70));
           
           
           
            var picMarker= new google.maps.Marker({
         	   position:picMarkerLocation,  
         	   map:map,
         	   icon:picIcon
            });
            
          
    
            
            
          /*    var refresh = function() {
                   var center = map.getCenter();
                       google.maps.event.trigger(map, "resize");
                      map.setCenter(center);
                      map.setZoom(16);
                   }
                   setTimeout(refresh, 100); */
               
               
               
               
               getAllReplies();
               
               function getAllReplies() {
                  $.getJSON("replies/all/" + title, function(data) {
                        var str = ""; 
                        console.log(data);
                        $(data.list).each(function() {
                           str += "<li data-rno = '" + this.rno + "' class = 'replyLI'>"
                            + "<img src = '/displayFile?fileName=" + this.fullName + "' class = 'reply replyImg'/>"
                            + "<span class = 'reply replyNum'>" + this.uid + " : </span>"
                            + "<span class = 'reply replyText'>" + this.replyText + "</span>";
                        });
                        $('.timeline').append(str);
                      });
               }
               
               
              
               
               $("#addReply").on("click", function() {
                   var id = $("#w_id").text();
                   var replyer = $("#uid").val();
                   var replyText = $("#s-reply").val();
                   
                       
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
                           $('#s-reply').val("");
                           $('.timeline').html("");
                           getAllReplies();
                        }
                     }
                   });
                 });
            },
            error: function() {
               alert('에러');
            }
         });
      });
      
      $(".edit").on("click", function () {
          event.preventDefault();
          var   title = $(this).attr("href");
      
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
               
                   console.log(data);
                   $("#myPic").on("click","img",function(){
                       
                       console.log($(this));
                       $(this).css('border','2px solid green');
                       $(this).siblings().css('border','');
                       
                        var form = $("#sharForm");
                       var filepath=$(this).attr('src');
                       
                       $(".file").attr('src', filepath);
                  $('.file').val(filepath);
                       
                    });
                    
                    
                    $("#myRoute").on("click","tr",function(){
                       
                       $(this).css('border','2px solid green');
                       $(this).siblings().css('border','');
                       
                         var form = $("#sharForm");
                         var kmlname=$(this).attr("class");
                         
                         $(".kml").val(kmlname);
                       
                        var editmap = new google.maps.Map(document.getElementById('editmap'));
                        
                        var ctaLayer = new google.maps.KmlLayer({
                              url: 'http://39.121.239.182:8080/can/resources/'+kmlname,
                              map: editmap
                            });
                        
                        google.maps.event.trigger(editmap, 'resize'); 
                        var refresh = function() {
                             //var center = map.getCenter();
                                 editmap.setCenter(new google.maps.LatLng(35.896553, 128.622051));
                                editmap.setZoom(17);
                             }
                             setTimeout(refresh, 500); 
                       
                    });
                /* var html = "";
                html = "<h3 style = 'float: left'>제목 : " + data.writing_title + "</h3>"
                       + "<p style = 'display: none;' id = 'w_id'>" + data.writing_Id + "</p>"
                       + "<p style = 'float: right;'>작성자 : " + data.member_Id + "</p><br>"
                      + "<hr><div><img id = 's-img' src = '"+ data.bbs_FilePath + "'></div>"
                      + "<hr><div id = 's-content'>내용 : " + data.writing_content + "</div><hr>"
                      + "<div><ul class = 'timeline'></ul></div>";
                      
                $(".modal-body").append(html);   */
                
                $(".title").val(data.writing_title);
                $(".bbs_id").text( data.writing_Id );
                $(".writer").text("작성자"+ data.member_Id);
                $(".file").attr('src',data.bbs_FilePath);
                $(".s-content").text(data.writing_content);
                
              
            
             /*  var refresh = function() {
                    var center = detailmap.getCenter();
                        google.maps.event.trigger(detailmap, "resize");
                        detailmap.setCenter(center);
                       detailmap.setZoom(16);
                    }
                    setTimeout(refresh, 100); */
             },
             error: function() {
                alert('에러');
             }
          });
       });
      
          
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
                    
                    str+="<tr class='"+list[i].kml_name+"'><td>"+list[i].startDate+"</td>"+
                    "<td>"+list[i].avgspeed+"</td>"+
                    "<td>"+time[0]+"시간"+time[1]+"분"+time[2]+"초"+"</td>"+
                    "<td>"+list[i].kcal+"</td></tr>";
                        
                        
                       }
                     
                     $("#myRoute").append(str);
                      
                      
                 }
          });
      
      $(".close").on("click", function() {
         event.preventDefault();
        /*  $(".modal-body").html(""); */
        location.reload();
      });
      
      $('#myModal').on('shown.bs.modal', function () {
         google.maps.event.trigger(map, 'resize'); 
         var refresh = function() {
              //var center = map.getCenter();
                  map.setCenter(new google.maps.LatLng(35.896553, 128.622051));
                 map.setZoom(17);
              }
              setTimeout(refresh, 500); 

       });
      
      $('#editModal').on('shown.bs.modal', function () {
          google.maps.event.trigger(map, 'resize'); 
          var refresh = function() {
               //var center = map.getCenter();
                   map.setCenter(new google.maps.LatLng(35.896553, 128.622051));
                  map.setZoom(17);
               }
               setTimeout(refresh, 500); 

        });

   </script>


</body>
</html>
   