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
						<h2 class="heading-section">- 이력서 작성 -</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters">
								<div class="col-md-7-p">
									<div class="contact-wrap w-100 p-md-5 p-4">
										
										
										
										
										<form:form action="${context}/member/user/resume/upload" method="POST" id="contactForm" name="contactForm" class="contactForm">
											
											<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" id="check-group">이력서 제목</label>
													<input type="text" class="form-control" name="resTitle" id="resTitle" required="required" placeholder="이력서 제목을 입력하세요.">
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
														<input type="text" class="form-control" name="userName" id="userName"  value ="${userMember.userName}" >
													</div>
												</div>
												<div class="col-md-3" style="margin:auto;">
													<div class="form-group">
														<label class="label" id="check-group" >전화번호</label>
														<input type="tel" class="form-control" name="userTell" id="userTell" value ="${userMember.userTell}" >
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label class="label"id="check-group" >이메일</label>
														<input type="email" class="form-control" name="userMail" id="userMail"  value ="${userMember.userMail}" >
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label"id="check-group" >주소</label>
														<div class="add_set">
															<input type="text" class="form-control" name="userAdd" id="userAdd" value ="${userMember.userAdd}" >
															<button type="button" class="add_search_btn" onclick= "addressPop()">주소찾기</button>
														</div>
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label class="label" id="check-group">생년월일</label>
														<input type="date" class="form-control" name="userBirth" id="userBirth" value ="${userMember.userBirth}" >
													</div>
												</div>
											</div>
											<br>
											<div class="empty_space"></div>
											
											
											
											<div class="resume-category">
													<h3>학력</h3>
												
													<br>
												</div>
											<div class="row" id="aboutSchool">
											
												<div class="col-md-6" style="padding-top: 20px;" >
													<div class="form-group" >
														<label class="label" id="check-group">학교구분</label>
														<select class="form-control" id="school" name="school">
															<option value="선택안함">선택안함</option>
															<option value="초등학교">초등학교</option>
															<option value="중학교">중학교</option>
															<option value="고등학교">고등학교</option>
															<option value="대학교 2/3년">대학교 2/3년</option>
															<option value="대학교 4년">대학교 4년</option>
															<option value="기타">기타</option>
															
														</select>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">전공명<br>(대학선택시)</label>
														<input type="text" class="form-control" name="schMajor" id="schMajor">
													</div>
												</div>
												
												<div class="col-md-4">
													<div class="form-group">
														<label class="label" id="check-group">졸업상태</label>
														<select class="form-control" id="schStatus" name="schStatus">
															<option value="선택안함">선택안함</option>
															<option value="재학">재학</option>
															<option value="졸업예정">졸업예정</option>
															<option value="졸업">졸업</option>
															<option value="수료">수료</option>
															<option value="휴학">휴학</option>
															<option value="중퇴">중퇴</option>
															
														</select>
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="label"id="check-group" >입학년월</label>
														<input type="Date" class="form-control" name="schEnroll" id="schEnroll">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="label"id="check-group" >졸업년월</label>
														<input type="Date" class="form-control" name="schGraduate" id="schGraduate">
													</div>
												</div>
											</div>
											<div class="empty_space"></div>
												
												
												<div class="resume-category experience">
													<h3>경력</h3>											
													<br>
												</div>
												<div class="row" id="experience" >
												<div class="col-md-6">
													<div class="form-group">
															<label class="label" id="check-group">회사명</label>
															<input type="text" class="form-control" name="carCom" id="carCom">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label" id="check-group">부서</label>
															<input type="text" class="form-control" name="carDept" id="carDept">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label" id="check-group">직급</label>
															<input type="text" class="form-control" name="carPosition" id="carPosition">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label"id="check-group" >경력연봉</label>
															<input type="text" class="form-control" name="carSalary" id="carSalary" placeholder="예시: 1000만원">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label"id="check-group" >입사년월</label>
															<input type="Date" class="form-control" name="carEnter" id="carEnter">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="label"id="check-group" >퇴사년월</label>
															<input type="Date" class="form-control" name="carQuit" id="carQuit">
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
													<div class="form-group">
														<label class="label"id="check-group" >희망근무지</label>
														<div class="add_set">
															<input type="text" class="form-control" name="hopeWorkPlace"  id="hopeWorkPlace" placeholder="주소">
															<button type="button" class="add_search_btn" onclick= "addPopForWork()">주소찾기</button>
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label"id="check-group" >희망연봉</label>
														<input type="text" class="form-control" name="hopeSalary" id="hopeSalary" placeholder="예시: 1000만원">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">희망분야</label>
														<select class="form-control" id="hopePosition" name="hopePosition">
															<option value="">상관없음</option>
															<option value="경영 샤무">경영/사무</option>
															<option value="광고 홍보">광고/홍보</option>
															<option value="IT 인터넷">IT/인터넷</option>
															<option value="디자인">디자인</option>
															<option value="무역 유통">무역/유통</option>
															<option value="영업 고객상담">영업/고객상담</option>
															<option value="서비스">서비스</option>
															<option value="연구개발">연구개발</option>
															<option value="생산 제조">생산/제조</option>
															<option value="교육">교육</option>
															<option value="건설">건설</option>
															<option value="의료">의료</option>
															<option value="미디어">미디어</option>
														</select>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group ">
													<label class="label" for="userService">희망제공서비스</label><br>
														<div class="service_part">
															<div>
																<input type="radio" class ="userService" name="supLift" value="1" id="supLift"> 장애인 리프트<br>
																<input type="radio" class ="userService" name="supElv" value="1"id="supElv"> 장애인 앨리베이터<br>
																<input type="radio" class ="userService" name="supBath" value="1" id="supBath"> 장애인 화장실<br>
															</div>
															<div>
																<input type="radio" class ="userService" name="supVoice" value="1" id="supVoice"> 장애인 음성유도기<br>
																<input type="radio" class ="userService" name="supBlock" value="1" id="supBlock"> 점자 블럭<br>
																<input type="radio" class ="userService" name="supSign" value="1"id="supSign"> 점자 표지판<br>
															</div>
															<div>
																<input type="radio" class ="userService" name="supPark" value="1" id="supPark"> 장애인 주차장<br>
																<input type="radio" class ="userService" name="supCharge" value="1" id="supCharge"> 전동휠체어 충전기<br>
																<input type="radio" class ="userService" name="supWelfare" value="1" id="supWelfare"> 사회복지사<br>						
															</div>
															<a id="remove_btn">[ 초기화 ]</a>
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
														<input type="text" class="content-title" placeholder="항목 제목을 입력하세요." name="cvlTitleFir" id="cvlTitleFir" >
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<textarea class="content-write" name="cvlContentFir" id="cvlContentFir" ></textarea>
													</div>
														
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="content-title" placeholder="항목 제목을 입력하세요." name="cvlTitleSec" id="cvlTitleSec" >
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<textarea class="content-write" name="cvlContentSec" id="cvlContentSec" ></textarea>											
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="content-title" placeholder="항목 제목을 입력하세요."  name="cvlTitleThr" id="cvlTitleThr">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<textarea class="content-write" name="cvlContentThr" id="cvlContentThr" ></textarea>											
													</div>
												</div>
												
												
												
												
												<div class="col-md-12">
													<div class="form-group-log-p">
														<button type="submit" class="btn btn-primary">등록하기</button>
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
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 <script type="text/javascript">
 
 
 
	 <%-- 초기화 버튼 클릭시 모든 radio unchecked --%>
	 $("#remove_btn").click(function() {
	 	$('input.userService').removeAttr('checked');
	 })
	
	
	 <%-- 세센의 값대로 radio checked --%>
	 if(${service.supLift == 1}){
	 	$('#supLift').prop('checked', true);
	 }
	
	 if(${service.supElv == 1}){
	 	$('#supElv').prop('checked', true);
	 }
	 if(${service.supBath == 1}){
	 	$('#supBath').prop('checked', true);
	 }
	 if(${service.supVoice == 1}){
	 	$('#supVoice').prop('checked', true);
	 }
	 if(${service.supBlock == 1}){
	 	$('#supBlock').prop('checked', true);
	 }
	 if(${service.supSign == 1}){
	 	$('#supSign').prop('checked', true);
	 }
	 if(${service.supPark == 1}){
	 	$('#supPark').prop('checked', true);
	 }
	 if(${service.supCharge == 1}){
	 	$('#supCharge').prop('checked', true);
	 }
	 if(${service.supWelfare == 1}){
	 	$('#supWelfare').prop('checked', true);
	 }
	

   function addressPop() {
    
   	new daum.Postcode({
           oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
               // 각 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var addr = ''; // 주소 변수
               var extraAddr = ''; // 참고항목 변수

               //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                   addr = data.roadAddress;
               } else { // 사용자가 지번 주소를 선택했을 경우(J)
                   addr = data.jibunAddress;
               }

               // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
               if(data.userSelectedType === 'R'){
                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                       extraAddr += data.bname;
                   }
                   // 건물명이 있고, 공동주택일 경우 추가한다.
                   if(data.buildingName !== '' && data.apartment === 'Y'){
                       extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                   }
                   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                   if(extraAddr !== ''){
                       extraAddr = ' (' + extraAddr + ')';
                   }
                   // 조합된 참고항목을 해당 필드에 넣는다.
                   document.getElementById("userAdd").value = extraAddr;
               
               } else {
                   document.getElementById("userAdd").value = '';
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById('userAdd').value = data.zonecode;
               document.getElementById("userAdd").value = addr;
               // 커서를 상세주소 필드로 이동한다.
               document.getElementById("userAdd").focus();
           }
       }).open();
   }
   
   
   
   
   function addPopForWork(){
	   new daum.Postcode({
           oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 각 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var addr = ''; // 주소 변수
               var extraAddr = ''; // 참고항목 변수

               //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                   addr = data.roadAddress;
               } else { // 사용자가 지번 주소를 선택했을 경우(J)
                   addr = data.jibunAddress;
               }

               // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
               if(data.userSelectedType === 'R'){
                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                       extraAddr += data.bname;
                   }
                   // 건물명이 있고, 공동주택일 경우 추가한다.
                   if(data.buildingName !== '' && data.apartment === 'Y'){
                       extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                   }
                   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                   if(extraAddr !== ''){
                       extraAddr = ' (' + extraAddr + ')';
                   }
                   // 조합된 참고항목을 해당 필드에 넣는다.
                   document.getElementById("hopeWorkPlace").value = extraAddr;
               
               } else {
                   document.getElementById("hopeWorkPlace").value = '';
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById('hopeWorkPlace').value = data.zonecode;
               document.getElementById("hopeWorkPlace").value = addr;
               // 커서를 상세주소 필드로 이동한다.
               document.getElementById("hopeWorkPlace").focus();
           }
       }).open();
	   
	   
	   
   }
   

   
	</script>
    
  </body>
</html>