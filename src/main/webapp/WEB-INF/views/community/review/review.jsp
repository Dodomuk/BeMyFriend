<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>

<!DOCTYPE html>
<html lang="ko">
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

<link rel="stylesheet" href="../../resources/css/animate.css">

<link rel="stylesheet" href="../../resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="../../resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="../../resources/css/magnific-popup.css">


<link rel="stylesheet"
	href="../../resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../../resources/css/jquery.timepicker.css">

<link rel="stylesheet" href="../../resources/css/flaticon.css">
<link rel="stylesheet" href="../../resources/css/style.css">
<style type="text/css">
	.content{
		width:80vw;
		position:relative;
		left:10vw;
		display: flex;
		flex-direction:column;
		justify-content: center;
	}

	.paging{
		width:30vw;
		position:relative;
		left:25vw;
		display: flex;
		justify-content:space-around;
		font-size: x-large;
	}
	.newReview { animation-name: blink;
	 animation-duration: 1.5s;
	  animation-timing-function: ease;
	   animation-iteration-count: infinite;
	      } 
	       @keyframes blink { 
	       from {color: white;} 
	       30% {color: greenyellow;}
	        to {color: limegreen; font-weight: bold;}
	        }
	        
     #pageTitle{     -webkit-animation-name: movingPara;
                     -webkit-animation-duration: 3s;
                      animation-name: movingPara;
                      animation-duration: 3s;
               }

      @keyframes movingPara {
          from { margin-left: 70%; }
          to { margin-left: 0%; }
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
   
 <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Blog <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread" id="pageTitle">리뷰 게시판</h1>
          </div>
        </div>
      </div>
    </section>

	<!-- 커뮤니티 nav -->
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="${context}/community/review/review">기업 리뷰</a>
		</li>
		<li class="nav-item" id="viewLaw"><a class="nav-link" href="#">법률</a></li>
		<li class="nav-item" id="viewMedia"><a class="nav-link" href="#">매체</a></li>
		<li class="nav-item" id="viewQna"><a class="nav-link" href="#">QNA</a>
		</li>
	</ul>
	<!-- 커뮤니티 nav 끝 -->


    <br>
    
    <!-- TOP10 -->
	<section class="ftco-section testimony-section  bg-light"
		>
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center pb-5 mb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h2>이주의 HOT 리뷰</h2>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel ftco-owl">
						<c:forEach items="${reviewTopList}" var="reviewtl">
						<div class="item">
							<div class="testimony-wrap py-4">
								<div
									class="icon d-flex align-items-center justify-content-center">
									<span class="fa fa-quote-left"></span>
								</div>
								<div class="text">
									<p class="mb-4">${reviewtl.reviewContent}</p>
									<div class="d-flex align-items-center">
									
										<div class="pl-3">
											<p class="name">${reviewtl.reviewTitle}</p>
											<span class="position">${reviewtl.userId}</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
									<nav style="text-align: center; font-size:30px;">
                                   <span class="previous" id="arrow"><span aria-hidden="true">&larr;&nbsp;&nbsp;</span></span>
                                   <span class="next" id="arrow"><span aria-hidden="true">&rarr;</span></span>
                                    </nav>
				</div>
			</div>
		</div>
	</section>
    <!-- TOP10 끝 -->

  <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row mb-5 pb-10">
    		
             <!-- 오늘 날짜와 게시글 날짜 비교 -->
            <c:set var="date" value="<%=new java.util.Date()%>"/>
            <c:set var="today"><fmt:formatDate value="${date}" pattern="yyyy.MM.dd" /></c:set> 
            <!-- 테이블 값이 null 일 경우  -->
            <c:if test="${empty reviewList}">
	 			    <tr>
	 			    <td></td>
					<td>
						<p>데이터가 존재하지 않습니다.</p>
					<td>
					<td></td>
					<td></td>
					</tr>
				</c:if>
			
			<!-- 테이블 값이 null이 아닐 경우 -->	
            <c:if test="${!empty reviewList}">
			<c:forEach items="${reviewList}" var="review">
			   <c:set var="reviewdate"><fmt:formatDate value="${review.reviewDate}" pattern="yyyy.MM.dd" /></c:set> 
			    <div class="col-md-3 pb-5 d-flex align-self-stretch px-3 ftco-animate">
            <div class="d-block services text-center">
              <div class="media-body p-3">
                <h3 class="heading">${review.reviewTitle}</h3>
                               	 <c:if test="${today eq reviewdate}">
									<span class="newReview">new</span>
								</c:if>
                <p>${review.userName}</p>
                <p>조회수 : ${review.viewCnt}</p> 
                <span class="position">
                             ${reviewdate}
                </span>
                <p></p>
                <a href="${context}/community/review/reviewView?view=${review.reviewNo}" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
                <span></span>
              </div>
            </div>      
          </div> 
            </c:forEach>
            </c:if> 
            
        </div>
        <div  style="padding-left:85%;">
                            <div class="badge bg-primary text-wrap" style="width: 6rem;">
  <a href="${context}/community/review/reviewForm" class="btn btn_default">글쓰기</a>
   </div>
</div>
    	</div>
    </section>

					
				
		<!-- section pagination -->
		    <section class="ftco-section bg-light">
      <div class="container">
		 <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
			<li><a href="${context}/community/review/review" class="nav first">《</a></li>
			<li><a href="${context}/community/review/review?page=${paging.prev}">&lt;</a></li>

			<c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}"
				var="page">
				<c:if test="${page eq paging.currentPage}">
				<li class="active">
				</c:if>
				<c:if test="${page ne paging.currentPage}">
				<li>
				</c:if>
				<a href="${context}/community/review/review?page=${page}"><span>
				<c:choose>
				   <c:when test = "${page%10 eq 1}">B</c:when>
				   <c:when test = "${page%10 eq 2}">E</c:when>
				   <c:when test = "${page%10 eq 3}">&nbsp;M</c:when>
				   <c:when test = "${page%10 eq 4}">Y</c:when>
				   <c:when test = "${page%10 eq 5}">&nbsp;F</c:when>
				   <c:when test = "${page%10 eq 6}">R</c:when>
				   <c:when test = "${page%10 eq 7}">I</c:when>
				   <c:when test = "${page%10 eq 8}">E</c:when>
				   <c:when test = "${page%10 eq 9}">N</c:when>
				   <c:when test = "${page%10 eq 0}">D</c:when>
				</c:choose>
				</span></a></li>
			</c:forEach>

			<li><a href="${context}/community/review/review?page=${paging.next}">&gt;</a></li>
			<li><a href="${context}/community/review/review?page=${paging.lastPage}">》</a></li>
			</ul>
	            </div>
          </div>
        </div>
      </div>
    </section>
	
	<!-- // section pagination -->

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



</body>
<c:choose>
<c:when test="${(userMember.userId == null) && (comMember.comId == null)}">
   <script>
    $('#viewLaw').click(function(){
    	
    		alert("로그인 후 사용 지원 가능합니다");
 		   	   location.href =  "${context}/member/user/login";
 		
    });
    $('#viewMedia').click(function(){

		alert("로그인 후 사용 지원 가능합니다");
		   	   location.href =  "${context}/member/user/login";
		
});
    $('#viewQna').click(function(){

		alert("로그인 후 사용 지원 가능합니다");
		   	   location.href =  "${context}/member/user/login";
		
});
  
  </script>
  </c:when>
   <c:otherwise>
      <script>
    $('#viewLaw').click(function(){
    	
 		   	   location.href =  "${context}/community/law";
 		
    });
    $('#viewMedia').click(function(){

		   	   location.href =  "${context}/community/media";
		
});
    $('#viewQna').click(function(){
    	
		   	   location.href =  "${context}/community/qna";
		
});
  
  </script>
   </c:otherwise>
    </c:choose>

<script src="../../resources/js/newFile.js"></script>
<script src="../../resources/js/jquery.min.js"></script>
<script src="../../resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="../../resources/js/popper.min.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="../../resources/js/jquery.easing.1.3.js"></script>
<script src="../../resources/js/jquery.waypoints.min.js"></script>
<script src="../../resources/js/jquery.stellar.min.js"></script>
<script src="../../resources/js/jquery.animateNumber.min.js"></script>
<script src="../../resources/js/bootstrap-datepicker.js"></script>
<script src="../../resources/js/jquery.timepicker.min.js"></script>
<script src="../../resources/js/owl.carousel.min.js"></script>
<script src="../../resources/js/jquery.magnific-popup.min.js"></script>
<script src="../../resources/js/scrollax.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="../../resources/js/google-map.js"></script>
<script src="../../resources/js/main.js"></script>


</body>
</html>