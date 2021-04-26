<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<body>
    <section class="hero-wrap hero-wrap-2" style="background-image: url('../../../../resources/images/bg_15.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="/index">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Join <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">Join</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">기업회원 가입하기</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters">
								<div class="col-md-7-p">
									<div class="contact-wrap w-100 p-md-5 p-4">
									
										<form:form modelAttribute="company" action="${context}/member/company/mailauth" method="POST" id="contactForm" name="contactForm" class="contactForm">
											<div class="row">
												
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="comId">기업 아이디</label><span id="idCheck" class="id_check"></span>
															<div class="idcheck-group">
																<input type="text" class="form-control" name="comId" id="comId" >

																<button type="button" onclick="idCheck()" class="btn btn-primary-p">확인</button>
															</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="name">기업명</label>
														<input type="text" class="form-control" name="comName"  id="comName"></input>
													</div>
												</div>
												<div class="col-md-6"> 
													<div class="form-group">
														<label class="label" for="comPw">비밀번호</label>
														<input type="password" class="form-control" name="comPw" id="comPw" placeholder="비밀번호를 입력하세요.">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">비밀번호 확인</label>
														<span id="pw_confirm" class="pw_check"></span>
														<form:errors path="comPw" cssClass="pw_check"></form:errors>
														<input type="password" class="form-control" name="checkpw" id="checkpw" placeholder="비밀번호를 다시 입력해주세요.">
													</div>
												</div>
												
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="comAdd">기업주소</label>
														<div class="add_set">
															<input type="text" class="form-control" name="comAddress"  id="comAddress" placeholder="주소">
															<button type="button" class="add_search_btn" onclick= "addressPop()">주소찾기</button>
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="comTell">기업전화번호</label>
														<input type="tel" class="form-control" name="comTell"  id="comTell"></input>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="comMail">기업이메일</label>
														<input type="email" class="form-control" name="comMail"  id="comMail"></input>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="comManager">인사담당자</label>
														<input type="text" class="form-control" name="comManager"  id="comManager"></input>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" id="check-group">기업형태</label><br>
														<input type="radio" class ="status" name="comType" value="스타트업" id="start"> 스타트업<br>
														<input type="radio" class ="status" name="comType" value="중소기업"id="small"> 중소기업<br>
														<input type="radio" class ="status" name="comType" value="중견기업" id="middle"> 중견기업<br>
														<input type="radio" class ="status" name="comType" value="대기업" id="big"> 대기업	
													</div>
												</div>
												
												
												<div class="col-md-12">
													<div class="form-group-log-p">
														<button type="submit" class="btn btn-primary">회원가입</button>
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
</script>

    
  </body>
</html>