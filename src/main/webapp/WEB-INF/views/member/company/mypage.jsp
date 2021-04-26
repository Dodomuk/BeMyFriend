<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
      <body>
    <section class="hero-wrap hero-wrap-2" style="background-image: url('../../../../resources/images/bg_15.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Mypage <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">Mypage</h1>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">기업회원정보</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters">
								<div class="col-md-7-p">
									<div class="contact-wrap w-100 p-md-5 p-4">
					
										<form:form modelAttribute="Company" action="${context}/member/company/updateinfo" method="POST" id="updateform" name="updateform" class="updateform">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">기업 아이디</label><span id="idCheck"></span>
														<input type="text" value ="${comMember.comId}" class="form-control" name="comId" id="comId" readonly>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">기업명</label>
														<input type="text" class="form-control" name="comName" id="comName"  value ="${comMember.comName}" readonly>
													</div>
												</div>
												
												
												<div class="col-md-6"> 
													<div class="form-group">
														<label class="label" id="check-group">비밀번호</label><span id="pw_check"></span>
														<input type="password" class="form-control" name="comPw" id="comPw" placeholder="비밀번호/변경할 비밀번호를 입력하세요.">
													</div>
												</div>
												
												<div class="col-md-6"> 
													<div class="form-group">
														<label class="label" id="check-group">비밀번호 확인</label><span id="pw_confirm"></span>
														<input type="password" class="form-control" id="checkpw" placeholder="비밀번호를 다시 입력하세요." > <!-- 확인비번 전송X -->
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group" >기업 전화번호</label>
														<input type="tel" class="form-control" name="comTell" id="comTell" value ="${comMember.comTell}" >
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label"id="check-group" >기업 이메일</label>
														<input type="email" class="form-control" name="comMail" id="comMail"  value ="${comMember.comMail}">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group"><label class="label"id="check-group" >기업주소</label>
														<div class="add_set">
															<input type="text" class="form-control" name="comAddress"  id="comAddress" value ="${comMember.comAddress}">
															<button type="button" class="add_search_btn" onclick= "addressPop()">주소찾기</button>
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">기업형태</label><br>
														<input type="radio" class ="status" name="comType" value="스타트업" id="스타트업"> 스타트업<br>
														<input type="radio" class ="status" name="comType" value="중소기업"id="중소기업"> 중소기업<br>
														<input type="radio" class ="status" name="comType" value="중견기업" id="중견기업"> 중견기업<br>
														<input type="radio" class ="status" name="comType" value="대기업" id="대기업"> 대기업	
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">인사담당자</label>
														<input type="text" class="form-control" name="comManager" id="comManager" value ="${comMember.comManager}">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group ">
													<label class="label" for="userService">제공 서비스</label><br>
														<div class="service_part">
															<div>
																<input type="radio" class ="comSupport" name="supLift" value="1" id="supLift"> 장애인 리프트<br>
																<input type="radio" class ="comSupport" name="supElv" value="1" id="supElv"> 장애인 앨리베이터<br>
																<input type="radio" class ="comSupport" name="supBath" value="1" id="supBath"> 장애인 화장실<br>
															</div>
															<div>
																<input type="radio" class ="comSupport" name="supVoice" value="1" id="supVoice"> 장애인 음성유도기<br>
																<input type="radio" class ="comSupport" name="supBlock" value="1" id="supBlock"> 점자 블럭<br>
																<input type="radio" class ="comSupport" name="supSign" value="1"id="supSign"> 점자 표지판<br>
																
															</div>	
															<div>
																<input type="radio" class ="comSupport" name="supPark" value="1" id="supPark"> 장애인 주차장<br>
																<input type="radio" class ="comSupport" name="supCharge" value="1" id="supCharge"> 전동휠체어 충전기<br>
																<input type="radio" class ="comSupport" name="supWelfare" value="1" id="supWelfare"> 사회복지사<br>
															</div>
															<a id="remove_btn">[ 초기화 ]</a>
														</div>
													</div>
												</div>
												
												<div class="col-md-12">
													<div class="form-group-log">
														<button type="submit" class="delete-btn btn-delete" id="withdrawUser" onclick="withdraw()">회원탈퇴하기</button>
														<button type="submit" class="btn btn-primary" id="modifyInfo">기업정보 수정</button>
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
<script src="../../../../resources/js/com_user.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
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
                    document.getElementById("comAddress").value = extraAddr;
                
                } else {
                    document.getElementById("comAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('comAddress').value = data.zonecode;
                document.getElementById("comAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("comAddress").focus();
            }
        }).open();
    }
    
    
    
    
    
    
    <%-- 초기화 버튼 클릭시 모든 radio unchecked --%>
	$("#remove_btn").click(function() {
		$('input.comSupport').removeAttr('checked');
	})

	
	<%-- comType에 따라 radio checked --%>
	if(${comMember.comType != null}){
		$("#${comMember.comType}").prop('checked', true)
	}
	
	<%-- 세센의 값대로 radio checked --%>
	if(${comSupport.supLift == 1}){
		$('#supLift').prop('checked', true);
	}
	
	if(${comSupport.supElv == 1}){
		$('#supElv').prop('checked', true);
	}
	if(${comSupport.supBath == 1}){
		$('#supBath').prop('checked', true);
	}
	if(${comSupport.supVoice == 1}){
		$('#supVoice').prop('checked', true);
	}
	if(${comSupport.supBlock == 1}){
		$('#supBlock').prop('checked', true);
	}
	if(${comSupport.supSign == 1}){
		$('#supSign').prop('checked', true);
	}
	if(${comSupport.supPark == 1}){
		$('#supPark').prop('checked', true);
	}
	if(${comSupport.supCharge == 1}){
		$('#supCharge').prop('checked', true);
	}
	if(${comSupport.supWelfare == 1}){
		$('#supWelfare').prop('checked', true);
	}

</script>

    
  </body>
</html>