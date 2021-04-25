<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>비 마이 프랜드</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">
<link rel="stylesheet" href="../../../../resources/css/animate.css">
<link rel="stylesheet"
	href="../../../../resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="../../../../resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="../../../../resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="../../../../resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="../../../../resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="../../../../resources/css/flaticon.css">
<link rel="stylesheet" href="../../../../resources/css/style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<style type="text/css">
.imageBox {
	position: relative;
	top: 50%;
	left: 50%;
	margin-top: -100px;
	margin-left: -100px;
	width: 200px;
	height: 200px;
}
</style>
</head>
<body>
	<!-- header bar -->
	<div class="wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-6 d-flex align-items-center">
					<p class="mb-0 phone pl-md-2">
						<a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span>
							+82 10-234-5678</a> <a href="#"><span
							class="fa fa-paper-plane mr-1"></span> contactbmf@bmf.co.kr</a>
					</p>
				</div>
				<div class="col-md-6 d-flex justify-content-md-end">
					<div class="social-media">
						<p class="mb-0 d-flex">
							<c:if test="${empty userMember and empty comMember}">
								<a href="/member/user/login"
									class="d-flex align-items-center justify-content-center"><span
									class="fa fa-facebook">로그인</span></a>
								<a href="/member/company/login"
									class="d-flex align-items-center justify-content-center"><span
									class="fa fa-instagram">기업로그인</span></a>
								<a href="/member/join"
									class="d-flex align-items-center justify-content-center"><span
									class="fa fa-instagram">회원가입</span></a>
							</c:if>
							<c:if test="${userMember != null}">
								<a href="/member/user/logout"
									class="d-flex align-items-center justify-content-center"><span
									class="fa fa-facebook">로그아웃</span></a>
							</c:if>
							<c:if test="${comMember != null}">
								<a href="/member/company/logout"
									class="d-flex align-items-center justify-content-center"><span
									class="fa fa-instagram">로그아웃</span></a>
							</c:if>
							<c:if test="${comMember != null}">
								<a href="#"
									class="d-flex align-items-center justify-content-center"><span
									class="fa fa-instagram">광고관리</span></a>
							</c:if>

						</p>
					</div>
				</div>
			</div>
		</div>



		<!-- logo -->
		<nav
			class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
			id="ftco-navbar">
			<div class="controll_nav">
				<div class="logo_space">
					<div class="mainlogo"
						style="background-image: url('../../../../resources/images/logo_b.png')"></div>
					<div>
						<a class="navbar-brand" href="/index">BeMyFriends</a>
					</div>
				</div>


				<!-- nav bar -->
				<div class="nav-search">
					<div class="conheight">
						<div class="collapse navbar-collapse" id="ftco-nav">
							<div class="wrapSearch">
								<form class="smKey searchTitle"
									action="${context}/search/searchtitle" method="GET"
									id="searchTitle" name="searchTitle">
									<input type="search" id="searchText" title="searchJob"
										name="searchText" maxlength="50" style="background: none;">
									<button type="submit" class="searchBtn" id="common_search_btn">
										<i class="fas fa-search"></i>
									</button>
								</form>
							</div>
						</div>
						<div id="navwidth">
							<ul class="navbar-nav ml-auto">
								<li class="nav-item"><a href="/main" class="nav-link">Home</a></li>
								<li class="nav-item "><a href="/recruitment/recruitment"
									class="nav-link">채용정보</a></li>
								<li class="nav-item "><a href="/community/review/review"
									class="nav-link">커뮤니티</a></li>
								<li class="nav-item"><a href="/sign/signIndex"
									class="nav-link">수화를배워보자아</a></li>
								<li class="nav-item"><a href="/calendar/index"
									class="nav-link">calendar/map</a></li>
								<c:choose>
									<c:when test="${userMember != null}">
										<li class="nav-item"><a href="/member/user/resume/list"
											class="nav-link">자료실</a></li>
									</c:when>
									<c:when test="${comMember != null}">
										<li class="nav-item"><a href="/member/company/hire/list"
											class="nav-link">자료실</a></li>
									</c:when>
								</c:choose>

								<c:choose>
									<c:when test="${userMember != null}">
										<li class="nav-item"><a href="/member/user/mypage"
											class="nav-link">마이페이지</a></li>
									</c:when>
									<c:when test="${comMember != null}">
										<li class="nav-item"><a href="/member/company/mypage"
											class="nav-link">마이페이지</a></li>
									</c:when>
								</c:choose>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<button type="button" class="btn btn-success"
				onclick="startSpeechRecognition()">
				<i class="fas fa-headset">음성인식</i>
			</button>
		</nav>
	</div>

	<!-- END nav -->
	<!-- 공고 메인 -->
	<div class="row no-gutters" id="jobInfoBox"
		style="align-items: center;">
		<div class="col-md-8 col-md-offset-4">
			<div class="contact-wrap w-100 p-md-5 p-4">

				<h3>${recru.comName}</h3>
				<h1 class="mb-4">${recru.jobTitle}</h1>
				<form method="POST" id="contactForm" name="contactForm"
					class="contactForm">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="label" style="font-size: 20px;">지원 자격</label>
								<div>
									<label class="label col-sm-4">경력</label> <label
										class="col-sm-6">${recru.jobCareer}</label>
								</div>
								<div>
									<label class="label col-sm-4">학력</label> <label
										class="col-sm-6">${recru.jobNeed}</label>
								</div>
								<div>
									<label class="label col-sm-4">우대조건</label> <label
										class="col-sm-6">${recru.jobPreper}</label>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="label" style="font-size: 20px;">근무 조건</label>
								<div>
									<label class="label col-sm-4">고용 형태</label> <label
										class="col-sm-6">${recru.jobType}</label>
								</div>
								<div>
									<label class="label col-sm-4">급여</label> <label
										class="col-sm-6">${recru.jobSalary}</label>
								</div>
								<div>
									<label class="label col-sm-4">지역</label> <label
										class="col-sm-6">${recru.jobLocation}</label>
								</div>
							</div>
						</div>

						<fmt:formatDate var="today" value="${now}" pattern="yyyy-MM-dd" />

						<div class="col-md-6 col-md-offset-4">
							<div class="form-group">
								<c:if test="${today <= recru.jobDeadline}">
									<c:if
										test="${comMember.comIdx ne fn:substring(recru.typeIdx,1,7)}">
										<button type="button" class="btn btn-primary" onclick="resumePopup()">지원하기</button>
									</c:if>
									<c:if
										test="${comMember.comIdx eq fn:substring(recru.typeIdx,1,7)}">
										<div class="form-group">
											<input type="button" value="수정하기"
												onClick="location.href='/recruitment/recruitmentFix?recruNo=${recru.typeIdx}'"
												class="btn btn-primary">
										</div>
									</c:if>

								</c:if>
								<c:if test="${today > recru.jobDeadline}">
									<c:if
										test="${comMember.comIdx ne fn:substring(recru.typeIdx,1,7)}">
										<input value="지원 마감" class="btn btn-secondary">
									</c:if>
									<c:if
										test="${comMember.comIdx eq fn:substring(recru.typeIdx,1,7)}">
										<div class="form-group">
											<input type="button" value="수정하기"
												onClick="location.href='/recruitment/recruitmentFix?recruNo=${recru.typeIdx}'"
												class="btn btn-secondary">
										</div>
									</c:if>
								</c:if>
								<div class="submitting"></div>
							</div>

						</div>
						<!-- 첨부 사진 -->
						<div class="col-md-6">
							<div class="form-group">

								<a data-fancybox="gallery" href="#"
									style="width: 70%; height: 70%;"><img
									src="/files/${savepath1}${files1}"></a>
								<div class="submitting"></div>
								<c:if test="${files2 ne null}">
									<a data-fancybox="gallery" href="#"
										style="width: 70%; height: 70%;"><img
										src="/files/${savepath2}${files2}" /></a>
								</c:if>
								<div class="submitting"></div>
								<c:if test="${files3 ne null}">
									<a data-fancybox="gallery" href="#"
										style="width: 70%; height: 70%;"><img
										src="/files/${savepath3}${files3}" /></a>
								</c:if>
								<div class="submitting"></div>
								<c:if test="${files2 ne null}">
									<a data-fancybox="gallery" href="#"
										style="width: 70%; height: 70%;"><img
										src="/files/${savepath4}${files4}" /></a>
								</c:if>
								<div class="submitting"></div>
							</div>
						</div>
						<!-- 첨부사진끝 -->
					</div>
				</form>

			</div>

		</div>
		<div>
			<section class="ftco-section bg-light ftco-faqs">
				<div class="container">
					<div class="row" style="justify-content: 50%;">
						<div class="col-lg-3">
							<img src="/resources/recruitment/${view.jobImage}">
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<!-- 공고 끝 -->

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
					<h2 class="footer-heading">Be my Friends</h2>
					<p>사회로의 첫걸음, [ Be My Freinds ] 와 함께하세요.</p>
					<ul class="ftco-footer-social p-0">
						<li class="ftco-animate"><a href="#" data-toggle="tooltip"
							data-placement="top" title="Twitter"><span
								class="fa fa-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#" data-toggle="tooltip"
							data-placement="top" title="Facebook"><span
								class="fa fa-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#" data-toggle="tooltip"
							data-placement="top" title="Instagram"><span
								class="fa fa-instagram"></span></a></li>
					</ul>
				</div>
				<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
					<h2 class="footer-heading">최신 뉴스</h2>
					<div class="block-21 mb-4 d-flex">
						<a class="img mr-4 rounded"
							style="background-image: url(../../../../resources/images/bg_10.png);"></a>
						<div class="text">
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about</a>
							</h3>
							<div class="meta">
								<div>
									<a href="#"><span class="icon-calendar"></span> April 7,
										2020</a>
								</div>
								<div>
									<a href="#"><span class="icon-person"></span> Admin</a>
								</div>
								<div>
									<a href="#"><span class="icon-chat"></span> 19</a>
								</div>
							</div>
						</div>
					</div>
					<div class="block-21 mb-4 d-flex">
						<a class="img mr-4 rounded"
							style="background-image: url(../../../../resources/images/bg_9.png);"></a>
						<div class="text">
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about</a>
							</h3>
							<div class="meta">
								<div>
									<a href="#"><span class="icon-calendar"></span> April 7,
										2020</a>
								</div>
								<div>
									<a href="#"><span class="icon-person"></span> Admin</a>
								</div>
								<div>
									<a href="#"><span class="icon-chat"></span> 19</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 pl-lg-5 mb-4 mb-md-0">
					<h2 class="footer-heading">이동하기</h2>
					<ul class="list-unstyled">
						<li><a href="/main" class="py-2 d-block">Home</a></li>
						<li><a href="/recruit" class="py-2 d-block">채용정보</a></li>
						<li><a href="#" class="py-2 d-block">법률/매체</a></li>
						<li><a href="#" class="py-2 d-block">커뮤니티</a></li>
						<!--  <li><a href="#" class="py-2 d-block">Blog</a></li> -->
						<!--  <li><a href="" class="py-2 d-block">mypage</a></li> -->
					</ul>
				</div>
				<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
					<h2 class="footer-heading">문의사항</h2>
					<div class="block-23 mb-3">
						<ul>
							<li><span class="icon fa fa-map"></span><span class="text">경기도
									성남시 분당구</span></li>
							<li><a href="#"><span class="icon fa fa-phone"></span><span
									class="text">+82 10-234-5678</span></a></li>
							<li><a href="#"><span class="icon fa fa-paper-plane"></span><span
									class="text">contactbmf@bmf.co.kr</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row mt-5">
				<div class="col-md-12 text-center">

					<p class="copyright">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved <i class="fa fa-heart" aria-hidden="true"></i>
						<a href="https://colorlib.com" target="_blank">Be My Friends</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>




	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<script type="text/javascript">
      $(document).on("click","img",function()){
    	  
      }
  
    </script>
	<script src="../../../../resources/js/jquery.min.js"></script>
	<script src="../../../../resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="../../../../resources/js/popper.min.js"></script>
	<script src="../../../../resources/js/bootstrap.min.js"></script>
	<script src="../../../../resources/js/jquery.easing.1.3.js"></script>
	<script src="../../../../resources/js/jquery.waypoints.min.js"></script>
	<script src="../../../../resources/js/jquery.stellar.min.js"></script>
	<script src="../../../../resources/js/jquery.animateNumber.min.js"></script>
	<script src="../../../../resources/js/bootstrap-datepicker.js"></script>
	<script src="../../../../resources/js/jquery.timepicker.min.js"></script>
	<script src="../../../../resources/js/owl.carousel.min.js"></script>
	<script src="../../../../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../../../../resources/js/scrollax.min.js"></script>
	<script src="../../../../resources/js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
	<script type="text/javascript">
	
	function resumePopup(){
		
		window.open("/popup/selectresume", "resume", "width=400, height=300, left=100, top=50");
	}
	
	</script>
	
	

</body>
</html>