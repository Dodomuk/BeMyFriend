<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.paging {
	width: 30vw;
	position: relative;
	left: 50vw;
	transform: translateX(-50%);
	display: flex;
	justify-content: space-around;
	font-size: x-large;
}
</style>
</head>
<body>
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('../../../../resources/images/bg_5.png');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span>
					</p>
					<h1 class="mb-0 bread">채용정보</h1>
				</div>
			</div>
		</div>
	</section>


	<!-- 채용정보 검색 section -->
     
	<section class="ftco-sections ftco-degree-bg">
		<div class="container">
			<div class="row search_row">
				<!-- .col-md-8 -->
				<div class="col-lg-8 sidebar pl-lg-5 ftco-animate">
					<div class="sidebar-box">
						<form
							action="${context}/search/searchkeyword?searchType=${searchType.value}&keyword=${keyword.value}"
							Method="GET" class="recru_search-form">
							<div class="form-group">
								<div class="search_box">
									<select class="col-md-2" id="searchType" name="searchType">
										<option value="searchTotal">전체</option>
										<option value="searchDuty">직무별</option>
										<option value="searchPlace">지역별</option>
										<option value="searchCom">기업별</option>
										<option value="searchExp">경력별</option>
									</select> <input type="text" class="form-control col-md-8" id="keyword"
										name="keyword" placeholder="검색어를 입력하세요.">
									<button type="submit"
										class="recru_search_btn fa fa-search col-md-2">검색</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row">

				<fmt:formatDate var="today" value="${now}" pattern="yyyy-MM-dd" />

				<c:forEach items="${recruList}" var="recru">
					<div class="col-md-6 col-lg-3 ftco-animate"
						onClick="location.href='/recruitment/recruitmentView?view=${recru.jobNo}&&comId=${recru.comId}'">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(../../../../resources/images/2145841.jpg)"></div>
								<!-- 채용공고 작성란에서 어떻게 받아오는지 확인한 뒤 수정 -->
							</div>
							<div class="text pt-3 px-3 pb-4 text-center">
								<c:if test="${today < recru.jobDeadline}">
									<h3>${recru.jobTitle}</h3>
									<span class="position mb-2">${recru.comName}</span>
									<div class="faded">
										<p>${recru.jobLocation}</p>
										<ul class="ftco-social text-center">
										</ul>
									</div>
								</c:if>
								<c:if test="${today eq recru.jobDeadline}">
									<h3>${recru.comName}</h3>
									<span class="position mb-2">${recru.jobTitle}</span>
									<p>마감 D Day</p>
									<div class="faded">
										<p>${recru.jobLocation}</p>
									</div>
								</c:if>
								<c:if test="${today > recru.jobDeadline}">
									<h3>${recru.comName}</h3>
									<span class="faded">${recru.jobTitle}</span>
									<div class="faded">
										<p>${recru.jobLocation}</p>
										<p>지원 마감</p>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	
	
	
	
												

	<!-- section pagination -->
	<div class="paging">
		<a href="${context}/recruitment/recruitment" class="nav first">《</a> <a
			href="${context}/recruitment/recruitment?page=${paging.prev}">〈</a>

		<c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}"
			var="page">
			<a href="${context}/recruitment/recruitment?page=${page}"><span>
					<c:choose>
						<c:when test="${page%10 eq 1}">B</c:when>
						<c:when test="${page%10 eq 2}">E</c:when>
						<c:when test="${page%10 eq 3}">&nbsp;M</c:when>
						<c:when test="${page%10 eq 4}">Y</c:when>
						<c:when test="${page%10 eq 5}">&nbsp;F</c:when>
						<c:when test="${page%10 eq 6}">R</c:when>
						<c:when test="${page%10 eq 7}">I</c:when>
						<c:when test="${page%10 eq 8}">E</c:when>
						<c:when test="${page%10 eq 9}">N</c:when>
						<c:when test="${page%10 eq 0}">D</c:when>
					</c:choose>
			</span></a>
		</c:forEach>

		<a href="${context}/recruitment/recruitment?page=${paging.next}">〉</a>
		<a href="${context}/recruitment/recruitment?page=${paging.lastPage}">》</a>
	</div>

    
	<!-- // section pagination -->
 
     <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
</body>
</html>