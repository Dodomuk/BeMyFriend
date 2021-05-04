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
											<form id="findIdForm" method="GET" action="${context}/member/user/finduserid" name ="findIdForm" class="contactForm" >
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label class="label">이름</label>
															<input type="text" class="form-control" name="userName" id="userName" placeholder="이름을 입력하세요." >
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<label class="label">전화번호</label>
															<input type ="text" class="form-control" name="userTell" id="userTell" placeholder="전화번호를 입력하세요.">
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
											<form id="findPwForm" method="GET" action="${context}/member/user/finduserpw" name ="findPwForm" class="contactForm"  style="display:none;" ">
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label class="label">아이디</label>
															<input type="text" class="form-control" name="userId" id="userId"placeholder="아이디를 입력하세요." >
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<label class="label">이메일</label>
															<input type ="email" class="form-control" name="userMail" id="userMail" placeholder="이메일을 입력하세요.">
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