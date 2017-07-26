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
                    
                    <li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" style="font-size: 20px;">${uid}</a>
						
						<ul class="dropdown-menu">
							<li>	
						        <a id="logout" >LogOut</a>
				   			</li>
						
						</ul>
									
								
										
										
									
				    </li>
				    
				    <li id="profile"></li>
				    
				    
                    
                    
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
                    <h1 style="font-size: 40px;">GROUP INFO</h1></br>
                </div>
            </div>
        </div>
    </header>

		<!--=== End Header ===-->

		
		
	
		<div class="container">
		
		
				<div class="container content">
			<!----------------------------------------------------------------------------------------- 그룹상세 -->

				<div class="table-search-v2" style="padding: 50px 0px 0px 10px;">
					<div class="table-responsive">
						<table class="table table-bordered table-striped"
							style="text-align: center; width:1100px;">
							<thead>
								<tr style="text-align: center;">
									<th>Logo</th>
									<th class="hidden-sm">그룹명</th>
									<th>그룹장</th>
									<th>그룹소개</th>
									<th>그룹인원</th>
									<th>그룹생성일</th>
									<th>그룹가입</th>
									<th>라이딩일정</th>
	
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="width:50px;"><img src="/displayFile?fileName=${group.gr_icon}" /></td>
									<td>${group.gr_name}</td>
									<td>${group.gr_leader}</td>
									<td>${group.gr_content}</td>
									<td>${people}명</td>
									<td>${group.gr_date}</td>
									<td><form action="gr_join" method="post">
											<input type="hidden" name="uid" value="${uid}"> <input
												type="hidden" name="gr_name" value="${group.gr_name}">
											<c:if test="${mygroupJudge==null}">
												<div>
													<button id="joinBtn">그룹가입</button>
												</div>
											</c:if>
	
										</form></td>
									<td><form action="createNotice" method="get">
											<input type="hidden" name="gr_id" value="${group.gr_id}" /> <input
												type="hidden" name="gr_name" value="${gr_name1}" />
											<button type="button" id="notice11" data-toggle="modal" data-target="#myModal">일정등록</button>
										</form></td>
	
								</tr>
	
							</tbody>
						</table>
					</div>
				</div>
				<!--=== Blog Posts ===-->
				<div class="">
					<div class="container"
						style="padding-top: 30px; padding-bottom: 60px; padding-left: 0px;">
						<div>
							<!-- Blog All Posts -->
							<div class="col-md-9">
								<!----- 그룹 캘린더 --------------------------------------------------------------------------->
								<div id="map11" class="col-md-13" style="z-index:1;">
									<div class="news-v3 bg-color-white margin-bottom-60">
										<h2>${group.gr_name}의최근라이딩</h2>
										<!-- 슬라이드 -->
										<a id="mm" href="#" ><div id="map_div"></div></a>
										<button id="click1">1</button>
										<button id="click2">2</button>
										<button id="click3">3</button>
										<button id="click4">4</button>
										<button id="click5">5</button>
										<!-- 슬라이드 -->
									</div>
	
								</div>
								<!----- 그룹 캘린더 --------------------------------------------------------------------------->
	
								<!-- Blog Posts -->
								<div class="news-v3 bg-color-white margin-bottom-60">
									<table class="table table-bordered" id="read">
										<tr>
											<th>제목</th>
											<th>작성자</th>
											<th>날짜</th>
											<th>조회수</th><!-- list_master -->
										</tr>
										
										
										<c:forEach items="${list_master}" var="GroupMaster">
											<tr>
	
												<td class="success"><h4><strong><a  style="color:red;" href="javascript:ViewLayer2();"
													id="a" class="${GroupMaster.writing_id}">${GroupMaster.writing_title}</a></strong></h4></td>
	
												<td class="success"><h4 style="color:red;"><strong>${GroupMaster.member_id}</h4></strong></td>
	
												<td class="success"><h4 style="color:red;"><strong>${GroupMaster.regist_date}</h4></strong></td>
												<td class="success"><h4 style="color:red;"><strong>${GroupMaster.view_Number}</h4></strong></td>
											</tr>
	
										</c:forEach>
										<c:forEach items="${listAll}" var="GroupInfoBo">
											<tr>
	
												<td class=""><a href="javascript:ViewLayer2();"
													id="a" class="${GroupInfoBo.writing_id}">${GroupInfoBo.writing_title}</a></td>
	
												<td class="">${GroupInfoBo.member_id}</td>
	
												<td class="">${GroupInfoBo.regist_date}</td>
												<td class="">${GroupInfoBo.view_Number}</td>
											</tr>
	
										</c:forEach>
									</table>
									<c:if test="${memList!=null}">
									<a href="javascript:ViewLayer();">등록</a>
									</c:if>
									
									<div id="Pop" style="position: absolute; left: 100px; top: 520px; width: 1000px; height: 600px; z-index: 2; display: none; background: #3d3d3d; color: #fff;">
	
										<a href="javascript:ViewClose();"> <img id="popLogo"
											src="./resources/img/cancelcel.png" /></a>
										<form method="post" action="groupInfo?gr_name=${group.gr_name}&gr_id=${group.gr_id}&uid=${uid}" style="margin: 5% 5%; ">
											<p style="color:white;">작성자 - ${uid}</p>
	
											<div class="form-group">
												<label style="color:white;">제목</label>
												<input class="form-control" type="text" name="writing_title">
											</div>
											<div class="form-group">
												<label style="color:white;">내용</label>
												<textarea class="form-control" rows="13" cols="132"
													style="color: black; resize: none;" name="writing_content"></textarea>
											</div>
	
											<input type="hidden" value="${uid}" name="member_id" />
	
											<!-- 인풋 타입 히든으로 안보이게 처리 -->
	
											<input class="btn btn-default" type="submit" value="등록">
										</form>
									</div>
	
	
									<div id="Pop_Re" style="position: absolute; left: 100px; top: 100px; width: 1000px; height: 600px; z-index: 100 !important; display: none; margin: 5% 5%; background: #101010; color: #fff;">
	
										<a href="javascript:ViewClose2();"> <img id="popLogo"
											src="./resources/img/cancelcel.png" /></a>
										<div style="margin: 5% 5%; color:white;">
											<div class="uid" style="display: none;">${uid}</div>
											작성자 - <label id="re_id"></label><br /> 제목 - <label
												id="re_title"></label><br /> 내용
											<div id="re_content"
												style="height: 330px; background-color: #505457;"></div>
											<br />
											<label id="re_date">작성일 - </label> <input type="hidden"
												value="" id="re_writing_id" />
											<div id="die"></div>
											<!-- <input class="btn btn-default" type="submit" value="수정"> -->
											<!-- <input class="btn btn-default" type="submit" value="수정"
												style="float: right"> -->
											<!-- <button class="btn btn-default" id="Pop_Re_del"
												style="float: right">삭제</button> -->
										</div>
									</div>
									
									<div id="Pop_Re_Modify"
										style="position: absolute; left: 100px; top: 100px; width: 1000px; height: 600px; z-index:100 !important; display: none; background: red; color: #fff;">
										<a href="javascript:ViewClose3();"> <img id="popLogo"
											src="./resources/img/cancelcel.png" /></a>
										<form method="post"
											action="groupInfo2"
											style="margin: 5% 5%;">
											<p style="color:white;">작성자 - ${uid}</p>
											
											<div class="form-group">
												<p style="color:white;">제목</p>
												<input class="form-control" type="text" name="writing_title" id="mo_title" value="">
											</div>
											
											<div class="form-group">
												<p style="color:white;">내용</p>
												<textarea class="form-control" rows="13" cols="132"
													style="color: black; resize: none;" name="writing_content" id="mo_content" value=""></textarea>
											</div>
											<input type="hidden" value="${group.gr_name}" name="gr_name"/>
											<input type="hidden" value="${group.gr_id}" name="gr_id"/>
											<input type="hidden" value="${uid}" name="uid"/>
											<input type="hidden" id="re_writing_id2" value="" name="writing_id"/>
											<!-- 인풋 타입 히든으로 안보이게 처리 -->
	
											<input class="btn btn-default" type="submit" value="수정" style="float: right">
										</form>
									</div>
								</div>
								<!-- End Blog Posts -->
	
								<!-- Blog Posts -->
								<div class="news-v3 bg-color-white margin-bottom-60">
									<a href="groupNotice?gr_name=${gr_name1}" >그룹 캘린더</a>
								</div>
								<!-- End Blog Posts -->
	
								<!-- Blog Posts -->
								<div class="news-v3 bg-color-white margin-bottom-60">sss</div>
								<!-- End Blog Posts -->
	
								<!-- Blog Posts -->
								<div class="news-v3 bg-color-white margin-bottom-60">sss</div>
	
							</div>
							<!-- End Blog All Posts -->
	
							<!-- Blog Sidebar -->
							<div class="col-md-3">
								<!-- Contacts -->
								<div class="headline">
									<h2>Profile</h2>
									<!-- 							private String fullName; //프로필 사진경로
									private String uid; //아이디
									private int riding_no; //라이딩한 횟수
									private double alldistance; //총거리
									private double avspeed; //평균속도  -->
								</div>
	
								<ul class="list-unstyled who margin-bottom-30">
								
										
										
									
									
									<c:if test="${listAll_li.riding_no !=null }">
										<li><a href="#"><i class=""></i> <br />
											<img style="width: 200px; height: 200px; margin-left: 30px;"
												src="/displayFile?fileName=${listAll_li.fullName}" /></a></li>
										<li><a href="#"><i class=""></i> <strong>아이디
													- ${listAll_li.uid}</strong></a></li>
										<li><a href="#"><i class=""></i> <strong>참여횟수
													- ${listAll_li.riding_no}</strong> </a></li>
										<li><a href="#"><i class=""></i> <strong>총거리
													- ${listAll_li.alldistance}</strong> </a></li>
										<li><a href="#"><i class=""></i> <strong>평균
													속도 - ${listAll_li.avgspeed}</strong> </a></li>
									</c:if>
									<c:if test="${listAll_li.riding_no ==null }">
										<li><a href="#"><i class=""></i> <br />
											<img style="width: 200px; height: 200px; margin-left: 30px;"
												src="/displayFile?fileName=${mem_li}" /></a></li>
										<li><a href="#"><i class=""></i> <strong>아이디
													- ${uid}</strong></a></li>
										<li><a href="#"><i class=""></i> <strong>참여횟수
													- 0</strong> </a></li>
										<li><a href="#"><i class=""></i> <strong>총거리
													- 0</strong> </a></li>
										<li><a href="#"><i class=""></i> <strong>평균
													속도 - 0</strong> </a></li>
									</c:if>
								</ul>
	
								<!-- Business Hours -->
								<div class="headline">
									<h2>Member List</h2>
								</div>
								<ul class="list-unstyled margin-bottom-30">
									<table class="table table-bordered">
										<c:forEach items="${listAll_mem}" var="mem">
											<tr>
												<td style="width:30px"><img style="width:30px;height:30px;"src="/displayFile?fileName=${mem.fullname}"/></td>
												<td>${mem.uid}</td>
								<!-- 강퇴아이콘 -------------------------------------------->
								
											<c:if test="${uid == group.gr_leader}"> <!-- 세션의 uid가 그룹장이 아니라면 아래 문구 추가 -->
												<td>
													<c:choose>
														<c:when test="${mem.uid!=group.gr_leader}">
															<a href="#">
																<img  class="imgg" id="${mem.uid}" style="width: 15px;height: 15px;" src="./resources/img/cancel.png" />						
															</a>
														</c:when>
													</c:choose>
												</td>
											</c:if>
											
											
											
											
											
											<input type="hidden" id="gname" value="${group.gr_name}"/> <!-- 삭제하기 위해서 그룹의 이름을 받아 gname에 저장함 -->
								<!-- 강퇴아이콘 -------------------------------------------->
											</tr>
										</c:forEach>
									</table>
								</ul>
	
								<!-- Why we are? -->
								<div class="headline">
									<h2>ETC</h2>
								</div>
								<p>At vero eos et accusamus et iusto odio dignissimos ducimus
									qui blanditiis praesentium voluptatum.</p>
								<ul class="list-unstyled">
									<li><i class="fa fa-check color-green"></i> Odio
										dignissimos ducimus</li>
									<li><i class="fa fa-check color-green"></i> Blanditiis
										praesentium volup</li>
									<li><i class="fa fa-check color-green"></i> Eos et
										accusamus</li>
								</ul>
							</div>
							<!--/col-md-3-->
							<!-- End Blog Sidebar -->
						</div>
					</div>
				</div>
	
			</div>
		
		
		<!-- 모달 -->
		
		
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
$("#save").on("click", function(){
	if($("#uid").val() == "") { alert("아이디를 입력하세요"); return false;}
	if($("#uname").val() == "") { alert("이름을 입력하세요"); return false;}
	if($("#upw").val() == "") { alert("비밀번호를 입력하세요"); return false;}
	if($("#upw1").val() == "") { alert("비밀번호 확인을 입력하세요"); return false;}
	if($("#uage").val() == "") { alert("생년월일 입력하세요"); return false;}
	if($("#upw").val() != $("#upw1").val()) { alert("비밀번호 일치 ㄴㄴ"); return false; }
	window.alert("가입 됨");
});

$("#sign").on("click", function(){
	if($("#uid11").val() == "") { alert("아이디를 입력하세요"); return false;}
	if($("#upw11").val() == "") { alert("비밀번호를 입력하세요"); return false;}
});


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

<script>
	///////////////
	////	프로필
	///////////////
var template = Handlebars.compile($("#template").html());

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
			  
			  var html = template(fileInfo);
			  
			  $(".uploadedList").append(html);
		  }
		});	
});

$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	var str ="";
	$(".uploadedList .delbtn").each(function(index){
		 str = "<input type='hidden' name='files' value='"+$(this).attr("href") +"'> ";
		 // 	 str = "<input type='hidden' name='files' value='"+$(this).attr("href") +"'> ";
	});
	
	that.append(str);

	that.get(0).submit();
});
	
</script>

<!-- 아이디 중복체크 -->
<script>
	$("#check").on("click", function(){
		
		$.ajax({
			url:"id_check",
			type:"post",
			data: {
				uid: $("#uid").val()
			},
			dataType:"json",
			success:function(data) {
				if(data.result == "success"){
					window.alert("아이디 : " + $("#uid").val() + " 가능가능");
				} else {
					window.alert("아이디 : " +  $("#uid").val() + " 불가불가");
				}
				
			}
		})
	});
</script>
	
	<script>
			$(document).ready(function() {
				var uid = $(".uid").text(); 
				var ele = "<button class='btn btn-default vbtn' id='Pop_Re_mo'  style='float: right'>수정</button>"	 
				        + "<button class='btn btn-default vbtn' id='Pop_Re_del' style='float: right'>삭제</button>";
				
				var formObj = $("form[role='form']");

				$("#gr_list").on("click", function() {
					formObj.attr("action", "groupList");
					formObj.attr("method", "get");
					formObj.submit();
				});
			/* ----------------------------------삭제버튼---------------------------------------- */
				$(".imgg").on("click",function(){
					var uid = $(this).attr("id");
					var gname = $("#gname").val();
					console.log(uid);
					console.log(gname);
					$.ajax({
						url : 'groupInfoMem_del',
						data : {
							uid : uid,
							gname : gname
						},
						type : 'post',
						success : function(data){
							console.log(data);
							location.reload();
						}
					});
				});
			/* ----------------------------------삭제버튼---------------------------------------- */
				
				$("#read a").on("click", function() {
					var writing_id = $(this).attr("class");
					$.ajax({
						url : 'groupInfo_re',
						data : {
							id : writing_id
						},
						type : 'post',
						success : function(data) {
							console.log(data);
							$("#re_id").text(data.member_id);
							$("#re_title").text(data.writing_title);
							$("#re_content").text(data.writing_content);
							$("#re_date").text(data.regist_date);
							$("#re_writing_id").text(data.writing_id);
							$("#re_writing_id2").val(data.writing_id);
							alert(data.writing_id);
							if(uid == data.member_id) {
								$("#die").append(ele);
							} else {
								
							}
						}
					});
				});
				$("#Pop_Re").on("click", "#Pop_Re_del", function() {
					var writing_id = $("#re_writing_id").text();
					console.log(writing_id);
					$.ajax({
						url : 'groupInfo_del',
						data : {
							id : writing_id
						},
						type : 'post',
						success : function(data) {
							location.reload();
						}
					});

				});
				$("#Pop_Re").on("click", "#Pop_Re_mo",function() {
					ViewLayer3();
					var writing_id = $("#re_writing_id").text();
					$.ajax({
						url : 'groupInfo_re',
						data : {
							id : writing_id
						},
						type : 'post',
						success : function(data) {
							console.log(data);
							$("#mo_title").val(data.writing_title);
							$("#mo_content").val(data.writing_content);
						}
					});
				});


			});
		</script>
		
		<script>
	<!-- 그룹장 체크2 -->
		var leader = "${leader}";

		if (leader == "") {
			$("#notice11").hide();
		} else {
			$("#notice11").show();
		}
	</script>
	
	<script type="text/javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=4bdccae9-d798-3ca4-b110-27795b43b78b"></script>
	<script>

var startPoint=[];
var endPoint=[];
var notice_title=[];
var ridingDate=[];


		map = new Tmap.Map({div:'map_div',
		                        width:'600px', 
		                        height:'450px',
		                        transitionEffect:"resize",
		                        animation:true
		                    }); 
		    map.setCenter(new Tmap.LonLat(14315520.90430,4283115.74626), 11);
		    map.addControl(new Tmap.Control.KeyboardDefaults());
            map.addControl(new Tmap.Control.MousePosition());
		
            
		    
		<c:forEach items="${noticelist}" var="i" varStatus="count">
			startPoint.push("${i.start_point}");
			endPoint.push("${i.end_point}");
			notice_title.push("<h4 class='a${count.count}'>공지명 : ${i.notice_title}</h4>");
			ridingDate.push("<h4 id='a${count.count}'>라이딩 날짜 : ${i.ridingDate}</h4>");
		</c:forEach>
	
		
		
			$(document).ready(function(){
				if(startPoint[0] != null) {	
					searchRoute(startPoint[0],endPoint[0]);
					$("#mm").prepend(notice_title[0]);
					$("#mm").prepend(ridingDate[0]);
					
					$(".a2").hide();
					$(".a3").hide();
					$(".a4").hide();
					$(".a5").hide();
					
					$("#a2").hide();
					$("#a3").hide();
					$("#a4").hide();
					$("#a5").hide();
				} else {
					alert("최근 없음!");
				}
			});
		
			$("#click2").on("click", function(){
				if(startPoint[1] != null) {	
					searchRoute(startPoint[1],endPoint[1]);
					$("#mm").prepend(notice_title[1]);
					$("#mm").prepend(ridingDate[1]);
					
					$(".a1").hide();
					$(".a3").hide();
					$(".a4").hide();
					$(".a5").hide();
					
					$("#a1").hide();
					$("#a3").hide();
					$("#a4").hide();
					$("#a5").hide();
				} else {
					alert("최근 없음!");
				}
			});
			
			$("#click3").on("click", function(){
				if(startPoint[2] != null) {	
					searchRoute(startPoint[2],endPoint[2]);
					$("#mm").prepend(notice_title[2]);
					$("#mm").prepend(ridingDate[2]);
					
					$(".a1").hide();
					$(".a2").hide();
					$(".a4").hide();
					$(".a5").hide();
					
					$("#a1").hide();
					$("#a2").hide();
					$("#a4").hide();
					$("#a5").hide();
				} else {
					alert("최근 없음!");
				}
			});
			
			$("#click4").on("click", function(){
				if(startPoint[3] != null) {	
					searchRoute(startPoint[3],endPoint[3]);
					$("#mm").prepend(notice_title[3]);
					$("#mm").prepend(ridingDate[3]);
					
					$(".a1").hide();
					$(".a2").hide();
					$(".a3").hide();
					$(".a5").hide();
					
					$("#a1").hide();
					$("#a2").hide();
					$("#a3").hide();
					$("#a5").hide();
				} else {
					alert("최근 없음!");
				}
			});
			
			$("#click5").on("click", function(){
				if(startPoint[4] != null) {	
					searchRoute(startPoint[4],endPoint[4]);
					$("#mm").prepend(notice_title[4]);
					$("#mm").prepend(ridingDate[4]);
					
					$(".a1").hide();
					$(".a2").hide();
					$(".a3").hide();
					$(".a4").hide();
					
					$("#a1").hide();
					$("#a2").hide();
					$("#a3").hide();
					$("#a4").hide();
				} else {
					alert("최근 없음!");
				}
			});
	
	
		
	
		
		//경로 정보 로드
		function searchRoute(startPoint,endPoint){
			
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




<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">일정 등록</h4>
      </div>
      
     <form action="createNotice" method="post">
      <div class="modal-body">
      	<div id="map_div1"></div>
		공지제목 : <input type="text" name="notice_title"> <br>
		라이딩 날짜 : <input type="date" name="ridingDate" id="ridingDate">	<br>
		라이딩 시간 : <input type="time" name="ridingTime">	<br>
		준비물 : <input type="text" name="material">	<br>
		출발지 : <input type="text" id="starting"> <input type="button" id="start" value="검색">	<br>
		도착지 : <input type="text" id="ending">	<input type="button" id="stop" value="검색">	<br>
		<input type="button" id="gogo" value="경유 검색">
		<input type="button" onClick="window.location.reload()" value="취소">
		
		<div>
			<ul id="ul">
				<li id="li"></li>
			</ul>
		</div>
	
		<div>
			<ul id="ul1">
				<li id="li1"></li>
			</ul>
		</div>
		
		<input type="hidden" name="gr_id" value="${gr_id}"/>
		<input type="hidden" name="uid" value="${uid}"/>
		<input type="hidden" name="start_point" id="startPoint" value=""> <br>
		<input type="hidden" name="end_point" id="endPoint" value="">	<br>
		<input type="hidden" name="gr_name" value="${gr_name1}"><br>
      </div>
      
      <div class="modal-footer">
      	<button type="submit" class="btn btn-default">등록</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
     </form>
     
    </div>

  </div>
</div>


<script>

			var map

			map = new Tmap.Map({div:'map_div1',
		        width:'50%', 
		        height:'400px',
		        transitionEffect:"resize",
		        animation:true
		    }); 
				map.setCenter(new Tmap.LonLat(14315520.90430,4283115.74626), 11);
				// map.addControl(new Tmap.Control.KeyboardDefaults());
				map.addControl(new Tmap.Control.MousePosition());
				// searchRoute();
					
					//경로 그리기 후 해당영역으로 줌
					function onDrawnFeatures(e){
						map.zoomToExtent(this.getDataExtent());
					}	// function searchRoute(start, stop){

////////////////
///// POI //////
////////////////				                 
				var markerLayer;
				var tdata;
				var name = '';
	    		
				addMarkerLayer();

				var clcl;	// 출발지 or 도착지
	    		$("#start").on("click", function(){
	    			clcl = true;

	    			$("#ul").empty();	// 태그제거
	    			$("#ul1").empty();	// 태그제거
	    			var starting = $("#starting").val();

	    			searchPOI(starting);	// 검색
	    			
	    			markerLayer.clearMarkers();	// 마커 초기화

	    			getDataFromLonLat(this.lonlat);	// 주소

	    		});

	    		$("#stop").on("click", function(){
					clcl = false;

	    			$("#ul").empty();	// 태그제거
	    			$("#ul1").empty();	// 태그제거
	    			var ending = $("#ending").val();

	    			searchPOI(ending);	// 검색
	    			
	    			markerLayer.clearMarkers();	// 마커 초기화

	    			getDataFromLonLat(this.lonlat);	// 주소

	    		});

	    		
	    		function addMarkerLayer(){
				    markerLayer = new Tmap.Layer.Markers("marker");
				    map.addLayer(markerLayer);
				};

				function addMarker(options){
				    var size = new Tmap.Size(12,19);
				    var offset = new Tmap.Pixel(-(size.w/2), -size.h);
				    var icon = new Tmap.Icon("https://developers.skplanetx.com/upload/tmap/marker/pin_b_s_simple.png",size,offset);
				    var marker = new Tmap.Markers(options.lonlat,icon,options.label);
				    markerLayer.addMarker(marker);
				    marker.events.register("mouseover", marker, onOverMouse);
				    marker.events.register("mouseout", marker, onOutMouse);
				    marker.events.register("click", marker, onClickMouse);
				}
				function onOverMouse(e){
				    this.popup.show();
				}
				function onOutMouse(e){
				    this.popup.hide();
				}
				function onClickMouse(e){
				    console.log(this.lonlat);
				    getDataFromLonLat(this.lonlat);
				}
				function searchPOI(starting){
				    tdata = new Tmap.TData();
				    tdata.events.register("onComplete", tdata, onCompleteTData);
				    var center = map.getCenter();
				    tdata.getPOIDataFromSearch(encodeURIComponent(starting), {centerLon:center.lon, centerLat:center.lat});
				}
				function onCompleteTData(e){
				    if(jQuery(this.responseXML).find("searchPoiInfo pois poi").text() != ''){
				        jQuery(this.responseXML).find("searchPoiInfo pois poi").each(function(){
				            var name = jQuery(this).find("name").text();
				            var id = jQuery(this).find("id").text();
				            var lon = jQuery(this).find("frontLon").text();
				            var lat = jQuery(this).find("frontLat").text();
				            var options = {
				                label:new Tmap.Label(name),
				                lonlat:new Tmap.LonLat(lon, lat)
				            };
				            addMarker(options);
				        });
				    }else {
				        alert('검색결과가 없습니다.');
				    }
				    map.zoomToExtent(markerLayer.getDataExtent());
				    tdata.events.unregister("onComplete", tdata, onCompleteTData);
				}
				function getDataFromLonLat(lonlat){
				    tdata = new Tmap.TData();
				    tdata.events.register("onComplete", tdata, onCompleteTDataLonLat);
				    tdata.getPOIDataFromLonLat(lonlat, encodeURIComponent("편의점"), {bizAppId:"701a4eaf1326", radius:1});
				}
				function onCompleteTDataLonLat(e){
				    if(jQuery(this.responseXML).find("searchPoiInfo pois poi").text() != ''){
				        jQuery(this.responseXML).find("searchPoiInfo pois poi").each(function(){
				            var name = jQuery(this).find("name").text();
				            var lon = jQuery(this).find("frontLon").text();
				            var lat = jQuery(this).find("frontLat").text();
				            var options = {
				                label:new Tmap.Label(name),
				                lonlat:new Tmap.LonLat(lon, lat)
				            };
				            console.log(name, lon, lat);
 							
 							if(clcl == true) {
					            $("#ul").append("<li>" + name + "</li>" 
					            				+ "<input type='hidden' value='" + lon + "'>"
					            				+ "<input type='hidden' value='" + lat + "'>");
 							} else if (clcl == false) {
 								$("#ul1").append("<li>" + name + "</li>" 
					            				+ "<input type='hidden' value='" + lon + "'>"
					            				+ "<input type='hidden' value='" + lat + "'>");
 							}

				            addMarker(options); // all 마커
				        });
				    }else {
				        alert('검색결과가 없습니다.');
				    }
				    map.zoomToExtent(markerLayer.getDataExtent());
				    tdata.events.unregister("onComplete", tdata, onCompleteTDataLonLat);
				}


				$("#ul").on("click", "li", function() {

					alert($(this).next().val() + ", " +  $(this).next().next().val());

					$("#startCoordX").val($(this).next().val());
					$("#startCoordY").val($(this).next().next().val());
					
					$("#startPoint").val("lon=" + $(this).next().val() + ",lat=" +  $(this).next().next().val());			
				});

				$("#ul1").on("click", "li", function() {

					alert($(this).next().val() + ", " +  $(this).next().next().val());

					$("#endCoordX").val($(this).next().val());
					$("#endCoordY").val($(this).next().next().val());

					$("#endPoint").val("lon=" + $(this).next().val() + ",lat=" +  $(this).next().next().val());
				});


			    $("#gogo").on("click", function(){
						poiRoute();
			    });

				//경로 정보 로드
				function poiRoute(){

					var startx = $("#startCoordX").val();   // 경도 자르기
					var starty = $("#startCoordY").val();   // 경도 자르기
					
					var stopx = $("#endCoordX").val();   // 경도 자르기
					var stopy = $("#endCoordY").val();   // 경도 자르기
					
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



	</script>

	
</body>
</html>
