<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <body>
    
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('../resources/images/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
					<span class="mr-2"><a href="index.html">Learn Sign
								Language<i class="ion-ios-arrow-forward"></i>
						</a></span> <span>화 <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-0 bread">수화를 배워봅시다</h1>



				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">

		<div class="container">


			<!-- 수화 검색창 -->
			<div class="row mb-5">
				<div class="col text-center">
					<div class="wrapSearch">
						<form method="get" action="/sign/signSearch">
							<input type="text" id="signSearchText" title="searchJob"
								name="searchKeyword" maxlength="50" style="background: none;">
							<button type="submit" class="signSearchBtn"
								id="common_search_btn">
								<i class="fas fa-search"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- 수화 임시 테스트용 -->


				<c:forEach var="signDataListData" items="${signDataList}">
					<div class="col-md-4 ftco-animate">
						<div class="mb-4 img d-flex align-items-end">
							<form method="get" action="/sign/selectSignData">

								<button>
									<img src="<c:out value="${signDataListData.imgSrc}" />" />
								</button>
								<input type="hidden" name="selectSignData"
									value="${signDataListData.origin_no}" />

							</form>
						</div>
						<form method="get" action="/sign/selectSignData">

							<button>
								<span><c:out value="${signDataListData.title}" /></span>
							</button>
							<input type="hidden" name="selectSignData"
								value="<c:out value="${signDataListData.origin_no}" />" />
						</form>
					</div>
				</c:forEach>

				<c:forEach var="signResponseData" items="${signResponseData}">
					<!-- 수화 임시 테스트용 -->
					<div class="col-md-4 ftco-animate">
						<div class="mb-4 img d-flex align-items-end">

							
							
							<video id="html5Video" controls="true" preload="auto"
								width="100%" height="100%" controlslist="nodownload">

								<source src="<c:out value="${signResponseData.videoUrl}" />"
									type="video/mp4">
							</video>

							<img src="<c:out value="${signResponseData.imageUrl}" />" width="100%" height="50%" />
						</div>
						<span>"<c:out value="${signResponseData.explain}" />"
						</span>
					</div>
				</c:forEach>
			</div>
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	
	<!-- bootStrap js -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="../resources/js/google-map.js"></script>



</body>
</html>