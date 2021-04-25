<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
  <body>
    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">회원정보 찾기 결과</h2>
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
													<div class="form-group find-result" >
													<c:if test="${!empty userId}">
														<span>회원님의 아이디는 ${userId} 입니다.</span>
													</c:if>
													<c:if test="${!empty comId}">
														<span>회원님의 아이디는 ${comId} 입니다.</span>
													</c:if>
													
													<c:if test="${!empty userPw}">
														<span>회원님의 새로운 비밀번호는 ${userPw} 입니다.</span><br>
														<span>회원정보수정 페이지에서 비밀번호를 변경하세요.</span>
													</c:if>
													
													<c:if test="${!empty comPw}">
														<span>회원님의 새로운 비밀번호는 ${comPw} 입니다.</span><br>
														<span>회원정보수정 페이지에서 비밀번호를 변경하세요.</span>
													</c:if>
						
													<c:if test="${!empty fail}">
														<span>${fail}</span>
													</c:if>
													
														
													</div>
												</div>												
											</div>
										</div>
									</div>
									
									<div class="row move_btn_form">
										<div class="col-md-6 move_btn">
										<c:choose>
											<c:when test="${!empty userId}">
												<button type="submit" onclick="location.href='/member/user/login'"  class="btn btn-primary">로그인 하기</button>
											</c:when>
											<c:when test="${!empty comId}">
												<button type="submit" onclick="location.href='/member/company/login'"  class="btn btn-primary">로그인 하기</button>
											</c:when>
											<c:otherwise>
												<button type="submit" onclick="location.href='/member/join'"  class="btn btn-primary">회원가입</button>
											</c:otherwise>	
										</c:choose>
										</div>
										<div class="col-md-6 move_btn">
										<c:choose>
											<c:when test="${!empty userId}">
												<button type="submit" onclick="location.href='/member/user/findinfo'"  class="btn btn-primary">비밀번호 찾기</button>
											</c:when>
											<c:when test="${!empty comId}">	
												<button type="submit" onclick="location.href='/member/company/findinfo'"  class="btn btn-primary">비밀번호 찾기</button>
											</c:when>
											<c:otherwise> </c:otherwise>
										</c:choose>		
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