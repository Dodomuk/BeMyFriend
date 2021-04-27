<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp"%>
<!-- 팝업팝업 -->
<!-- <body onload = "javascript:popup()"> -->
<body>

	<div class="hero-wrap js-fullheight"
		style="background-image: url('../../../../resources/images/bg_13.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-11 ftco-animate text-center">
					<h1 class="mb-4">당신의 새로운 시작을 응원합니다.</h1>
					<p>
						<a href="#" class="btn btn-primary mr-md-4 py-3 px-4">Learn
							more <span class="ion-ios-arrow-forward"></span>
						</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<hr>
	<section class="ftco-section ftco-no-pt ftco-no-pb">
		<div class="container">
			<div class="row d-flex no-gutters">
				<div class="col-md-5 d-flex">
					<div
						class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-center mb-4 mb-sm-0"
						style="background-image: url(resources/images/main/wouldSection.jpg);"></div>
				</div>
				<div class="col-md-7 pl-md-5 py-md-5">
					<div class="heading-section pt-md-5">
						<h2 class="mb-4">Would you be my friend?</h2>
					</div>
					<div class="row">
						<div class="col-md-6 services-2 w-100 d-flex">
							<div
								class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-stethoscope"></span>
							</div>
							<div class="text pl-3">
								<h4>Easy</h4>
								<p>비교적 찾기 쉽지 않은 장애인 구직사이트, 직관적으로 쉽게 사용할 수 있는 구직 사이트를 만들겠습니다.</p>
							</div>
						</div>
						<div class="col-md-6 services-2 w-100 d-flex">
							<div
								class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-customer-service"></span>
							</div>
							<div class="text pl-3">
								<h4>Choose</h4>
								<p>시설별 / 필요조건 등 필터링 검색기능을 도입하여 장애인분들도 원하는 기업을 직접 선택할 수 있도록
									하겠습니다.</p>
							</div>
						</div>
						<div class="col-md-6 services-2 w-100 d-flex">
							<div
								class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-emergency-call"></span>
							</div>
							<div class="text pl-3">
								<h4>Company</h4>
								<p>국가 공공기관 뿐만이 아닌, 일반 사기업, 사회적 기업 등에 대한 정보도 쉽게 접할 수 있도록
									하겠습니다.</p>
							</div>
						</div>
						<div class="col-md-6 services-2 w-100 d-flex">
							<div
								class="icon d-flex align-items-center justify-content-center">
								<span class="flaticon-veterinarian"></span>
							</div>
							<div class="text pl-3">
								<h4>Information / Helpful</h4>
								<p>구직 용도 외의 박람회, 교육, 사업 등의 자료를 음성 / 영상 기능을 통해 편리하게 이용한 사이트를
									만들겠습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<hr>
	<section class="ftco-section bg-light ftco-faqs">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 order-md-last">
					<div
						class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-center mb-4 mb-sm-0"
						style="background-image: url(resources/images/main/introSection.jpg); background-size: contain">
					</div>
					<div class="d-flex mt-3">
						<div class="img img-2 mr-md-2"
							style="background-image: url(resources/images/main/introSection_2.jpg);"></div>
						<div class="img img-2 ml-md-2"
							style="background-image: url(resources/images/main/introSection_3.jpg);"></div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="heading-section mb-5 mt-5 mt-lg-0">
						<h2 class="mb-3">
							About Be-My-Friend
							</p>
					</div>
					<div id="accordion" class="myaccordion w-100"
						aria-multiselectable="true">
						<div class="card">
							<div class="card-header p-0" id="headingOne">
								<h2 class="mb-0">
									<button href="#collapseOne"
										class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link"
										data-parent="#accordion" data-toggle="collapse"
										aria-expanded="false" aria-controls="collapseOne">
										<p class="mb-0">기획의도</p>
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse show" id="collapseOne" role="tabpanel"
								aria-labelledby="headingOne">
								<div class="card-body py-3 px-0">
									<ol>
										<li>1년 이상 실업자 상태 유지 중인 장애인 설문 조사 결과 : 구직 정보 접근의 어려움</li>
										<li>50% 이상 비율의 장애인분들 : 취업 알선 기관을 통해 취업</li>
										<li>시간제 근로자가 될 수 밖에 없는 환경</li>
										<p class="p-4 mr-3"
											style="font-weight: bold; border: 1px solid black; border-radius: 30px;">
											-> <span style="font-weight: bold; color: purple;">구직정보</span>를
											쉽게 알 수 있고, 근무환경에 따른 <span
												style="font-weight: bold; color: purple;">필터링</span>도 되며,
											장애인에 대한 <span style="font-weight: bold; color: purple;">차별과
												선입견</span>도 낮출 수 있는 그런 목적의 웹사이트를 만들어보면 어떨까?
										</p>

									</ol>
								</div>
							</div>
						</div>

						<div class="card">
							<div class="card-header p-0" id="headingTwo" role="tab">
								<h2 class="mb-0">
									<button href="#collapseTwo"
										class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link"
										data-parent="#accordion" data-toggle="collapse"
										aria-expanded="false" aria-controls="collapseTwo">
										<p class="mb-0">구현 기능</p>
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse" id="collapseTwo" role="tabpanel"
								aria-labelledby="headingTwo">
								<div class="card-body py-3 px-0">
									<ol>
										<li>유저 관리</li>
										<li>게시판, 자료실</li>
										<li>지도, 캘린더</li>
										<li>일자리 검색</li>
										<li>결제</li>
										<li>음성인식</li>
										<li>채팅</li>
										<li>Text를 통한 수화 검색</li>
										<li>Three.js 메인</li>
									</ol>
								</div>
							</div>
						</div>

						<div class="card">
							<div class="card-header p-0" id="headingThree" role="tab">
								<h2 class="mb-0">
									<button href="#collapseThree"
										class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link"
										data-parent="#accordion" data-toggle="collapse"
										aria-expanded="false" aria-controls="collapseThree">
										<p class="mb-0">사용 API</p>
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse" id="collapseThree" role="tabpanel"
								aria-labelledby="headingTwo">
								<div class="card-body py-3 px-0">
									<ol>
										<li>Speech-to-text : 구글 음성인식 AI</li>
										<li>클로바 : 네이버 음성인식 API</li>
										<li>Three.js : 3D 메인페이지</li>
										<li>아임포트 : 결제모듈 API</li>
									</ol>
								</div>
							</div>
						</div>

						<div class="card">
							<div class="card-header p-0" id="headingFour" role="tab">
								<h2 class="mb-0">
									<button href="#collapseFour"
										class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link"
										data-parent="#accordion" data-toggle="collapse"
										aria-expanded="false" aria-controls="collapseFour">
										<p class="mb-0">참고 사이트</p>
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse" id="collapseFour" role="tabpanel"
								aria-labelledby="headingTwo">
								<div class="card-body py-3 px-0">
									<ol>
										<li>잡코리아</li>
										<li>잡플래닛</li>
										<li>알바몬</li>
										<li>Three.js Doc Example</li>
									</ol>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<hr>

	<section class="ftco-section testimony-section"
		style="background-image: url('resources/images/main/devSection_2.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center pb-5 mb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h2>Developer</h2>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel ftco-owl">
						<div class="item">
							<div class="testimony-wrap py-4">
								<div class="text">

									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url(resources/images/profile/WhaleeProfile.jpg)"></div>
										<div class="pl-3">
											<p class="name">이 승민</p>
											<span class="position">잘 아픔</span>
										</div>
									</div>
									<p class="mb-4">
										<br />* Three.js Main Page<br />* indexPage<br />* Text -
										SignLang<br />* Payment<br />* PopUp
									</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap py-4">
								<div class="text">
									<p class="mb-4">
									</p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url(resources/images/profile/dodoMukProfile.png)"></div>
										<div class="pl-3">
											<p class="name">도도묵</p>
											<span class="position">잘 까먹음</span>
										</div>
									</div>
									<p class="mb-4">
								        <br />* SpeechRecognition Service<br />* Job recruitment Page<br />* ReviewPage
								        <br />* QNA<br />* Law&Media
								        </p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap py-4">
								<div class="text">
									<p class="mb-4"></p>
									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url(resources/images/profile/lucyProfile.png)"></div>
										<div class="pl-3">
											<p class="name">미영파크</p>
											<span class="position">건강함</span>
										</div>
									</div>
									<p class="mb-4">
										<br />
										* Member Management <br />
										* Resume Page <br />
										* User Apply
									
									</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap py-4">
								<div class="text">

									<div class="d-flex align-items-center">
										<div class="user-img"
											style="background-image: url(resources/images/profile/songProfile.jpg)"></div>
										<div class="pl-3">
											<p class="name">명재햄</p>
											<span class="position">Marketing Manager</span>
										</div>
									</div>
									<p class="mb-4">설명설명</p>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>


	<c:choose>
		<c:when test="${sessionScope.comMember != null }">
			<hr>
			<section class="ftco-section bg-light">
				<div class="container">
					<div class="row justify-content-center pb-5 mb-3">
						<div class="col-md-7 heading-section text-center ftco-animate">
							<h2>기업회원님들을 위한 멤버십 시스템</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 ftco-animate">
							<div class="block-7">
								<div class="img"
									style="background-image: url(resources/images/pricing-1.jpg);"></div>
								<div class="text-center p-4">
									<span class="excerpt d-block">Gold</span> <span class="price"><sup>$</sup>
										<span class="number">49</span> <sub>/mos</sub></span>

									<ul class="pricing-text mb-5">
										<li><span class="fa fa-check mr-2"></span>일반 기업회원 대비 공고
											상단 노출</li>
										<li><span class="fa fa-check mr-2"></span>배스킨라빈스 더블콘</li>
										<li><span class="fa fa-check mr-2"></span>기업 추천도 + 1</li>
										<li><span class="fa fa-check mr-2"></span>배가 덜 고픔</li>
									</ul>

									<a class="btn btn-primary d-block px-2 py-3"
										onclick="payment('gold');">Get Started
									</a>
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="block-7">
								<div class="img"
									style="background-image: url(resources/images/pricing-2.jpg);"></div>
								<div class="text-center p-4">
									<span class="excerpt d-block">Platinum</span> <span
										class="price"><sup>$</sup> <span class="number">79</span>
										<sub>/mos</sub></span>

									<ul class="pricing-text mb-5">
										<li><span class="fa fa-check mr-2"></span>골드 기업회원 대비 공고
											상단 노출</li>
										<li><span class="fa fa-check mr-2"></span>배스킨라빈스 파인트</li>
										<li><span class="fa fa-check mr-2"></span>기업 추천도 + 2</li>
										<li><span class="fa fa-check mr-2"></span>배가 약간 고픔</li>
									</ul>

									<a class="btn btn-primary d-block px-2 py-3"
										onclick="payment('platinum');">Get Started
									</a>
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="block-7">
								<div class="img"
									style="background-image: url(resources/images/pricing-3.jpg);"></div>
								<div class="text-center p-4">
									<span class="excerpt d-block">Diamond</span> <span
										class="price"><sup>$</sup> <span class="number">109</span>
										<sub>/mos</sub></span>

									<ul class="pricing-text mb-5">
										<li><span class="fa fa-check mr-2"></span>플래티넘 기업회원 대비 공고
											상단 노출</li>
										<li><span class="fa fa-check mr-2"></span>배스킨라빈스 패밀리</li>
										<li><span class="fa fa-check mr-2"></span>기업 추천도 + 3</li>
										<li><span class="fa fa-check mr-2"></span>배가 안 고픔</li>
									</ul>

									<a class="btn btn-primary d-block px-2 py-3"
										onclick="payment('dia')">Get Started
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</c:when>
	</c:choose>

	<!-- 혹시 몰라 주석처리 -->

	<!-- <section class="ftco-section bg-light ftco-no-pt ftco-intro">
		<div class="container">
			<div class="row">
				<div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
					<div class="d-block services active text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-blind"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Dog Walking</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right.</p>
							<a href="#"
								class="btn-custom d-flex align-items-center justify-content-center"><span
								class="fa fa-chevron-right"></span><i class="sr-only">Read
									more</i></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
					<div class="d-block services text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-dog-eating"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Pet Daycare</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right.</p>
							<a href="#"
								class="btn-custom d-flex align-items-center justify-content-center"><span
								class="fa fa-chevron-right"></span><i class="sr-only">Read
									more</i></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
					<div class="d-block services text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-grooming"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Pet Grooming</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right.</p>
							<a href="#"
								class="btn-custom d-flex align-items-center justify-content-center"><span
								class="fa fa-chevron-right"></span><i class="sr-only">Read
									more</i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<!-- <section class="ftco-counter" id="section-counter">
		<div class="container">
			<div class="row">
				<div
					class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
					<div class="block-18 text-center">
						<div class="text">
							<strong class="number" data-number="50">0</strong>
						</div>
						<div class="text">
							<span>Customer</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
					<div class="block-18 text-center">
						<div class="text">
							<strong class="number" data-number="8500">0</strong>
						</div>
						<div class="text">
							<span>Professionals</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
					<div class="block-18 text-center">
						<div class="text">
							<strong class="number" data-number="20">0</strong>
						</div>
						<div class="text">
							<span>Products</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
					<div class="block-18 text-center">
						<div class="text">
							<strong class="number" data-number="50">0</strong>
						</div>
						<div class="text">
							<span>Pets Hosted</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> 

	-->

	<!-- <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center pb-5 mb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h2>Pets Gallery</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 ftco-animate">
					<div class="work mb-4 img d-flex align-items-end"
						style="background-image: url(resources/images/gallery-1.jpg);">
						<a href="../../resources/images/gallery-1.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="fa fa-expand"></span>
						</a>
						<div class="desc w-100 px-4">
							<div class="text w-100 mb-3">
								<span>Cat</span>
								<h2>
									<a href="work-single.html">Persian Cat</a>
								</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="work mb-4 img d-flex align-items-end"
						style="background-image: url(resources/images/gallery-2.jpg);">
						<a href="../../resources/images/gallery-2.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="fa fa-expand"></span>
						</a>
						<div class="desc w-100 px-4">
							<div class="text w-100 mb-3">
								<span>Dog</span>
								<h2>
									<a href="work-single.html">Pomeranian</a>
								</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="work mb-4 img d-flex align-items-end"
						style="background-image: url(resources/images/gallery-3.jpg);">
						<a href="../../resources/images/gallery-3.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="fa fa-expand"></span>
						</a>
						<div class="desc w-100 px-4">
							<div class="text w-100 mb-3">
								<span>Cat</span>
								<h2>
									<a href="work-single.html">Sphynx Cat</a>
								</h2>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 ftco-animate">
					<div class="work mb-4 img d-flex align-items-end"
						style="background-image: url(resources/images/gallery-4.jpg);">
						<a href="../../resources/images/gallery-4.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="fa fa-expand"></span>
						</a>
						<div class="desc w-100 px-4">
							<div class="text w-100 mb-3">
								<span>Cat</span>
								<h2>
									<a href="work-single.html">British Shorthair</a>
								</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="work mb-4 img d-flex align-items-end"
						style="background-image: url(resources/images/gallery-5.jpg);">
						<a href="../../resources/images/gallery-5.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="fa fa-expand"></span>
						</a>
						<div class="desc w-100 px-4">
							<div class="text w-100 mb-3">
								<span>Dog</span>
								<h2>
									<a href="work-single.html">Beagle</a>
								</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="work mb-4 img d-flex align-items-end"
						style="background-image: url(resources/images/gallery-6.jpg);">
						<a href="../../resources/images/gallery-6.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="fa fa-expand"></span>
						</a>
						<div class="desc w-100 px-4">
							<div class="text w-100 mb-3">
								<span>Dog</span>
								<h2>
									<a href="work-single.html">Pug</a>
								</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center pb-5 mb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h2>Latest news from our blog</h2>
				</div>
			</div>
			<div class="row d-flex">
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.jsp" class="block-20 rounded"
							style="background-image: url('resources/images/image_1.jpg');"> </a>
						<div class="text p-4">
							<div class="meta mb-2">
								<div>
									<a href="#">April 07, 2020</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.jsp" class="block-20 rounded"
							style="background-image: url('../../resources/images/image_2.jpg');"> </a>
						<div class="text p-4">
							<div class="meta mb-2">
								<div>
									<a href="#">April 07, 2020</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.jsp" class="block-20 rounded"
							style="background-image: url('../../resources/images/image_3.jpg');"> </a>
						<div class="text p-4">
							<div class="meta mb-2">
								<div>
									<a href="#">April 07, 2020</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section
		class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb img"
		style="background-image: url(resources/images/bg_3.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row d-md-flex justify-content-end">
				<div class="col-md-12 col-lg-6 half p-3 py-5 pl-lg-5 ftco-animate">
					<h2 class="mb-4">Free Consultation</h2>
					<form action="#" class="appointment">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<div class="form-field">
										<div class="select-wrap">
											<div class="icon">
												<span class="fa fa-chevron-down"></span>
											</div>
											<select name="aa" id="aaa" class="form-control">
												<option value="">Select services</option>
												<option value="">Cat Sitting</option>
												<option value="">Dog Walk</option>
												<option value="">Pet Spa</option>
												<option value="">Pet Grooming</option>
												<option value="">Pet Daycare</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Your Name">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Vehicle number">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-wrap">
										<div class="icon">
											<span class="fa fa-calendar"></span>
										</div>
										<input type="text" class="form-control appointment_date"
											placeholder="Date">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-wrap">
										<div class="icon">
											<span class="fa fa-clock-o"></span>
										</div>
										<input type="text" class="form-control appointment_time"
											placeholder="Time">
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<textarea name="" id="" cols="30" rows="7" class="form-control"
										placeholder="Message"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="submit" value="Send message"
										class="btn btn-primary py-3 px-4">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section> -->

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

	<!-- whalee js -->
	<script src="../resources/js/whaleeTest.js"></script>
	<!-- 결제 모듈 js -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</body>
</html>