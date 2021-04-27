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
  
  
   <section class="hero-wrap hero-wrap-2" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="${context}/main">Community <i class="ion-ios-arrow-forward"></i></a></span> <span>매체 <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread" id="pageTitle">미디어</h1>
          </div>
        </div>
      </div>
    </section>
	<!-- 커뮤니티 nav -->
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" href="${context}/community/review/review">기업 리뷰</a></li>
		<li class="nav-item"><a class="nav-link" href="${context}/community/law">법률</a></li>
		<li class="nav-item"><a class="nav-link active" href="${context}/community/media">매체</a></li>
		<li class="nav-item"><a class="nav-link" href="${context}/community/qna">QNA</a>
		</li>
	</ul>
	<!-- 커뮤니티 nav 끝 -->
  
	<section class="ftco-section bg-light">
      <div class="container">
        <div class="row d-flex">
        
                        <c:if test="${!empty mediaList}">
                <c:forEach items="${mediaList}" var="media">
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
             <div class="box_img_wrap" onclick="location.href='${context}/community/mediaView?mediaView=${media.mediaNo}';" style="background-image: url('/resources/media/${media.mediaImg}')" >
              </div>
              <div class="text p-4">
              	<div class="meta mb-2">
                  <div><fmt:formatDate value="${media.mediaDate}" pattern="yyyy.MM.dd" /></div>
                  <div>${media.mediaNo}</div>
                  <div><a href="${context}/community/mediaView?mediaView=${media.mediaNo}" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="${context}/community/mediaView?mediaView=${media.mediaNo}">${media.mediaTitle}</a></h3>
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
                <li><a href="${context}/community/media?mediaPage=${mediaPaging.prev}">&lt;</a></li>
               
                <c:forEach begin="${mediaPaging.blockStart}" end="${mediaPaging.blockEnd}"
				var="mediaPag">
              
                <c:choose>
                
                 <c:when test="${mediaPag eq mediaPaging.currentPage}">
                 <li class="active">
                   <a href="${context}/community/media?mediaPage=${mediaPag}">
                   <span>${mediaPaging.currentPage}</span>
                                  
                </a></li>
                </c:when>
                
                <c:otherwise>
                 <li><a href="${context}/community/media?mediaPage=${mediaPag}">
                   <span>${mediaPag}</span>
                </a></li>
                </c:otherwise>
                
                </c:choose>
                </c:forEach>
                
                <li><a href="${context}/community/media?mediaPage=${mediaPaging.next}">&gt;</a></li>
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