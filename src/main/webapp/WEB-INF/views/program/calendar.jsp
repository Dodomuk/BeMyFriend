<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
		   		title:'${programList.get(0).getProgramComName()}',
		       	start:'${programList.get(0).getProgramStartDate()}',
		       	end:'${programList.get(0).getProgramEndDate()}',
		       	color:'#FAEBD7'
		     },
		    {
			   	title:'${programList.get(1).getProgramComName()}',
			    start:'${programList.get(1).getProgramStartDate()}',
			    end:'${programList.get(1).getProgramEndDate()}',
			    color:'#6937a1'
			 },
			{
				title:'${programList.get(2).getProgramComName()}',
				start:'${programList.get(2).getProgramStartDate()}',
				end:'${programList.get(2).getProgramEndDate()}',
				color:'#f7e600'
			 },
			{
				title:'${programList.get(3).getProgramComName()}',
				start:'${programList.get(3).getProgramStartDate()}',
				end:'${programList.get(3).getProgramEndDate()}',
				color:'#2a67b7'
			 },
			{
				title:'${programList.get(4).getProgramComName()}',
				start:'${programList.get(4).getProgramStartDate()}',
				end:'${programList.get(4).getProgramEndDate()}',
				color:'#008d62'
			},
			{
				title:'${programList.get(5).getProgramComName()}',
				start:'${programList.get(5).getProgramStartDate()}',
				end:'${programList.get(5).getProgramEndDate()}',
				color:'#6937a1'
			},
			{
				title:'${programList.get(6).getProgramComName()}',
				start:'${programList.get(6).getProgramStartDate()}',
				end:'${programList.get(6).getProgramEndDate()}',
				color:'#ff3399'
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
</head>

  <!-- 팝업팝업 -->
  <!-- <body onload = "javascript:popup()"> -->
  <body>
	<!-- header bar -->
   		<div class="wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex align-items-center">
						<p class="mb-0 phone pl-md-2">
							<a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +82 10-234-5678</a> 
							<a href="#"><span class="fa fa-paper-plane mr-1"></span> contactbmf@bmf.co.kr</a>
						</p>
					</div>
					<div class="col-md-6 d-flex justify-content-md-end">
						<div class="social-media">
				    		<p class="mb-0 d-flex">
				    			<c:if test="${empty userMember and empty comMember}">
				    					<a href="/member/user/login" class="d-flex align-items-center justify-content-center"><span class="fa">로그인</span></a>
				    					<a href="/member/company/login" class="d-flex align-items-center justify-content-center"><span class="fa">기업로그인</span></a>
				    					<a href="/member/join" class="d-flex align-items-center justify-content-center"><span class="fa">회원가입</span></a>
								</c:if>
								<c:if test="${userMember != null}">
										<a href="/member/user/logout" class="d-flex align-items-center justify-content-center"><span class="fa">로그아웃</span></a>
								</c:if>
								<c:if test="${comMember != null}">
				    					<a href="/member/company/logout" class="d-flex align-items-center justify-content-center"><span class="fa">로그아웃</span></a>
								</c:if>
								<c:if test ="${comMember != null}">
									<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa">광고관리</span></a>
								</c:if>
				    			
				    		</p>
		        		</div>
					</div>
				</div>
			</div>
			
			
			
			<!-- logo -->
			<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">	
				<div class="controll_nav">
					<div class= "logo_space">
						<div class="mainlogo" style="background-image: url('../../../../resources/images/logo_b.png')"></div>
						<div><a class="navbar-brand" href="/index">BeMyFriends</a></div>
					</div>
					
					
			<!-- nav bar -->
					<div class="nav-search">
						<div class="conheight">
				     		<div class="collapse navbar-collapse" id="ftco-nav">
							    <div class="wrapSearch">
						            <form class="smKey searchTitle"  action="${context}/search/searchtitle" method="GET" id="searchTitle" name ="searchTitle">
						                <input type="search" id="searchText" title="searchJob" name="searchText" maxlength="50" style="background: none;">
						                <button type="submit"  class="searchBtn" id="common_search_btn"><i class="fas fa-search"></i></button>
						               
 
									</form>
					    		</div>
					   		</div>
						    <div id="navwidth">
						    	<ul class="navbar-nav ml-auto">
						        	<li class="nav-item"><a href="/main" class="nav-link">Home</a></li>
						        	<li class="nav-item "><a href="/recruitment/recruitment" class="nav-link">채용정보</a></li>
						        	<li class="nav-item "><a href="/community/review/review" class="nav-link">커뮤니티</a></li>
							        <li class="nav-item"><a href="/sign/signIndex" class="nav-link">수화를배워보자아</a></li>
							        <li class="nav-item"><a href="/calendar/index" class="nav-link">calendar/map</a></li>

							        <c:choose>
										<c:when test ="${userMember != null}">
											<li class="nav-item"><a href="/member/user/resume/list" class="nav-link">자료실</a></li>
										</c:when>
										<c:when test ="${comMember != null}">
											<li class="nav-item"><a href="/member/company/hire/list" class="nav-link">자료실</a></li>
										</c:when>
									</c:choose>
							        
							        <c:choose>
										<c:when test ="${userMember != null}">
											<li class="nav-item"><a href="/member/user/mypage" class="nav-link">마이페이지</a></li>
										</c:when>
										<c:when test ="${comMember != null}">
											<li class="nav-item"><a href="/member/company/mypage" class="nav-link">마이페이지</a></li>
										</c:when>
									</c:choose>
						        </ul>
						    </div>
						</div>
					</div>
				</div>
				 <button type="button" class="btn btn-success" onclick="startSpeechRecognition()"><i class="fas fa-headset">음성인식</i></button>
			</nav>
		</div>
		
    <!-- END nav -->
    
    
    
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
					<h2>프로그램 일정 확인</h2>
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