<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,700&amp;subset=cyrillic,latin">

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="./resources/assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/assets/css/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="./resources/assets/css/headers/header-v6.css">
	<link rel="stylesheet" href="./resources/assets/css/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="./resources/assets/plugins/animate.css">
	<link rel="stylesheet" href="./resources/assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="./resources/assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/assets/plugins/brand-buttons/brand-buttons-inversed.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="./resources/assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="./resources/assets/css/theme-skins/dark.css">

	<!-- CSS Page Style -->
	<link rel="stylesheet" href="./resources/assets/css/pages/page_log_reg_v3.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="./resources/assets/css/custom.css">

	<style>
		#close {
			font-size: 2em;
			color:white;
			float: right;
			margin-right: 15px;
		}
		#close:hover {
			opacity: 0.5;
			text-decoration: none;
		}
	</style>

<body style="background-color: black;">
	<a href = "/" id = "close">X</a>
	<div class="container content-md">
			<div class="margin-bottom-60 head">
				<h1>Login or Register an Account</h1>
			</div>
	
			<div class="row space-xlg-hor equal-height-columns">
				<!--login Block-->
				<form action="signInPost" method="POST">
				<div class="form-block login-block col-md-6 col-sm-12 rounded-left equal-height-column">
					<div class="form-block-header">
						<h2 class="margin-bottom-15">Sign In</h2>
					</div>
				
					<div class="input-group margin-bottom-20">
						<span class="input-group-addon rounded-left"><i class="icon-user color-white"></i></span>
						<input type="text" class="form-control rounded-right" placeholder="ID" id="uid11" name="uid">
					</div>

					<div class="input-group margin-bottom-20">
						<span class="input-group-addon rounded-left"><i class="icon-lock color-white"></i></span>
						<input type="password" class="form-control rounded-right" placeholder="Password" id="upw11" name="upw">
					</div>

					<div class="row margin-bottom-70">
						<div class="col-md-12">
							<button type="submit" id="sign" class="btn-u btn-block rounded">Sign In</button>
						</div>
					</div>
	
					<div class="social-login">
						<div class="or rounded-x"></div>
						<!-- <ul class="list-unstyled">
							<li>
								<button class="btn rounded btn-block btn-lg btn-facebook-inversed margin-bottom-20">
									<i class="fa fa-facebook"></i> Sign in with Facebook
								</button>
							</li>
							<li>
								<button class="btn rounded btn-block btn-lg btn-twitter-inversed">
									<i class="fa fa-twitter"></i> Sign in with Twitter
								</button>
							</li>
						</ul> -->
					</div>
				</div>
				</form>
			

				<!--Reg Block-->
			<form action="register" method="post" id='registerForm'>
				<div class="form-block reg-block col-md-6 col-sm-12 rounded-right equal-height-column">
					<div class="form-block-header">
						<h2 class="margin-bottom-10">Sign Up</h2>
					</div>
	
					<div class="input-group margin-bottom-20">
						<span class="input-group-addon rounded-left"><i class="icon-pencil"></i></span>
						<input type="text" class="form-control rounded-right" placeholder="아이디" id="uid" name="uid"/>
					</div>
					<div class="input-group margin-bottom-20">
					<input type="button" class="btn-u btn-block rounded" style="background-color: black; width:120px; height:35px; text-align: center; " id="check" value="중복체크">
					</div>

					<div class="input-group margin-bottom-20">
						<span class="input-group-addon rounded-left"><i class="icon-user"></i></span>
						<input type="text" class="form-control rounded-right" placeholder="이름" id="uname" name="uname">
					</div>

					<div class="input-group margin-bottom-20">
						<span class="input-group-addon rounded-left"><i class="icon-lock"></i></span>
						<input type="password" class="form-control rounded-right" placeholder="비밀번호" id="upw" name="upw">
					</div>

					<div class="input-group margin-bottom-20">
						<span class="input-group-addon rounded-left"><i class="icon-lock"></i></span>
						<input type="password" class="form-control rounded-right" placeholder="비밀번호 확인" id="upw1" name="upw1">
					</div>

					<div class="input-group margin-bottom-20">
						<span class="input-group-addon rounded-left"><i class="icon-user"></i></span>
						<input type="date" class="form-control rounded-right" placeholder="생년월일" id="uage" name="uage">
					</div>

					<div>	<!-- 파일 업로드 -->
			    	  <label>프로필 : File DROP Here</label>
			    	
				     	<div>
							<div class="fileDrop" style="width: 300px; height: 100px; border: 1px dotted blue;"></div>
						</div>
			     	 
			     	 <div>
			     	 	<div>
			     	 		<hr>
			     	 	</div>
			     	 	
			     	 	<ul class="mailbox-attachments cleafix uploadedList">
			     	 	</ul>
			     	 </div>
		     	 </div>

					<div class="row">
						<div class="col-md-12">
							<button type="submit" class="btn-u btn-block rounded" id="save">Continue</button>
						</div>
					</div>
				</div>
			</form>
			
<script type="text/javascript" src="./resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">

  <span class="mailbox-attachment-icon has-img" style="position: absolute; top:455px; left:130px;"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a  href="{{getLink}}" class="mailbox-attachment-name" style="display:none">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn" style="display:none"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
               
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
			
				<!--End Reg Block-->

				<!--End login Block-->


	<!-- JS Global Compulsory -->
	<script src="./resources/assets/plugins/jquery/jquery.min.js"></script>
	<script src="./resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="./resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script src="./resources/assets/plugins/back-to-top.js"></script>
	<script src="./resources/assets/plugins/backstretch/jquery.backstretch.min.js"></script>
	<script type="text/javascript" src="./resources/assets/js/plugins/style-switcher.js"></script>

	<!-- JS Customization -->
	<script src="./resources/assets/js/custom.js"></script>

	<!-- JS Page Level -->
	<script src="./resources/assets/js/app.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>
	<script>
		$(".forms-wrapper").backstretch([
			"assets/img/bg/6.jpg",
			"assets/img/bg/5.jpg",
			"assets/img/bg/7.jpg",
			], {
				fade: 1000,
				duration: 7000
			});
	</script>
<!--[if lt IE 9]>
  <script src="assets/plugins/respond.js"></script>
  <script src="assets/plugins/html5shiv.js"></script>
  <script src="assets/plugins/placeholder-IE-fixes.js"></script>
  <![endif]-->
</body>
