
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<head>
  <style type="text/css">
  .box_img_wrap{    

     width : 300px; height: 200px;

border: 1px solid #d2d2d2;

}
.newQna { animation-name: blink;
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
   
 <section class="hero-wrap hero-wrap-2" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="${context}/main">Community <i class="ion-ios-arrow-forward"></i></a></span> <span>QNA <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread" id="pageTitle">QNA</h1>
          </div>
        </div>
      </div>
    </section>
    
	<!-- 커뮤니티 nav -->
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" href="${context}/community/review/review">기업 리뷰</a></li>
		<li class="nav-item"><a class="nav-link" href="${context}/community/law">법률</a></li>
		<li class="nav-item"><a class="nav-link" href="${context}/community/media">매체</a></li>
		<li class="nav-item"><a class="nav-link active" href="${context}/community/qna">QNA</a>
		</li>
	</ul>
	<!-- 커뮤니티 nav 끝 -->



             <!-- 오늘 날짜와 게시글 날짜 비교 -->
            <c:set var="date" value="<%=new java.util.Date()%>"/>
            <c:set var="today"><fmt:formatDate value="${date}" pattern="yyyy.MM.dd" /></c:set> 
	<section class="ftco-section bg-light ftco-faqs">
		<div class="container" style="background-color:#DCFFDC;border-radius: 80px / 40px;">
					<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="heading-section text-center mb-5 mt-5 mt-lg-0">
						<h2 class="mb-3">자주 묻는 질문 템플릿 탑5</h2>
						<p>우리는 어디로 가야하오</p>
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
										<p class="mb-0">게시판은 어떻게 만들었나요?</p>
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse" id="collapseOne" role="tabpanel"
								aria-labelledby="headingOne">
								<div class="card-body py-3 px-0">
									
										<p>하다보니까 만들어진거 같아요..
										   저도 정확한 이유는 잘 모른답니다.
										</p>
									
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
										<p class="mb-0">지금 심경이?</p>
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse" id="collapseTwo" role="tabpanel"
								aria-labelledby="headingTwo">
								<div class="card-body py-3 px-0">
									<p> 아 너무 힘듭니다..</p>
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
										<p class="mb-0">내일 뭐할거에요?</p>
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse" id="collapseThree" role="tabpanel"
								aria-labelledby="headingTwo">
								<div class="card-body py-3 px-0">
									<p>밥 먹고 잘랍니다..</p>
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
										<p class="mb-0">내일 모레는요?</p>
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse" id="collapseFour" role="tabpanel"
								aria-labelledby="headingTwo">
								<div class="card-body py-3 px-0">
									<p>게임하다 잘렵니다..</p>
								</div>
							</div>
						</div>
												<div class="card">
							<div class="card-header p-0" id="headingOne">
								<h2 class="mb-0">
									<button href="#collapseFive"
										class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link"
										data-parent="#accordion" data-toggle="collapse"
										aria-expanded="false" aria-controls="collapseOne">
										<p class="mb-0">안녕히 주무세요</p>
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse" id="collapseFive" role="tabpanel"
								aria-labelledby="headingOne">
								<div class="card-body py-3 px-0">
									
										<p>잘자요.
										
										</p>
									
								</div>
							</div>
						</div>
						
					</div>
				</div>
				
				<div class="col-lg-6">
					<div class="heading-section text-center mb-5 mt-5 mt-lg-0">
						<h2 class="mb-3">월간 가장 많이 본 질문 TOP5</h2>
						<p>조회수가 가장 많은 순서대로 기록</p>
					</div>
					<div id="accordion" class="myaccordion w-100"
						aria-multiselectable="true">
						
						<c:forEach items="${qnaTopList}" var="qnatl">
						<div class="card">
							<div class="card-header p-0" id="headingOne">
								<h2 class="mb-0">
									<button href="#top${qnatl.qnaNo}"
										class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link"
										data-parent="#accordion" data-toggle="collapse"
										aria-expanded="false" aria-controls="collapseOne">
										<p class="mb-0">${qnatl.qnaTitle}</p>  
										<i class="fa" aria-hidden="true"></i>
									</button>
								</h2>
							</div>
							<div class="collapse" id="top${qnatl.qnaNo}" role="tabpanel"
								aria-labelledby="headingOne">
								<div class="card-body py-3 px-0">
									<p>  ${qnatl.qnaContent}</p>
								</div>
							</div>
						</div>
                        </c:forEach>
                        
					</div>
				</div>
			</div>
		</div>
	</section>

  <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row mb-2 pb-10">
<table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">번호</th>
      <th scope="col" colspan="3">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">날짜</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <c:forEach items="${qnaList}" var="qna">
  <tbody>
    <tr>
      <th scope="row">${qna.qnaNo}</th>	
      
      <c:if test="${qna.secret eq 0}">
      <td colspan="3" onClick="location.href='/community/qnaView?view=${qna.qnaNo}'">${qna.qnaTitle}</td>
      </c:if>
      <c:if test="${qna.secret eq 1}">
      <td colspan="3">비밀로 작성된 글입니다!</td>
      </c:if>
      
      <c:set var="qnadate"><fmt:formatDate value="${qnatl.qnaDate}" pattern="yyyy.MM.dd" /></c:set>                              	 
	  <c:if test="${today eq qnadate}">
	  <span class="newQna">new</span>	
	  </c:if>
	  
      <td>${qna.userId}</td>
      <td><fmt:formatDate value="${qna.qnaDate}" pattern="yyyy.MM.dd" /></td>
      <td>${qna.viewCnt}</td>
    </tr>
    </c:forEach>
  </tbody> 
</table>
<hr>
<br>
<br>
<br>
</div>
</div>
<!-- 로그인한 사람에게만 보이게 -->
<c:if test="${sessionScope.memberId != null}">
			         <div style="padding-left:80%;">
                            <div class="badge bg-primary text-wrap" style="width: 8rem;">
  <a href="${context}/community/qna/qnaForm" class="btn btn_default">글쓰기</a>
   </div>
</div>
</c:if>
</section>

 	<%@ include file="/WEB-INF/views/include/footer.jsp" %>

  </body>
</html>
