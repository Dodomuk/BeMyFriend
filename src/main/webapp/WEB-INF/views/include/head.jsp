<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- date 형식을 바꾸기 위한 jstl -->
<jsp:useBean id="now" class="java.util.Date" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="kr">
<%-- 모든 페이지에서 공통적으로 사용할 헤더정보를 담은 헤더태그 --%>
<head>
<title>비 마이 프랜드</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- stylesheet -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/animate.css">
<link rel="stylesheet"
	href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="/resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="/resources/css/flaticon.css">
<link rel="stylesheet" href="/resources/css/style.css">
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
									class="nav-link">수화를배워보자</a></li>
								<li class="nav-item"><a href="/calendar/index"
									class="nav-link">일정표/지도</a></li>
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

<!-- script  -->
<script defer type="text/javascript" src="/resources/js/common/asyncPageError.js"></script>
<script defer src="/resources/js/jquery.min.js"></script>
<script defer src="/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script defer src="/resources/js/popper.min.js"></script>
<script defer src="/resources/js/bootstrap.min.js"></script>
<script defer src="/resources/js/jquery.easing.1.3.js"></script>
<script defer src="/resources/js/jquery.waypoints.min.js"></script>
<script defer src="/resources/js/jquery.stellar.min.js"></script>
<script defer src="/resources/js/jquery.animateNumber.min.js"></script>
<script defer src="/resources/js/bootstrap-datepicker.js"></script>
<script defer src="/resources/js/jquery.timepicker.min.js"></script>
<script defer src="/resources/js/owl.carousel.min.js"></script>
<script defer src="/resources/js/jquery.magnific-popup.min.js"></script>
<script defer src="/resources/js/scrollax.min.js"></script>
<script defer src="/resources/js/main.js"></script>
<!-- 음성인식 js -->
<script src="/resources/js/dodomuk.js"></script>

<!-- 1:1채팅 -->
<script>
	(function() {
		var w = window;
		if (w.ChannelIO) {
			return (window.console.error || window.console.log || function() {
			})('ChannelIO script included twice.');
		}
		var ch = function() {
			ch.c(arguments);
		};
		ch.q = [];
		ch.c = function(args) {
			ch.q.push(args);
		};
		w.ChannelIO = ch;
		function l() {
			if (w.ChannelIOInitialized) {
				return;
			}
			w.ChannelIOInitialized = true;
			var s = document.createElement('script');
			s.type = 'text/javascript';
			s.async = true;
			s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
			s.charset = 'UTF-8';
			var x = document.getElementsByTagName('script')[0];
			x.parentNode.insertBefore(s, x);
		}
		if (document.readyState === 'complete') {
			l();
		} else if (window.attachEvent) {
			window.attachEvent('onload', l);
		} else {
			window.addEventListener('DOMContentLoaded', l, false);
			window.addEventListener('load', l, false);
		}
	})();
	ChannelIO('boot', {
		"pluginKey" : "f8276a9d-6809-4543-9182-75dc6d1d568b"
	});
</script>
</body>
</html>