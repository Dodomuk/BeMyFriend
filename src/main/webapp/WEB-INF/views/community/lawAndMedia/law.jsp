 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<head>
  <style type="text/css">
  .box_img_wrap{    

     width : 300px; height: 200px;

border: 1px solid #d2d2d2;

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
            <h1 class="mb-0 bread" id="pageTitle">법률</h1>
          </div>
        </div>
      </div>
    </section>
	<!-- 커뮤니티 nav -->
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" href="${context}/community/review/review">기업 리뷰</a>
		</li>
		<li class="nav-item"><a class="nav-link active" href="${context}/community/law">법률</a></li>
		<li class="nav-item"><a class="nav-link" href="${context}/community/media">매체</a></li>
		<li class="nav-item"><a class="nav-link" href="${context}/community/qna">QNA</a>
		</li>
	</ul>
	<!-- 커뮤니티 nav 끝 -->

	<section class="ftco-section bg-light">
      <div class="container">
        <div class="row d-flex">
        
                        <c:if test="${!empty lawList}">
                <c:forEach items="${lawList}" var="law">
          <div class="col-md-4 d-flex ftco-animate">
		 <div  class="blog-entry align-self-stretch">
             <div class="box_img_wrap"  onclick="location.href='${context}/community/lawView?lawView=${law.lawNo}';" style="background-image: url('/resources/law/${law.lawImg}')" >
              </div>
              <div class="text p-4">
              	<div class="meta mb-2">
                  <div><fmt:formatDate value="${law.lawDate}" pattern="yyyy.MM.dd" /></div>
					<div>${law.lawNo}</div>
                  <div><a href="${context}/community/lawView?lawView=${law.lawNo}" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="${context}/community/lawView?lawView=${law.lawNo}">${law.lawTitle}</a></h3>

              </div>
            </div>
          </div>
          </c:forEach>
          </c:if>
        </div>
        
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="${context}/community/law?lawPage=${lawPaging.prev}">&lt;</a></li>
               
                <c:forEach begin="${lawPaging.blockStart}" end="${lawPaging.blockEnd}"
				var="lawPag">
              
                <c:choose>
                
                 <c:when test="${lawPag eq lawPaging.currentPage}">
                 <li class="active">
                   <a href="${context}/community/law?lawPage=${lawPag}">
                   <span>${lawPaging.currentPage}</span>
                                  
                </a></li>
                </c:when>
                
                <c:otherwise>
                 <li><a href="${context}/community/law?lawPage=${lawPag}">
                   <span>${lawPag}</span>
                </a></li>
                </c:otherwise>
                
                </c:choose>
                </c:forEach>
                
                <li><a href="${context}/community/law?lawPage=${lawPaging.next}">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
	
	<!-- // section pagination -->


	<%@ include file="/WEB-INF/views/include/footer.jsp" %>

    
  </body>
</html>