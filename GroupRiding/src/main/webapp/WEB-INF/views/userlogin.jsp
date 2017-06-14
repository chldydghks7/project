<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="./resources/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="./resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<style>
#profile{
width: 50px;
height:50px;

}

</style>
<body>
<table>
<tr>
<td><h2>${uid}</h2></td>
<td><ul  class="mailbox-attachments clearfix uploadedList"></ul></td>
</tr>

</table>
<script id="templateAttach" type="text/x-handlebars-template">
  <span class="mailbox-attachment-icon has-img"><img id='profile' src="{{imgsrc}}" alt="Attachment"></span> 
</script>  

<script>
   var uid = "${uid}";   //
   var template = Handlebars.compile($("#templateAttach").html());   
   
   
   
   $.getJSON("getAttach/"+uid,function(list){
      $(list).each(function(){
         
         var fileInfo = getFileInfo(this);
         
         var html = template(fileInfo);
         var aaa = 1;
         
         if(aaa=1){
             $(".uploadedList").append(html);
            
         }
         
      });
   });
   
   
</script>



</body>
</html>