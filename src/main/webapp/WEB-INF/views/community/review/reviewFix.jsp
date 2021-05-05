<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp"%>
<head>
<link rel="stylesheet" href="/resources/css/board.css" />
<link rel="stylesheet" href="/resources/css/reset.css" />

</head>
<body>

	<section class="hero-wrap hero-wrap-2"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="${context}/main">Community
								<i class="ion-ios-arrow-forward"></i>
						</a></span> <span>Review <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-0 bread" id="pageTitle">리뷰</h1>
				</div>
			</div>
		</div>
	</section>
	
		<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">리뷰 수정</h2>
				</div>
			</div>
				<div class="row justify-content-center">
		<div class="col-md-offset-2 col-md-8">
			<div class="wrapper">
				<div class="row no-gutters">
					<div class="col-md-7-p">
						<div class="contact-wrap w-100 p-md-5 p-4">

							<div class="content">
							<form action="${context}/community/review/updateForm?reviewNo=${view.reviewNo}" method="post" class="form-group">
										<div class="row">
										<div class="col-md-8">
											<label class="label">제목</label><input class="form-control"
												name="reviewTitle" value="${view.reviewTitle}" required/>
										</div>
										<div class="col-md-12">
											<label class="label">내용</label>
											<textarea class="form-control" name="reviewContent" required="required">${view.reviewContent}</textarea>
										</div>
										<div>
											<div class="col-md-12">
											<div class="form-group">
											    <div></div>
												<label class="label"><strong>작성자</strong>: ${view.userName} /${view.userId}</label>
											</div>
											</div>
										</div>
										<div class="col-md-12">

											<div class="form-group-log-p">

												<button type="submit" class="btn btn-primary"
													onclick="alert('등록되었습니다!')">등록</button>
												<div style="margin: 5px;"></div>
												<button type="reset" class="btn btn-primary">새로입력</button>
												<div class="col-md-1"></div>
												<button type="button" class="btn btn-secondary"
													id="cancelBtn">취소</button>

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
	</div>
	</section>

	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script type="text/javascript">
$(function(){
    $(".cancelBtn").click(function(){
    	   history.back();
    });	
});

</script>
</body>
</html>