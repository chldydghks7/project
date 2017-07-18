<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDyQjki7axvtCvqFULjxcicQimSUtg0tvk">
    </script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<style>


 #map {
        width:600px;
        height:500px;
      }

<!-- 정보표 -->

table.type05 {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    margin: 20px 10px;
}
table.type05 th {
    width: 150px;
    padding: 30px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #efefef;
}
table.type05 td {
    width: 250px;
    padding: 0px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

.title{
color:black;
background-color:#FCFCFC;  
text-align:center;
vertical-align:middle;     
font-weight:bold;
font-size:30pt;
font-family:돋움,Dotum;
text-shadow: black;
line-height:70px;
}

<!-- 그래프 -->



</style>

      
      

<!-- 제목 -->
<div class="title" style="width:100%; height:10%">

라이딩 기록

</div>


<div style="width:10%;  height:1000px; float:left">
</div>

<div style="float:left;">
<div id="map"></div>
</div>

<table class="type05">
    <tr>
        <th scope="row">라이딩 아이디</th>
        <td>${rInfo.riding_id}</td>
    </tr>
    <tr>
        <th scope="row">사용자 아이디</th>
        <td>${rInfo.uid}</td>
    </tr>
    <tr>
        <th scope="row">라이딩 시간</th>
        <td>${rInfo.alltime}</td>
    </tr>
    <tr>
        <th scope="row">라이딩 날짜</th>
        <td>${rInfo.startDate}</td>
    </tr>
    <tr>
        <th scope="row">라이딩 총거리</th>
        <td>${rInfo.alldistance}</td>
    </tr>
    <tr>
        <th scope="row">라이딩 평속</th> 
        <td>${rInfo.avgspeed}</td>
    </tr>
</table>


<table class="type05">
    <tr>
        <th scope="row">속도</th>
        <td><div id="chart_div1" style="width: 300px;display: inline-block; height: 300px;"></div><!-- 속도 --></td>
        <td><div id="chart_div" style="width: 300px;float:left; height: 300px;"></div><!-- 고도 --></td>
        <td><div id="chart_div2" style="width:300x;  left:-70px; top:850px; height: 300px;"/></td>
        
    </tr>
</table>




<center><a href="calendar?uid=${uid}">come back to my Calendar</a></center>
   
   
    
   
   
   
    
   
    

  
    

<script>
   google.charts.load('current', {packages: ['corechart', 'line']});
   google.charts.setOnLoadCallback(drawBasic);

   function drawBasic() {

         var data = new google.visualization.DataTable();
         data.addColumn('number', 'X');
         data.addColumn('number', '고도');

         data.addRows([
            <c:forEach items="${grap}" var="i" varStatus="status">
               [${status.count}, ${i.altitude}],
            </c:forEach>
         ]);

         var options = {
          legend: { position: 'top', textStyle: {fontSize: 14 ,bold:true}},
         //  tooltip: {textStyle:  {fontName: 'TimesNewRoman',fontSize: 15,bold: false}},     
           hAxis: {
             title: '시간(초)'
           },
           vAxis: {
             title: ''
           },
           colors: ['red'],
           
           animation: {duration: 1500, startup: true, easing: 'linear'}


         };

         var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

         chart.draw(data, options);
       }
   </script>
   
   <script>
   google.charts.load('current', {packages: ['corechart', 'line']});
   google.charts.setOnLoadCallback(drawBasic);

   function drawBasic() {

         var data = new google.visualization.DataTable();
         data.addColumn('number', 'X');
         data.addColumn('number', '속도');

         data.addRows([
            <c:forEach items="${grap}" var="i" begin="0" varStatus="status">
            [${status.count}, ${i.speed}],
            </c:forEach>
         ]);

         var options = {
           legend: { position: 'top', textStyle: {fontSize: 14, bold:true}},
           hAxis: {
             title: '시간(초)'
           },
           vAxis: {
             title: ''
           },
           colors: ['blue'],
           
           animation: {duration: 1500, startup: true, easing: 'linear'}


         };

         var chart = new google.visualization.LineChart(document.getElementById('chart_div1'));

         chart.draw(data, options);
       }
   </script>
   
   <script>
   
    function initMap() {
           var map = new google.maps.Map(document.getElementById('map'), {
             zoom: 11,
             center: {lat:35.8960, lng: 128.6235}
           });

           var ctaLayer = new google.maps.KmlLayer({
             url: 'http://39.121.239.182:8080/can/resources/${rInfo.kml_name}',
             map: map
           });
         }
   window.onload=function(){
      initMap();
   }
      
   </script>
   
   <script>
      var a = "${rInfo.startDate}"
      var b = "${rInfo.startDate}"
      
      var ridingDate = a.substr(0, 10);   // 2017-06-01
      var ridingTime = b.substr(11,5)      // 13:11
   </script>
   
   <script type="text/javascript">
      //차트 및 코어 차트 패키지를 로드함.
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);
   
      function drawVisualization() {         

          
         
         $.ajax({
            url:"Ridingdataget2",
            success:function(data2){
               
               var data3;
               var time= data2[0].alltime.split("/");
               time=time[2];
               console.log(data2);
                                       
               data3 = new google.visualization.DataTable();
               data3.addColumn('string', '거리, 시간, 칼로리');
               data3.addColumn('number', '총거리');
               data3.addColumn('number', '평균속도');
               data3.addColumn('number', '칼로리소모량');
               data3.addRows(data2.length);
        
            
               //Math.round(avKcaluse*((${time}*10)/60)*70)
             
               console.log(data2[0].alldistance)
               console.log(data2[0].kcal)
                
               var avg;
               avg = ${rInfo.avgspeed};
               console.log(avg);
              
        
               data3.setCell(0, 0, null);
               data3.setCell(0, 1, data2[0].alldistance);
               data3.setCell(0, 2, avg);
               data3.setCell(0, 3, data2[0].kcal);

              
   
               var options = {   
                    
                     legend: { position: 'top'},
                     hAxis: {
                        title: "", 
                         
                     },
                     animation: {
                         duration: 1500,
                         easing: 'out',
                         startup: true
                       },
                     seriesType: 'bars',
                     series: {1: {type: 'bars'}},
                     
                  };

               var chart = new google.visualization.ComboChart(document.getElementById('chart_div2'));
               chart.draw(data3, options);
                  
            }
         });
         
         
         
      }
   </script>