<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

	<link href='${pageContext.request.contextPath}/resources/fullcalendar/lib/main.css' rel='stylesheet' />
	<script src='${pageContext.request.contextPath}/resources/fullcalendar/lib/main.js'></script>
	<script src='${pageContext.request.contextPath}/resources/fullcalendar/lib/locales/ko.js'></script>
	
	<script type='text/javascript'>
	document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('calendar');
	
	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    googleCalendarApiKey: 'AIzaSyBvDlrxWdGFdQ89-GKsF0fY1EKrNlyhlOY',
	    eventSources: [
	    { 
	    	googleCalendarId : 'ko.south_korea#holiday@group.v.calendar.google.com',
	    	className : 'ko_event',
	    	color:'red'
	    	}
	
	    //google계정으로 추가할 시 이곳에 추가
	    ],
	    locale: 'ko', //언어
	   events:[
		 
		   
		{
	   		title:'${calendarList.get(0).getEventComName()}',
	       	start:'${calendarList.get(0).getEventStartDate()}',
	       	end:'${calendarList.get(0).getEventEndDate()}',
	       	color:'#FAEBD7'
	     },
	    {
	    	title:'${calendarList.get(1).getEventComName()}',
	        start:'${calendarList.get(1).getEventStartDate()}',
	        end:'${calendarList.get(1).getEventEndDate()}',
	        color:"#6937a1"
	     },
	    {
	     	title:'${calendarList.get(2).getEventComName()}',
	        start:'${calendarList.get(2).getEventStartDate()}',
	        end:'${calendarList.get(2).getEventEndDate()}',
	        color:"#f7e600"
	     },		
	    {
	      	title:'${calendarList.get(3).getEventComName()}',
	        start:'${calendarList.get(3).getEventStartDate()}',
	        end:'${calendarList.get(3).getEventEndDate()}',
	        color:"#2a67b7"
	     },
	    {
	       	title:'${calendarList.get(4).getEventComName()}',
	        start:'${calendarList.get(4).getEventStartDate()}',
	        end:'${calendarList.get(4).getEventEndDate()}',
	        color:"#008d62"
	     },
	     {
	    	title:'${calendarList.get(5).getEventComName()}',
	        start:'${calendarList.get(5).getEventStartDate()}',
	        end:'${calendarList.get(5).getEventEndDate()}',
	        
	      },     
	     {
	     	title:'${calendarList.get(6).getEventComName()}',
	        start:'${calendarList.get(6).getEventStartDate()}',
	        end:'${calendarList.get(6).getEventEndDate()}',
	        color:"#6937a1"
	      },
	     {
	     	title:'${calendarList.get(7).getEventComName()}',
	       	start:'${calendarList.get(7).getEventStartDate()}',
	       	end:'${calendarList.get(7).getEventEndDate()}',
	       	color:"#ff3399"
	      }
	    ]
	
	  });
	  calendar.render();
	});
	</script>
	<style>
		#calendar{
	   height:300%;,
	   margin:2px auto;
	}
	</style>

  <body> 
    
   <!-- 
    
	<div class="hero-wrap js-fullheight"
		style=" background-image: url('../../../../resources/images/bg_8.jpg'); "
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-11 ftco-animate text-center">
					<h1 class="mb-4">캘린더 맵</h1>
				</div>
			</div>
		</div>
	</div>
	
	 -->

	<section class="ftco-section bg-light ftco-no-pt ftco-intro">
		<div class="container" style="color:black">
			<div class="row justify-content-center pb-2">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h2>채용 공고 일정 확인</h2>
				</div>
			</div>
			
			<div class="row">
				<div id='calendar' class="col-md-12" style="color:black"></div>	
			</div>
		</div>
	</section>
	
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
  
<!-- whalee js -->
<script src="../resources/js/whaleeTest.js"></script>
<!-- 결제 모듈 js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

  </body>
</html>