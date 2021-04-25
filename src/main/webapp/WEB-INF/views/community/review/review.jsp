<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
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

</body>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
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
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="../../resources/js/google-map.js"></script>

</body>
</html>