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
            <h1 class="mb-0 bread">J O I N</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">회원가입하기</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters-log">
								<div class="col-md-7-p-log">
									<div class="contact-wrap w-100 p-md-5 p-4">
					
										<div id="contactForm" class="contactForm">
													<div class="form-group-log">
														<button type="button" onclick="location.href='/member/user/join'"  class="btn btn-primary">개인 회원가입</button>
														<button type="button" onclick="location.href='/member/company/join'" class="btn btn-primary">기업 회원가입</button>
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