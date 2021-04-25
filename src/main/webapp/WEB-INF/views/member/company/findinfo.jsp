<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
  <body>

    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">아이디/비밀번호 찾기</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters-log">
								<div class="col-md-7-p-log">
									<div class="contact-wrap w-100 p-md-7 p-4">
									
									
									        <%-- radio 버튼으로 checked시 display 바뀌게 설정 --%>
											<div class="col-md-12" id="findInfo">
												<div class="form-group">
													<label class="label">아이디 찾기</label>
													<input type="radio"  name="findInfo" id="findId" value="findId" onclick='getFindId()' checked="checked" >
												</div>
												<div class="form-group">
													<label class="label">비밀번호 찾기</label>
													<input type ="radio"  name="findInfo" id="findPw" value="findPw" onclick='getFindPw()'>
												</div>
											</div>
											<hr>
									
											
											<%-- 아이디 찾기시 --%>	
											<form id="findIdForm" method="GET" action="${context}/member/company/findcomid" name ="findIdForm" class="contactForm" >
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label class="label">기업명</label>
															<input type="text" class="form-control" name="comName" id="comName" placeholder="기업명을 입력하세요." >
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<label class="label">기업 이메일</label>
															<input type ="text" class="form-control" name="comMail" id="comMail" placeholder="이메일을 입력하세요.">
														</div>
													</div>
													<div class="login_btn_form">
														<div class="col-md-12">
															<div class="form-group-log">
																<button type="submit" class="btn btn-primary">아이디 찾기</button>
															</div>
														</div>
													</div>
												</div>
											</form>
									
										
										<%-- 비밀번호 찾기시 --%>
											<form id="findPwForm" method="GET" action="${context}/member/company/findcompw" name ="findPwForm" class="contactForm"  style="display:none;" >
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label class="label">기업 아이디</label>
															<input type="text" class="form-control" name="comId" id="comId"placeholder="아이디를 입력하세요." >
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<label class="label">기업 이메일</label>
															<input type ="email" class="form-control" name="comMail" id="comMail" placeholder="이메일을 입력하세요.">
														</div>
													</div>
													<div class="login_btn_form">
														<div class="col-md-12">
															<div class="form-group-log">
																<button type="submit" class="btn findpw">비밀번호 찾기</button>
															</div>
														</div>
													</div>
												</div>
											</form>
										
											
											
											
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</section>

		
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	
  <script src="../../../../resources/js/user.js"></script>
  <script>
	function getFindId(){

		document.getElementById('findPwForm').style.display="none";
		document.getElementById('findIdForm').style.display="inline";
		
	} 
	
	function getFindPw(){
		
			document.getElementById('findPwForm').style.display="inline";
			document.getElementById('findIdForm').style.display="none";
		} 
		
	
	
</script>


    
  </body>
</html>