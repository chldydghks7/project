<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="./resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	
	<div>
		<h4 class="uploadedList">${uid}님</h4>
	</div>
	



<script id="templateAttach" type="text/x-handlebars-template">
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment" style="width:50px; height:30px;"></span> 
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
</script>
