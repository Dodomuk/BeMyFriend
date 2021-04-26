<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

  <body>
    
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
						<h2 class="heading-section">- 이력서 확인-</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters">
								<div class="col-md-7-p">
									<div class="contact-wrap w-100 p-md-5 p-4">
										<div  id="contactForm" name="contactForm" class="contactForm">
											<div class="row">
											
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" id="check-group">이력서 제목</label>
														<input type="text" class="form-control" name="resTitle" id="resTitle" required="required" placeholder="이력서 제목을 입력하세요." value="${userResume.resTitle}" readonly>
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
														<input type="text" class="form-control" name="userId" id="userId"  value ="${userMember.userId}" readonly>
													</div>
												</div>
												<div class="col-md-3" style="margin:auto;">
													<div class="form-group">
														<label class="label" id="check-group">이름</label>
														<input type="text" class="form-control" name="userName" id="userName"  value ="${userMember.userName}" readonly>
													</div>
												</div>
												<div class="col-md-3" style="margin:auto;">
													<div class="form-group">
														<label class="label" id="check-group" >전화번호</label>
														<input type="tel" class="form-control" name="userTell" id="userTell" value ="${userMember.userTell}" readonly>
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label class="label"id="check-group" >이메일</label>
														<input type="email" class="form-control" name="userMail" id="userMail"  value ="${userMember.userMail}" readonly>
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label class="label"id="check-group" >주소</label>
														<input type="text" class="form-control" name="userAdd" id="userAdd" value ="${userMember.userAdd}" readonly>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">생년월일</label>
														<input type="date" class="form-control" name="userBirth" id="userBirth" value ="${userMember.userBirth}" readonly>
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
														<input type="text" class="form-control" name="school" id="school" value="${userResume.school}"readonly >
													
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">전공명<br>(대학선택시)</label>
														<input type="text" class="form-control" name="schMajor" id="schMajor" value="${userResume.schMajor}"readonly >
													</div>
												</div>
												
												<div class="col-md-4">
													<div class="form-group">
														<label class="label" id="check-group">졸업상태</label>
														<input type="text" class="form-control" name="schStatus" id="schStatus" value="${userResume.schStatus}"readonly >
														
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="label"id="check-group" >입학년월</label>
														<input type="text" class="form-control" name="schEnroll" id="schEnroll" value="${userResume.schEnroll}" readonly>
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="label"id="check-group" >졸업년월</label>
														<input type="text" class="form-control" name="schGraduate" id="schGraduate" value="${userResume.schGraduate}" readonly>
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
															<input type="text" class="form-control" name="carCom" id="carCom" value="${userResume.carCom}"readonly>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label" id="check-group">부서</label>
															<input type="text" class="form-control" name="carDept" id="carDept" value="${userResume.carDept}"readonly>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label" id="check-group">직급</label>
															<input type="text" class="form-control" name="carPosition" id="carPosition" value="${userResume.carPosition}"readonly>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label"id="check-group" >경력연봉</label>
															<input type="text" class="form-control" name="carSalary" id="carSalary" placeholder="예시: 1000만원" value="${userResume.carSalary}" readonly>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label"id="check-group" >입사년월</label>
															<input type="text" class="form-control" name="carEnter" id="carEnter" value="${userResume.carEnter}" readonly>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label"id="check-group" >퇴사년월</label>
															<input type="text" class="form-control" name="carQuit" id="carQuit" value="${userResume.carQuit}" readonly>
														</div>
													</div>
													
													
												</div>
												
											<div class="empty_space"></div>
											
											
											<div class="row">
											<div class="resume-category">
												<h3>희망사항</h3><br><br>
											</div>
											
												<div class="col-md-6">
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
													<div class="form-group ">
														<label class="label">희망근무지</label><br>
														<div id="hope_add">
															<input type="text" class="form-control" name="hopeWorkPlace" id="hopeWorkPlace" value="${userResume.hopeWorkPlace}" readonly>
															
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label"id="check-group" >희망연봉</label>
														<input type="text" class="form-control" name="hopeSalary" id="hopeSalary" placeholder="예시: 1000만원" value="${userResume.hopeSalary}" readonly>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">희망분야</label>
														<input type="text" class="form-control" name="hopePosition" id="hopePosition"  value="${userResume.hopePosition}" readonly>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group ">
													<label class="label" for="userService">선택한 희망제공서비스</label><br>
														<div class="service_part">
															<div id="choose_service">
															<c:if test="${service.supLift == 1}"><span>#장애인_리프트</span></c:if>
															<c:if test="${service.supElv == 1}"><span>#장애인_앨리베이터</span></c:if>
															<c:if test="${service.supBath == 1}"><span>#장애인_화장실</span></c:if>
															<c:if test="${service.supVoice == 1}"><span>#장애인_음성유도기</span></c:if>
															<c:if test="${service.supBlock == 1}"><span>#점자블럭</span></c:if>
															<c:if test="${service.supSign == 1}"><span>#점자_표지판</span></c:if>
															<c:if test="${service.supPark == 1}"><span>#장애인_주차장</span></c:if>
															<c:if test="${service.supCharge == 1}"><span>#전동휠체어_충전기</span></c:if>
															<c:if test="${service.supWelfare == 1}"><span>#사회복지사</span></c:if>
															</div>
														</div>
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
												<c:if test="${!empty userMember}"></c:if>
													<div class="form-group-log" >
														<button type="submit" class="btn btn-delete" onclick="deleteResume()">삭제</button>
														<button type="submit" class="btn btn-primary btn_update" onclick="location.href='/member/user/resume/updateform'">수정</button>
														<button type="submit" class="btn btn-primary btn_list" onclick="location.href='/member/user/resume/list'">목록</button>
													</div>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
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


 
 <%-- select 자동로드 --%>
 $(document).ready(function(){
	 $("#school").val("${userResume.school}");
	 $("#schStatus").val("${userResume.schStatus}");
	 $("#hopeStatus").val("${userResume.hopeStatus}");
	 $("#hopePosition").val("${userResume.hopePosition}");
 })
 
function deleteResume() {
	 let result = confirm("이력서를 정말 삭제하시겠습니까 ?");
	 
	 if(result){
		 location.href="/member/user/resume/delete";
	 }
		 
 }
 
 

 </script>
    
  </body>
</html>