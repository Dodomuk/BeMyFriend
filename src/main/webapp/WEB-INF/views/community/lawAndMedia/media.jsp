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