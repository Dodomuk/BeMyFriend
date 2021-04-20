<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <title>비 마이 프랜드</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

 	<link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="stylesheet" href="../../../../resources/css/animate.css">
    <link rel="stylesheet" href="../../../../resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../../../../resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../../../../resources/css/magnific-popup.css">
    <link rel="stylesheet" href="../../../../resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../../../../resources/css/jquery.timepicker.css">
    <link rel="stylesheet" href="../../../../resources/css/flaticon.css">
    <link rel="stylesheet" href="../../../../resources/css/style.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  </head>
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
				    					<a href="/member/user/login" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook">로그인</span></a>
				    					<a href="/member/company/login" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram">기업로그인</span></a>
				    					<a href="/member/join" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram">회원가입</span></a>
								</c:if>
								<c:if test="${userMember != null}">
										<a href="/member/user/logout" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook">로그아웃</span></a>
								</c:if>
								<c:if test="${comMember != null}">
				    					<a href="/member/company/logout" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram">로그아웃</span></a>
								</c:if>
								<c:if test ="${comMember != null}">
									<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram">광고관리</span></a>
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
						        	<li class="nav-item"><a href="/index" class="nav-link">Home</a></li>
						        	<li class="nav-item "><a href="/recruitment/recruitment" class="nav-link">채용정보</a></li>
						        	<li class="nav-item "><a href="/community/review/review" class="nav-link">커뮤니티</a></li>
							        <li class="nav-item"><a href="/sign/signIndex" class="nav-link">수화를배워보자아</a></li>
							        <li class="nav-item"><a href="/calendar/index" class="nav-link">calendar/map</a></li>
							        <c:choose>
										<c:when test ="${userMember != null}">
											<li class="nav-item"><a href="/member/user/resume/list" class="nav-link">자료실</a></li>
										</c:when>
										<c:when test ="${comMember != null}">
											<li class="nav-item"><a href="member/company/hire/list" class="nav-link">자료실</a></li>
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
    
    
    
    
    
    
    
    
    
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('../../../../resources/images/bg_11.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Resume <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">Resume</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
			<div class="resume-container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">- 이력서 수정 -</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters">
								<div class="col-md-7-p">
									<div class="contact-wrap w-100 p-md-5 p-4">
										
										
										
										
										<form:form action="${context}/member/user/resume/updateimpl" id="contactForm" name="contactForm" class="contactForm">
										
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" id="check-group">이력서 제목</label>
														<input type="text" class="form-control" name="resTitle" id="resTitle" required="required" placeholder="이력서 제목을 입력하세요." value="${userResume.resTitle}" >
													</div>
												</div>
												<div class="resume-category">
													<h3>인적사항</h3><br>
												</div>
												<c:if test="${!empty file}">
													<div class="col-md-3">
														<div class="form-group" >
															<img src = "/file/${file.savePath}${file.renameFileName}" class="user-photo">
														</div>
													</div>	
												</c:if>
												<c:if test="${empty file}">
													<div class="col-md-3">
														<div class="form-group">
															<label class="label" id="check-group">이미지</label>
															<input type="file" class="form-control" name="file" id="file">
														</div>
													</div>
													<div class="col-md-3">
														<div class="form-group">
															<span class="label" id="check-group" class="user-photo">이미지가 존재하지 않습니다.</span>
														</div>
													</div>
												</c:if>
												<div class="col-md-3" style="margin:auto;">
													<div class="form-group">
														<label class="label" id="check-group">아이디</label>
														<input type="text" class="form-control" name="userId" id="userId"  value ="${userMember.userId}" readonly >
													</div>
												</div>
												<div class="col-md-3" style="margin:auto;">
													<div class="form-group">
														<label class="label" id="check-group">이름</label>
														<input type="text" class="form-control" name="userName" id="userName"  value ="${userMember.userName}" >
													</div>
												</div>
												<div class="col-md-3" style="margin:auto;">
													<div class="form-group">
														<label class="label" id="check-group" >전화번호</label>
														<input type="tel" class="form-control" name="userTell" id="userTell" value ="${userMember.userTell}" >
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label class="label"id="check-group" >이메일</label>
														<input type="email" class="form-control" name="userMail" id="userMail"  value ="${userMember.userMail}" >
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label class="label"id="check-group" >주소</label>
														<input type="text" class="form-control" name="userAdd" id="userAdd" value ="${userMember.userAdd}" >
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">생년월일</label>
														<input type="date" class="form-control" name="userBirth" id="userBirth" value ="${userMember.userBirth}" >
													</div>
												</div>
											</div>
											<div class="empty_space"></div>
											
											
											
											<div class="row ">
												<div class="resume-category">
													<h3>학력</h3><br>
												</div>
												<div class="col-md-6" style="padding-top: 20px;" >
													<div class="form-group" >
														<label class="label" id="check-group">학교구분</label>
														<select class="form-control" id="school" name="school">
															<option value="선택안함">선택안함</option>
															<option value="초등학교">초등학교</option>
															<option value="중학교">중학교</option>
															<option value="고등학교">고등학교</option>
															<option value="대학교 2/3년">대학교 2/3년</option>
															<option value="대학교 4년">대학교 4년</option>
															<option value="기타">기타</option>
														</select>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">전공명<br>(대학선택시)</label>
														<input type="text" class="form-control" name="schMajor" id="schMajor" value="${userResume.schMajor}" >
													</div>
												</div>
												
												<div class="col-md-4">
													<div class="form-group">
														<label class="label" id="check-group">졸업상태</label>
														<select class="form-control" id="schStatus" name="schStatus">
															<option value="선택안함">선택안함</option>
															<option value="재학">재학</option>
															<option value="졸업예정">졸업예정</option>
															<option value="졸업">졸업</option>
															<option value="수료">수료</option>
															<option value="휴학">휴학</option>
															<option value="중퇴">중퇴</option>
															
														</select>
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="label"id="check-group" >입학년월</label>
														<input type="Date" class="form-control" name="schEnroll" id="schEnroll" value="${userResume.schEnroll}" >
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="label"id="check-group" >졸업년월</label>
														<input type="Date" class="form-control" name="schGraduate" id="schGraduate" value="${userResume.schGraduate}" >
													</div>
												</div>
											</div>
											<div class="empty_space"></div>
												
												
												<div class="row carrer">
												<div class="resume-category">
													<h3>경력</h3><br>
												</div>
												
												<div class="col-md-6">
														<div class="form-group">
															<label class="label" id="check-group">회사명</label>
															<input type="text" class="form-control" name="carCom" id="carCom" value="${userResume.carCom}">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label" id="check-group">부서</label>
															<input type="text" class="form-control" name="carDept" id="carDept" value="${userResume.carDept}">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label" id="check-group">직급</label>
															<input type="text" class="form-control" name="carPosition" id="carPosition" value="${userResume.carPosition}">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label"id="check-group" >경력연봉</label>
															<input type="text" class="form-control" name="carSalary" id="carSalary" placeholder="예시: 1000만원" value="${userResume.carSalary}">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label"id="check-group" >입사년월</label>
															<input type="Date" class="form-control" name="carEnter" id="carEnter" value="${userResume.carEnter}">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label"id="check-group" >퇴사년월</label>
															<input type="Date" class="form-control" name="carQuit" id="carQuit" value="${userResume.carQuit}">
														</div>
													</div>
													
													
												</div>
												
											<div class="empty_space"></div>
											
											
											<div class="row">
											<div class="resume-category">
												<h3>희망사항</h3><br><br>
											</div>
											
												<div class="col-md-3">
													<div class="form-group">
														<label class="label"id="check-group" >고용형태</label>
														<select class="form-control" id="hopeStatus" name="hopeStatus">
															<option value="상관없음">상관없음</option>
															<option value="아르바이트">아르바이트</option>
															<option value="비정규직">비정규직</option>
															<option value="정규직">정규직</option>
														</select>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label"id="check-group" >근무지</label>
														<select onchange="addressInfo(this)" class="form-control" name="hopeWorkPlace" id="hopeWorkPlace" >
															<option value="상관없음">상관없음</option>
															<option value="서울특별시">서울특별시</option>
															<option value="강원도">강원도</option>
															<option value="경기도">경기도</option>
															<option value="인천광역시">인천광역시</option>
															<option value="충청남도">충청남도</option>
															<option value="충청북도">충청북도</option>
															<option value="대전광역시">대전광역시</option>
															<option value="세종특별시">세종특별시</option>
															<option value="전라남도">전라남도</option>
															<option value="전라북도">전라북도</option>
															<option value="광주광역시">광주광역시</option>
															<option value="경상남도">경상남도</option>
															<option value="경상북도">경상북도</option>
															<option value="부산광역시">부산광역시</option>
															<option value="대구광역시">대구광역시</option>
															<option value="울산광역시">울산광역시</option>
															<option value="제주특별자치도">제주특별자치도</option>
														</select>
														<select class="form-control" name="twoadd" id="twoadd" style="display: none">
														</select>
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group ">
														<label class="label">선택한 희망근무지</label><br>
														<div id="hope_add">
															<span>#${userResume.hopeWorkPlace}</span>
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label"id="check-group" >희망연봉</label>
														<input type="text" class="form-control" name="hopeSalary" id="hopeSalary" placeholder="예시: 1000만원" value="${userResume.hopeSalary}" >
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">희망분야</label>
														<select class="form-control" id="hopePosition" name="hopePosition" >
															<option value="">상관없음</option>
															<option value="경영/샤무">경영/사무</option>
															<option value="광고/홍보">광고/홍보</option>
															<option value="IT/인터넷">IT/인터넷</option>
															<option value="디자인">디자인</option>
															<option value="무역/유통">무역/유통</option>
															<option value="영업/고객상담">영업/고객상담</option>
															<option value="서비스">서비스</option>
															<option value="연구개발">연구개발</option>
															<option value="생산/제조">생산/제조</option>
															<option value="교육">교육</option>
															<option value="건설">건설</option>
															<option value="의료">의료</option>
															<option value="미디어">미디어</option>
														</select>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group ">
													<label class="label" for="userService">희망제공서비스</label><br>
														<div class="service_part">
															<div>
																<input type="radio" class ="userService" name="supLift" value="1" id="supLift"> 장애인 리프트<br>
																<input type="radio" class ="userService" name="supElv" value="1"id="supElv"> 장애인 앨리베이터<br>
																<input type="radio" class ="userService" name="supBath" value="1" id="supBath"> 장애인 화장실<br>
															</div>
															<div>
																<input type="radio" class ="userService" name="supVoice" value="1" id="supVoice"> 장애인 음성유도기<br>
																<input type="radio" class ="userService" name="supBlock" value="1" id="supBlock"> 점자 블럭<br>
																<input type="radio" class ="userService" name="supSign" value="1"id="supSign"> 점자 표지판<br>
															</div>
															<div>
																<input type="radio" class ="userService" name="supPark" value="1" id="supPark"> 장애인 주차장<br>
																<input type="radio" class ="userService" name="supCharge" value="1" id="supCharge"> 전동휠체어 충전기<br>
																<input type="radio" class ="userService" name="supWelfare" value="1" id="supWelfare"> 사회복지사<br>						
															</div>
															<a id="remove_btn">[ 초기화 ]</a>
														</div>
													</div>
												</div>
												
											<div class="empty_space"></div>
										
											<div class="row">
												<div class="resume-category">
													<h3>자기소개서</h3><br>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="content-title" placeholder="항목 제목을 입력하세요." name="cvlTitleFir" id="cvlTitleFir" value="${userResume.cvlTitleFir}">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<textarea class="content-write" name="cvlContentFir" id="cvlContentFir">${userResume.cvlContentFir}</textarea>
													</div>
														
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="content-title" placeholder="항목 제목을 입력하세요." name="cvlTitleSec" id="cvlTitleSec" value="${userResume.cvlTitleSec}">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<textarea class="content-write" name="cvlContentSec" id="cvlContentSec">${userResume.cvlContentSec}</textarea>											
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="content-title" placeholder="항목 제목을 입력하세요."  name="cvlTitleThr" id="cvlTitleThr" value="${userResume.cvlTitleThr}">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<textarea class="content-write" name="cvlContentThr" id="cvlContentThr" >${userResume.cvlContentThr}</textarea>											
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group-log-p">
														<button type="submit" class="btn btn-primary">완료</button>
													</div>
												</div>
												
											</div>
										</form:form>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		

    <footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
						<h2 class="footer-heading">Be my Friends</h2>
						<p>사회로의 첫걸음, [ Be My Freinds ] 와 함께하세요.</p>
						<ul class="ftco-footer-social p-0">
              <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><span class="fa fa-twitter"></span></a></li>
              <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><span class="fa fa-facebook"></span></a></li>
              <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><span class="fa fa-instagram"></span></a></li>
            </ul>
					</div>
					<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
						<h2 class="footer-heading">최신 뉴스</h2>
						<div class="block-21 mb-4 d-flex">
              <a class="img mr-4 rounded" style="background-image: url(../../../../resources/images/bg_10.png);"></a>
              <div class="text">
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                <div class="meta">
                  <div><a href="#"><span class="icon-calendar"></span> April 7, 2020</a></div>
                  <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                  <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                </div>
              </div>
            </div>
            <div class="block-21 mb-4 d-flex">
              <a class="img mr-4 rounded" style="background-image: url(../../../../resources/images/bg_9.png);"></a>
              <div class="text">
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                <div class="meta">
                  <div><a href="#"><span class="icon-calendar"></span> April 7, 2020</a></div>
                  <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                  <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                </div>
              </div>
            </div>
					</div>
					<div class="col-md-6 col-lg-3 pl-lg-5 mb-4 mb-md-0">
						<h2 class="footer-heading"> 이동하기</h2>
						<ul class="list-unstyled">
              <li><a href="/index" class="py-2 d-block">Home</a></li>
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
                <li><span class="icon fa fa-map"></span><span class="text">경기도 성남시 분당구</span></li>
                <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+82 10-234-5678</span></a></li>
                <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">contactbmf@bmf.co.kr</span></a></li>
              </ul>
            </div>
					</div>
				</div>
				<div class="row mt-5">
          <div class="col-md-12 text-center">

            <p class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="fa fa-heart" aria-hidden="true"></i> <a href="https://colorlib.com" target="_blank">Be My Friends</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
			</div>
		</footer>

    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>



	

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
  <script src="../../../../resources/js/resume.js"></script>
 <script type="text/javascript">
 function addressInfo(e) {
	  var 서울특별시 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
	  var 경기도= ["1","2"];
	  var 강원도= ["1","2"];
	  var 인천광역시= ["1","2"];
	  var 충청남도= ["1","2"];
	  var 충청북도= ["1","2"];
	  var 대전광역시= ["1","2"];
	  var 세종특별시= ["1","2"];
	  var 전라남도= ["1","2"];
	  var 전라북도= ["1","2"];
	  var 광주광역시= ["1","2"];
	  var 경상남도= ["1","2"];
	  var 경상북도= ["1","2"];
	  var 부산광역시= ["1","2"];
	  var 대구광역시= ["1","2"];
	  var 울산광역시= ["1","2"];
	  var 제주특별자치도= ["1","2"];
	  

	  let target = document.getElementById("twoadd");
	  document.getElementById("twoadd").style.display="inline";
	  
	  
	  if(e.value == "서울특별시") var d = 서울특별시;
	  else if(e.value == "경기도") var d = 경기도;
	  else if(e.value == "인천광역시") var d = 인천광역시;
	  else if(e.value == "강원도") var d = 강원도;
	  else if(e.value == "충청남도") var d = 충청남도;
	  else if(e.value == "충청북도") var d = 충청북도;
	  else if(e.value == "대전광역시") var d = 대전광역시;
	  else if(e.value == "세종특별시") var d = 세종특별시;
	  else if(e.value == "전라남도") var d = 전라남도;
	  else if(e.value == "전라북도") var d = 전라북도;
	  else if(e.value == "광주광역시") var d = 광주광역시;
	  else if(e.value == "경상남도") var d = 경상남도;
	  else if(e.value == "경상북도") var d = 경상북도;
	  else if(e.value == "부산광역시") var d = 부산광역시;
	  else if(e.value == "대구광역시") var d = 대구광역시;
	  else if(e.value == "울산광역시") var d = 울산광역시;
	  else if(e.value == "제주특별자치도") var d = 제주특별자치도;
	  
	  target.options.length = 0;
	  
	  for(x in d){
		  var opt = document.createElement("option");
		  opt.value= d[x];
		  opt.innerHTML = d[x];
		  target.appendChild(opt);
	  }
 }

 
 <%-- select 자동로드 --%>
 $(document).ready(function(){
	 $("#school").val("${userResume.school}");
	 $("#schStatus").val("${userResume.schStatus}");
	 $("#hopeStatus").val("${userResume.hopeStatus}");
	 $("#hopePosition").val("${userResume.hopePosition}");
 })
 	<%-- select 자동로드 --%>
 $(document).ready(function(){
	 $("#school").val("${userResume.school}");
	 $("#schStatus").val("${userResume.schStatus}");
	 $("#hopeStatus").val("${userResume.hopeStatus}");
	 $("#hopePosition").val("${userResume.hopePosition}");
 })
 
 
	<%-- 초기화 버튼 클릭시 모든 radio unchecked --%>
	$("#remove_btn").click(function() {
		$('input.userService').removeAttr('checked');
	})
	
	
	<%-- 세센의 값대로 radio checked --%>
	if(${service.supLift == 1}){
		$('#supLift').prop('checked', true);
	}
	
	if(${service.supElv == 1}){
		$('#supElv').prop('checked', true);
	}
	if(${service.supBath == 1}){
		$('#supBath').prop('checked', true);
	}
	if(${service.supVoice == 1}){
		$('#supVoice').prop('checked', true);
	}
	if(${service.supBlock == 1}){
		$('#supBlock').prop('checked', true);
	}
	if(${service.supSign == 1}){
		$('#supSign').prop('checked', true);
	}
	if(${service.supPark == 1}){
		$('#supPark').prop('checked', true);
	}
	if(${service.supCharge == 1}){
		$('#supCharge').prop('checked', true);
	}
	if(${service.supWelfare == 1}){
		$('#supWelfare').prop('checked', true);
	}
	
 
 

 </script>
    
  </body>
</html>