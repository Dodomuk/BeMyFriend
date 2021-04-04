<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<!-- date 형식을 바꾸기 위한 jstl -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="ko">
<head>
<title>Pet Sitting - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="../../resources/css/animate.css">

<link rel="stylesheet" href="../../resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="../../resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="../../resources/css/magnific-popup.css">


<link rel="stylesheet"
	href="../../resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../../resources/css/jquery.timepicker.css">

<link rel="stylesheet" href="../../resources/css/flaticon.css">
<link rel="stylesheet" href="../../resources/css/style.css">
</head>

<body>
	<div class="content">
		<h2 class="tit">* 게시판</h2>

		<table style="text-align: center" border="1">
			<thead>
				<tr>
					<th style="width: 10%; height: 20%;"><span>번호</span></th>
					<th style="width: 70%;"><span>제목</span></th>
					<th style="width: 10%;"><span>작성자</span></th>
					<th style="width: 10%;"><span>등록일</span></th>
				</tr>
			</thead>
			<tbody>
	<!-- 			<c:if test="${empty reviewList}">
					<tr>
						<td>데이터가 존재하지 않습니다.</td>
					</tr>
				</c:if>
				<c:if test="${!empty reviewList}">
					<c:forEach items="${reviewList}" var="review">
						<tr>
							<td>${review.reviewNo}</td>
							<td>${review.reviewTitle}</td>
							<td>${review.userId}</td>
							<td>
							<c:if test="${review.reviewDate ne nowDate}">
							<fmt:formatDate value="${review.reviewDate}" pattern="yyyy.MM.dd" />
							</c:if>
							<c:if test="${review.reviewDate eq nowDate}">
							<fmt:formatDate value="${review.reviewDate}" pattern="HH:mm:ss" />
							</c:if>
                            </td>
						</tr>
					</c:forEach>
				</c:if>
				<tr>
					<td colspan="5">
					<a href="/boardlist/reviewForm" class="btn btn_default">글쓰기</a></td>
				</tr> -->
			</tbody>
		</table>
		
		<p>-----------------------------------------------</p>
		
		<!-- section pagination -->
	<!-- 	<div class="paging">
			<a href="${context}/${paging.type}/boardlist/form" class="nav first">《</a>
			<a href="${context}/${paging.type}/boardlist/form=${paging.prev}">〈</i></a>

			<c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}"
				var="page">
				<a href="${context}/${paging.type}/boardlist/form?page=${page}"><span>${page}</span></a>
			</c:forEach>

			<a
				href="${context}/${paging.type}/boardlist/form?page=${paging.next}">〉</a>
			<a
				href="${context}/${paging.type}/boardlist/form?page=${paging.lastPage}">》</a>
		</div>
	-->
	</div>
	
	<!-- // section pagination -->

</body>
<script src="../../resources/js/jquery.min.js"></script>
<script src="../../resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="../../resources/js/popper.min.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="../../resources/js/jquery.easing.1.3.js"></script>
<script src="../../resources/js/jquery.waypoints.min.js"></script>
<script src="../../resources/js/jquery.stellar.min.js"></script>
<script src="../../resources/js/jquery.animateNumber.min.js"></script>
<script src="../../resources/js/bootstrap-datepicker.js"></script>
<script src="../../resources/js/jquery.timepicker.min.js"></script>
<script src="../../resources/js/owl.carousel.min.js"></script>
<script src="../../resources/js/jquery.magnific-popup.min.js"></script>
<script src="../../resources/js/scrollax.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="../../resources/js/google-map.js"></script>
<script src="../../resources/js/main.js"></script>


</body>
</html>