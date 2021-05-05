<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

  <body>


    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">개인회원 로그인</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters-log">
								<div class="col-md-7-p-log">
									<div class="contact-wrap w-100 p-md-5 p-4">
					
										<div id="contactForm" class="contactForm">
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<label class="label">아이디</label>
														<input type="text" class="form-control" name="userId" id="userId" >
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label class="label">비밀번호</label>
														<input type ="password" class="form-control" name="userPw" id="userPw">
													</div>
												</div>
												<div class="login_btn_form">
													<div class="col-md-12">
														<div class="form-group-log">
															<button type="submit" onclick="login()"  class="btn btn-primary">로그인</button>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group-log">
															<button type="submit" onclick="location.href='/member/user/findinfo'"  class="btn btn-findinfo">아이디/비밀번호 찾기</button>
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
			</div>
		</section>

		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
		
  <script src="../../../../resources/js/user.js"></script>


    
  </body>
</html>