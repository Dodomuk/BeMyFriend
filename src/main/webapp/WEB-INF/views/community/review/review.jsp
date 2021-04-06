<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<!-- date 형식을 바꾸기 위한 jstl -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="ko">
<head>
<title>비 마이 프랜드</title>
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
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<style type="text/css">
	.content{
		width:80vw;
		position:relative;
		left:10vw;
		display: flex;
		flex-direction:column;
		justify-content: center;
	}

	.paging{
		width:30vw;
		position:relative;
		left:25vw;
		display: flex;
		justify-content:space-around;
	}
</style>
</head>

<body>
	<div class="content">
		<h2 class="tit">리뷰 게시판</h2>

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
	 			<c:if test="${empty reviewList}">
					<td>
						<p>데이터가 존재하지 않습니다.</p>
					<td>
				</c:if>
				<c:if test="${!empty reviewList}">
					<c:forEach items="${reviewList}" var="review">
						<tr>
							<td id="rv_no">${review.reviewNo}</td>
							<td id="rv_title"><a href="${context}/community/review/reviewView?view=${review.reviewNo}">${review.reviewTitle}</a></td>
							<td>${review.userId}</td>
							<td>
							<c:if test="${review.reviewDate ne nowDate}">
							<fmt:formatDate value="${review.reviewDate}" pattern="yyyy.MM.dd" />
							</c:if>
							<c:if test="${review.reviewDate eq nowDate}">
							<fmt:formatDate value="${review.reviewDate}" pattern="HH:mm:ss" /><!-- 확인해봐야됨 -->
							</c:if>
                            </td>
						</tr>
					</c:forEach>
				</c:if>
				<tr>
					<td colspan="5">
					<a href="/community/review/reviewForm" class="btn btn_default">글쓰기</a></td>
				</tr> 
			</tbody>
		</table>
		
		<p>-----------------------------------------------</p>
		
		<!-- section pagination -->
		<div class="paging">
			<a href="${context}/${paging.type}/community/review/review" class="nav first">《</a>
			<a href="${context}/${paging.type}/community/review/review=${paging.prev}">〈</i></a>

			<c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}"
				var="page">
				<a href="${context}/${paging.type}/community/review/review?page=${page}"><span>${page}</span></a>
			</c:forEach>

			<a
				href="${context}/${paging.type}/community/review/review?page=${paging.next}">〉</a>
			<a
				href="${context}/${paging.type}/community/review/review?page=${paging.lastPage}">》</a>
		</div>
	</div>
	
	<!-- // section pagination -->

</body>
<script type="text/javascript">

   function view_move($("#rv_no")){
	   
	   e.preventDefault();
	   
  	 var rv_no = "${context}/community/review/reviewView" +"?view=" + $("#rv_no").text();
  	   location.href =  rv_no;
   }
   
</script>

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