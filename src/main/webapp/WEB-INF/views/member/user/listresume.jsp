<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

  <body>

    
     <section class="hero-wrap hero-wrap-2" style="background-image: url('../../../../resources/images/bg_11.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>File <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">자료실</h1>
          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section bg-light">
		<div class="container resume_list">
			<h3>이력서 내역</h3><br>
			<div class="row">
				<c:if test="${resumeList.size() == 0}">
					<h5>이력서가 존재하지 않습니다.</h5>
				</c:if>
				<c:forEach var="resumeList" items="${resumeList}" begin="0" end="11">
					<form class="col-md-6 col-lg-3 ftco-animate detail_list" style="cursor: pointer;" onclick="location.href='/member/user/resume/detail?resIdx=${resumeList.resIdx}'">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch" >
								<div class="img align-self-stretch" style="background-image: url(../../../../resources/images/resume7.png);"></div>
							</div>
							<div class="text pt-3 px-3 pb-4 text-center" onclick="location.href='/member/user/resume/detail?resIdx=${resumeList.resIdx}'">
								<h3 id="resTitle" >${resumeList.resTitle}</h3>
								<span class="position mb-2" id="user_id">${resumeList.userId}</span>
								
							</div>
						</div>
					</form>
				</c:forEach>
			</div>	
			<button type="button" class="btn button create_btn"  onclick="create()">이력서 작성</button>	
		</div>
	</section>
	
	 <section class="ftco-section bg-other">
		<div class="container resume_list">
			<h3>지원한 공고</h3><br>
			<div class="row">
				<c:if test="${applyList.size() == 0}">
					<h5>지원내역이 없습니다.</h5>
				</c:if>
				<c:forEach var="applyList" items="${applyList}" begin="0" end="11">
					<form class="col-md-6 col-lg-3 ftco-animate detail_list" style="cursor: pointer;" onclick="location.href='/member/user/resume/detail?resIdx=${resumeList.resIdx}'">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch" >
								<div class="img align-self-stretch" style="background-image: url(../../../../resources/images/resume7.png);"></div>
							</div>
							<div class="text pt-3 px-3 pb-4 text-center" onclick="location.href='/member/user/resume/detail?resIdx=${resumeList.resIdx}'">
								<h3 id="resTitle" >${applyList.jobTitle}</h3>
								<span class="position mb-2">${applyList.jobNo}</span>
								
							</div>
						</div>
					</form>
				</c:forEach>
			</div>	
			<button type="button" class="btn button view_btn"  onclick="location.href='/recruitment/recruitment'">채용공고 보러가기</button>	
		</div>
	</section>
    
    
  		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
  		
  <script src="../../../../resources/js/user.js"></script> 
  <script type="text/javascript">
  

  
  function create(){
	  
	  if(${resumeList.size()} > 11){
		  alert("자기소개서는 12개까지만 저장할 수 있습니다.");
		  location.href = "";
		  
	  }else if(${resumeList.size()} <= 10){
		  location.href="/member/user/resume/create";
		  
	  }
	  
  }  
  </script>
    
  </body>
</html>