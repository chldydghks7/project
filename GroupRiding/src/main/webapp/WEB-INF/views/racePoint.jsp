<%@ page language="java" contentType="text/html; charset = UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>Group Riding</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- Custom CSS -->
<link href="./resources/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="./resources/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
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
   font-family: 'sung';
   src: url('./resources/fonts/sung.ttf'); 
   }
   .navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:focus,
   .navbar-inverse .navbar-nav>.open>a:hover {
   color: #fff;
   background-color: #929292
}
.navbar-inverse .navbar-nav>li>a {
    color: black;
}
.a{
   color:black;
}


ul#replies{
 list-style-type: none;
}
</style>

</head>

<body>
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
                        <li><a id="logout">LogOut</a></li>

                     </ul></li>

               </div>
            </ul>
         </div>
         <!-- /.navbar-collapse -->
      </div>
      <!-- /.container -->
   </nav>
   <header id="myCarousel" class="carousel slide w3-grayscale-max"
      style="height: 35%; background: url('./resources/img/bike2323.PNG') no-repeat center center scroll;">

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
         <div class="item active">
            <div class="carousel-caption" style="bottom: 60px;">
               <h1 style="font-size: 40px;font-family: sung;">RACE POINT</h1>
               </br>
            </div>
         </div>
      </div>
   </header>

   <!--=== End Header ===-->




   <div class="container">

     
    
         <div style="font-family: sung; margin-top: 40px;">
            <h1>기록 경쟁을 통하여 거점을 빼앗아 보세요!</h1>
                  <!--=== Content Part ===-->
        </div>          
   
        
   <!-- 레이스 -->
                   
                    
       <div class="row" style="margin-top:30px;">             
         
         <h1 class="rptitle" >영진전문대학 거점</h1>  
         <br>
         <h4 class="rpcontent">직선거리 50m 사람이 자주 다니는 루트</h4>
         </div>
		<div class="row" style="margin-top:30px;">
                       <div class="col-sm-3">
                         <ul class="list-group racepoint" >
                      <!--    <li id="yg" class="list-group-item list-group-item-success">영진전문대학 거점</li>
                                <li id="bok" class="list-group-item">복현오거리 거점</li> -->
                         <c:forEach items="${rpExplain}" var="point">
                              
                                <li data-start="${point.racepoint_id}"  class="list-group-item">${point.ra_title}</li>
                                <p style="display: none;">${point.ra_content}</p>
                                
                         </c:forEach>                    
                            </ul>
                        </div>  
              <div class="col">                
               <table   style="border:1px solid black; ">
                    <tr>
                       
						<td rowspan="2" style="border:1px solid black; ">
							 <div id="map_div" ></div>
						</td>
                       
                    </tr>
                    <tr>
                    
                    	<td rowspan="2" style="border:1px solid black; ">
                    			<ul id="replies" style="position:absolute; bottom:140px;"></ul>
                    	
                    		 <div id="replyreg" style="position:relative; top:185px;" >
                                  <input class="input-xxlarge"  type="text" style="width:230px;">
                                  <button class="btn" type="button">댓글등록</button>
                                </div>
                    	</td>
                    </tr>

                
                  
               </table>
              </div> 
      </div>
                    
               
               <%-- <div style=" left: 800px;">   
                  <table style="border: 1px solid #444444; width:200px;">
                     <thead>
                        <tr style="border: 1px solid #444444; text-align: center;">
                           <td style="border: 1px solid #444444;">순위</td>
                           <td style="border: 1px solid #444444;">기록(초)</td>
                           <td style="border: 1px solid #444444;">그룹명 </td>
                        </tr>
                     </thead>
                     
                     <c:forEach items="${race_record}" var="race" varStatus="s">
                        <tbody>
                           <tr style="border: 1px solid #444444; text-align: center;">
                              <td style="border: 1px solid #444444;">${s.count}</td>
                               <td style="border: 1px solid #444444;">${race.racepoint_time}</td>
                               <td style="border: 1px solid #444444;">${race.gr_name}</td>
                           </tr>
                        </tbody>
                     </c:forEach>
                  </table>
            </div> --%>
               
             <%--   <div id="board" style=" top:400px;">
                     제목    :    <label id="ra_title"></label>   <br>
                     내용   :    <label id="ra_content"></label>   <br>
                <!--   ra_viewcnt      :    <label id="ra_viewcnt" style="display:none;"></label>   <br> -->
                  
                  <br><br>
                  
                     <ul id="replies" style="overflow:scroll; background-color: white; width:500px; height:500px; position: relative;"></ul>
                  
                  <div style="position: relative; top:10px;">
                     <h4 id="re">댓글 등록</h4>
                     <input type="text" name="ra_reply_comment" id="ra_reply_comment" />
                     <input type="hidden" name="uid" id="uid" value="${uid}" />
                     <input type="hidden" name="racepoint_id" id="racepoint_id" value="${point.racepoint_id}" />
                     <button id="raceReply">등록</button>
                  </div>
               </div> --%>
               
            
            
            
             <footer>
         <div class="row" style="margin-top: 100px;">
            <div class="col-lg-12" style="font-family: sung;">
               <p>Copyright &copy; GROUP RIDING Website 2017</p>
            </div>
         </div>
      </footer>
            
        
      </div><!--/container-->
      <!--=== End Content Part ===-->

   <!-- jQuery -->
    <script src="./resources/js2/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="./resources/js2/bootstrap.min.js"></script>


<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>

<script>
   $(document).ready(function() {
        

         var pr_3857 = new Tmap.Projection("EPSG:3857");//tmap 좌표체계
         var pr_4326 = new Tmap.Projection("EPSG:4326");//geolocation 좌표체계

         function get3857LonLat(coordX, coordY) {
                return new Tmap.LonLat(coordX, coordY).transform(pr_4326, pr_3857);
            }
         
              var map = new Tmap.Map({div:'map_div',
                                       width:'500px', 
                                       height:'440px',
                                       transitionEffect:"resize",
                                       animation:true
                                   }); 
                map.setCenter(new Tmap.LonLat(14318157.74742,4286326.31519), 17);
                map.addControl(new Tmap.Control.KeyboardDefaults());
                 map.addControl(new Tmap.Control.MousePosition());
                
                 var markerLayer = new Tmap.Layer.Markers("MarkerLayer");
                 map.addLayer(markerLayer);

                 
			
                 $.ajax({
                	 url:"getRacePoint",
                	 type:"get",
                	 success:function(data){
                		 console.log(data);
                	 var racepoint=[];
                	 
                	 for(var i=0;i<data.length;i++)
                		 {
                		   racepoint.push(data[i].start_location);
                		   racepoint.push(data[i].stop_location);
                		 }
                	 
                	 
                	 for(var i=0;i<racepoint.length;i++)
                		 {
                		 
                		 var size = new Tmap.Size(24,38);
                         var offset = new Tmap.Pixel(-(size.w/2), -(size.h/2));
                         var icon = new Tmap.Icon('./resources/img/racepoint.png', size, offset);
                		 
                		   var location=racepoint[i].split(",");
                		   
                		   
                		   
                		   var tlocation=get3857LonLat(parseFloat(location[0]), parseFloat(location[1]));
                		  
                		 
                           
                           var marker = new Tmap.Markers(tlocation, icon);
                           
                         
                           
                           markerLayer.addMarker(marker);
                         

                		   
                		 }
                	 
                	 }
                	 
                	 
                 });
                 
             
          $(".racepoint").on("click","li",function(){
        	  
        	  $(this).addClass("list-group-item-success");
        	  $(this).siblings().removeClass("list-group-item-success");
        	  
        	  $(".rptitle").text($(this).text());
        	  $(".rpcontent").text($(this).next().text());
        	  
        	  var rpid=$(this).attr("data-start");
        	  
          		$.ajax({
						url:"getRacePosition",
						type:"get",
						data:{racepoint_id:rpid},
						success:function(data){
							
						
						
						var start=data.start_location.split(",");
						
						 map.panTo(get3857LonLat(parseFloat(start[0]),parseFloat(start[1])));
						
						
						}
						
          
          		});
          		
          		getAllList(rpid);
          		
          
          });       
          
   		
   
   <!-- 댓글 -->
   
      $("#raceReply").on("click", function(){      // 댓글 등록 버튼
         
         var uid = $("#uid").val();
         var racepoint_id = $("#racepoint_id").val();
         var ra_reply_comment = $("#ra_reply_comment").val();
         
         $.ajax({
            type:"post",
            url:"raceReply",
            headers: {
               "Content-Type" : "application/json",
               "X-HTTP-Method-Override" : "POST"
            },
            dataType : "text",
            data : JSON.stringify({
               uid : uid,
               racepoint_id : racepoint_id,
               ra_reply_comment : ra_reply_comment
            }),
            success : function(result) {
               if(result == "SUCCESS") {
                  getAllList();
               }
            }
         });
         
      });
      
      function getAllList(racepointid){    
         $.getJSON("raceReply/re_list/"+racepointid, function(data){   
            var str = "";
         
            $(data).each(function(){
               
               if("${uid}" == this.uid) {
                  str += "<img src='/displayFile?fileName=" + this.fullName + "' style='width:50px; height:50px; position: relative;'/>"
                     + "<li class='rep' style='position: relative; left:70px; top:-50px; font-weight: bold; color:blue;'>" + this.uid + "님</li>"
                     + "<li class='rep' style='position: relative; left:70px; top:-50px;'>" + this.ra_reply_comment +"<button id='replyDel'>x</button>"
                     + "<input id='re_id' type='hidden' value='" + this.ra_reply_id + "' />"
                     + "</li>"
                     
               } else {
                  str += "<img src='/displayFile?fileName=" + this.fullName + "' style='width:50px; height:50px; position: relative;'/>"
                  + "<li class='rep' style='position: relative; left:70px; top:-50px; font-weight: bold; color:blue;'>" + this.uid + "님</li>"
                  + "<li class='rep' style='position: relative; left:70px; top:-50px;'>" + this.ra_reply_comment +"</li>"
               }

            });
            $("#replies").html(str);
         });   // $.getJSON("raceReply/re_list/${point.racepoint_id}", function(data){
         
      }   // function getAllList() {    댓글리스트
         
      $("#replies").on("click", "#replyDel",function(){   // 댓글 삭제 버튼
            
         var ra_reply_id = $(this).next().val();
         
         $.ajax({
            type:"delete",
            url:"raceReply/" + ra_reply_id,
            headers : {
               "Content-Type" : "application/json",
               "X-HTTP-Method-Override" : "DELETE"
            },
            dataType: "text",
            success: function(result) {
               if(result == "SUCCESS") {
                  getAllList();
               }
               
            }   //   success: function(result) {
            
         
         });   // ajax
         
      
      }); // $("#replyDel").on("click", function(){
      
         
         
   });   /// $(document).ready(function() {
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