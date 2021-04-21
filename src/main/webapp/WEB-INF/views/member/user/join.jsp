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
    
    
    
    
    
    
    
    
    
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('../../../../resources/images/bg_15.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Join <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">Join</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">개인회원 가입하기</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters">
								<div class="col-md-7-p">
									<div class="contact-wrap w-100 p-md-5 p-4">
										<!-- modelAttribute 를 지정, user안에 들어있는 errors 를 사용할 수 있음 -->

					
										<form:form modelAttribute="User" action="${context}/member/user/mailauth" method="POST"  id="contactForm" name="contactForm" class="contactForm">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<div>

															<label class="label" id="check-group">아이디</label><span id="idCheck" class="id_check"></span>
															<!-- path : rejectValue의 field 매개변수 -->
															<form:errors path="userId" cssClass="id_check"></form:errors>
														</div>
														<div class="idcheck-group">
															<input type="text" class="form-control" name="userId" id="userId" required="required">

															<button type="button" onclick="idCheck()" class="btn btn-primary-p">확인</button>
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label">이름</label>
														<input type="text" class="form-control" name="userName" id="userName" required="required" >

													</div>
												</div>
											
												<div class="col-md-6"> 
													<div class="form-group">
														<label class="label">비밀번호</label>
														<input type="password" class="form-control" name="userPw" id="userPw" placeholder="비밀번호를 입력하세요." required="required">

													</div>
												</div>
												
												<div class="col-md-6"> 
													<div class="form-group">


														<label class="label" id="check-group">비밀번호 확인</label>
														<span id="pw_confirm" class="pw_check"></span>
														<form:errors path="userPw" cssClass="pw_check"></form:errors>


														<input type="password" class="form-control" id="checkpw" placeholder="비밀번호를 다시 입력하세요." > <!-- 확인비번 전송X -->
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" >전화번호</label>

														<input type="tel" class="form-control" name="userTell" id="userTell" placeholder="숫자만 입력하세요." required="required">


													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" >이메일</label>

														<input type="email" class="form-control" name="userMail" id="userMail" required="required">


													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" >주소</label>
														<div class="add_set">
															<input type="text" class="form-control" name="userAdd"  id="userAdd" placeholder="주소">
															<button type="button" class="add_search_btn" onclick= "addressPop()">주소찾기</button>
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" >생년월일</label>
														<input type="date" class="form-control" name="userBirth" id="userBirth" required="required">
													</div>
												</div>
												
												
												<div class="col-md-12">
													<div class="form-group-log-p">
														<button type="submit" class="btn btn-primary">회원가입</button>
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
						<p>사회로의 첫걸음, [ Be My Friends ] 와 함께하세요.</p>

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
  <script src="../../../../resources/js/user.js"></script> 
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    function addressPop() {
	     
	    	new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("userAdd").value = extraAddr;
	                
	                } else {
	                    document.getElementById("userAdd").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('userAdd').value = data.zonecode;
	                document.getElementById("userAdd").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("userAdd").focus();
	            }
	        }).open();
	    }
	</script>
	  
    
  </body>
</html>