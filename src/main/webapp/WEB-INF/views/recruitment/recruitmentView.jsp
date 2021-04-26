<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<style type="text/css">
.imageBox {
	position: relative;
	top: 50%;
	left: 50%;
	margin-top: -100px;
	margin-left: -100px;
	width: 200px;
	height: 200px;
}
</style>
</head>
<body>

	<!-- 공고 메인 -->
	<div class="row no-gutters" id="jobInfoBox"
		style="align-items: center;">
		<div class="col-md-8 col-md-offset-4">
			<div class="contact-wrap w-100 p-md-5 p-4">

				<h3>${recru.comName}</h3>
				<h1 class="mb-4">${recru.jobTitle}
					<label class="label col-sm-4" style="font-size: 15px; color: red;">(마감일
						${recru.jobDeadline})</label>
				</h1>
				<form method="POST" id="contactForm" name="contactForm"
					class="contactForm">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="label" style="font-size: 20px;">지원 자격</label>
								<div>
									<label class="label col-sm-4">경력</label> <label
										class="col-sm-6">${recru.jobCareer}</label>
								</div>
								<div>
									<label class="label col-sm-4">학력</label> <label
										class="col-sm-6">${recru.jobEdu}</label>
								</div>

								<div>
									<label class="label col-sm-4">필수조건</label> <label
										class="col-sm-6">${recru.jobNeed}</label>
			6					</div>
								<div>
									<label class="label col-sm-4">우대조건</label> <label
										class="col-sm-6">${recru.jobPreper}</label>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="label" style="font-size: 20px;">근무 조건</label>
								<div>
									<label class="label col-sm-4">고용 형태</label> <label
										class="col-sm-6">${recru.jobType}</label>
								</div>
								<div>
									<label class="label col-sm-4">담당 업무</label> <label
										class="col-sm-6">${recru.jobDuty}</label>
								</div>
								<div>
									<label class="label col-sm-4">급여</label> <label
										class="col-sm-6">${recru.jobSalary}</label>
								</div>
								<div>
									<label class="label col-sm-4">지역</label> <label
										class="col-sm-6">${recru.jobLocation}</label>
								</div>
								<div>
									<label class="label col-sm-4">복지</label> <label
										class="col-sm-6">${recru.jobWelfare}</label>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">

								<label class="label col-sm-2" style="font-size: 17px;">채용인원</label>
								<label class="col-sm-2">${recru.jobPerNum}</label> <label
									class="label col-sm-2" style="font-size: 17px;">과정</label> <label
									class="col-sm-5">${recru.jobStep}</label>

							</div>
						</div>


						<fmt:formatDate var="today" value="${now}" pattern="yyyy-MM-dd" />

						<div class="col-md-6 col-md-offset-4">
							<div class="form-group">

								<c:if test="${today <= recru.jobDeadline}">
									<c:choose>
										<c:when test="${!empty userMember}">
											<button type="button" class="btn btn-primary" onclick="resumePopup()">지원하기</button>
										</c:when>
										<c:when test="${empty userMember && empty comMember}">
											<button type="button" class="btn btn-primary" onclick="nonUserPopup()">지원하기</button>
										</c:when>
									</c:choose>
									
								</c:if>

								<c:if test="${today > recru.jobDeadline}">
									<c:if
										test="${comMember.comIdx ne fn:substring(recru.typeIdx,1,7)}">
										<input value="지원 마감" class="btn btn-secondary" disabled>
									</c:if>
								</c:if>

								<c:if
									test="${comMember.comIdx eq fn:substring(recru.typeIdx,1,7)}">
									<span class="form-group"> <input type="button"
										value="수정하기"
										onClick="location.href='/recruitment/recruitmentFix?recruNo=${recru.jobNo}'"
										class="btn btn-primary">
									</span>
									<span class="form-group"> <input type="button" value="삭제하기" onClick="chkBox()" class="btn btn-danger">
									</span>

								</c:if>

								<div class="submitting"></div>
							</div>

						</div>
						<!-- 첨부 사진 -->
						<div class="col-md-6">
							<div class="form-group">

								<a data-fancybox="gallery" href="#"
									style="width: 70%; height: 70%;"><img
									src="/files/${savepath1}${files1}"></a>
								<div class="submitting"></div>
								<c:if test="${files2 ne null}">
									<a data-fancybox="gallery" href="#"
										style="width: 70%; height: 70%;"><img
										src="/files/${savepath2}${files2}" /></a>
								</c:if>
								<div class="submitting"></div>
								<c:if test="${files3 ne null}">
									<a data-fancybox="gallery" href="#"
										style="width: 70%; height: 70%;"><img
										src="/files/${savepath3}${files3}" /></a>
								</c:if>
								<div class="submitting"></div>
								<c:if test="${files2 ne null}">
									<a data-fancybox="gallery" href="#"
										style="width: 70%; height: 70%;"><img
										src="/files/${savepath4}${files4}" /></a>
								</c:if>
								<div class="submitting"></div>
							</div>
						</div>
						<!-- 첨부사진끝 -->
					</div>
				</form>

			</div>

		</div>
		<div>
			<section class="ftco-section bg-light ftco-faqs">
				<div class="container">
					<div class="row" style="justify-content: 50%;">
						<div class="col-lg-3">
							<img src="/resources/recruitment/${view.jobImage}">
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<!-- 공고 끝 -->
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	
	<script type="text/javascript">

      function chkBox(){
    	  if(confirm("정말 삭제하시겠습니까?") == true){
    		  alert('삭제되셨어유');
    		  location.href='/recruitment/deleteForm?view=${recru.jobNo}';
    	  }else{
    		  return false;
    	  }
      }
    </script>
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
	<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
	<script type="text/javascript">
	
	function resumePopup(){
		
		window.open("/member/user/resume/popup", "resume", "width=400, height=300, left=100, top=50");
	}
	
	
	function nonUserPopup(){
		alert("로그인이 필요한 서비스 입니다.");
		location.href = "/member/user/login"
	}
	
	</script>

	


</body>
</html>