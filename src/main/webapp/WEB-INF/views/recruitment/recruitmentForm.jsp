<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<style type="text/css">
.paging {
	width: 30vw;
	position: relative;
	left: 50vw;
	transform: translateX(-50%);
	display: flex;
	justify-content: space-around;
	font-size: x-large;
}
</style>
<body>

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span>
					</p>
					<h1 class="mb-0 bread">채용정보</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">채용 공고 작성</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">
						<div class="row no-gutters">
							<div class="col-md-7-p">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<!-- modelAttribute 를 지정, user안에 들어있는 errors 를 사용할 수 있음 -->


									<form:form modelAttribute="recruitment"
										action="${context}/recruitment/uploadForm" method="POST"
										id="recruForm" name="recruForm" class="recruForm"
										enctype="multipart/form-data">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<div>

														<label class="label" id="check-group">기업 이름</label>
													</div>
													<div class="comName">${comMember.comName}</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">공고 제목</label> <input type="text"
														class="form-control" name="jobTitle" id="jobTitle"
														required="required">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label class="label">마감일</label> <input type="date"
														class="form-control" name="jobDeadline" id="jodDeadline"
														required="required">
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group">
													<label class="label" id="step_title">전형 절차</label> <input
														type="text" class="form-control" name="jobStep"
														id="jobStep" required="required">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">채용형태</label> <input type="text"
														class="form-control" name="jobType" id="jobType"
														required="required">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">채용인원</label> <br> <input
														type="radio" id="check_num" name="jobPerNum" value="0명">
													<label for="male">0명</label><br> <input type="radio"
														id="check_num" name="jobPerNum" value="00명"> <label
														for="female">00명</label><br> <input type="radio"
														id="check_num" name="jobPerNum" value="000명"> <label
														for="other">000명</label><br>
													<br>

												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">담당업무</label> <input type="text"
														class="form-control" name="jobDuty" id="jobDuty"
														required="required">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">주소</label>
													<div>${comMember.comAddress}</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">채용경력</label> <input type="text"
														class="form-control" name="jobCareer" id="jobCareer"
														required="required">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">채용학력</label> <input type="text"
														class="form-control" name="jobEdu" id="jobEdu"
														required="required">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">필수요건</label> <input type="text"
														class="form-control" name="jobNeed" id="jobNeed"
														required="required">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">우대요건</label> <input type="text"
														class="form-control" name="jobPreper" id="jobPreper"
														required="required">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">복리후생</label> <input type="text"
														class="form-control" name="jobWelfare" id="jobWelfare"
														required="required">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label">채용급여</label> <input type="text"
														class="form-control" name="jobSalary" id="jobSalary"
														required="required">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" id="check-group" style="width: 85px;">첨부할 이미지</label> 
													<label class="label" id="check-group" style="width: 300px; color: #336633">(최대 4장까지 표시됩니다.)</label> 
													<input type="file" class="form-control" name="files" id="contract_file" placeholder="첨부할 이미지 선택" multiple />
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group-log-p">

													<button type="submit" class="btn btn-primary"
														onclick="alert('등록되었습니다!')">등록</button>
													<div style="margin: 5px;"></div>
													<button class="btn btn-primary">새로입력</button>
													<div class="col-md-1"></div>
													<button type="button" class="btn btn-secondary"
														id="cancelBtn">취소</button>

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

     <%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<script type="text/javascript">
$(function(){
    $("#cancelBtn").click(function(){
    	   history.back();
    });	
});
</script>

</body>
</html>