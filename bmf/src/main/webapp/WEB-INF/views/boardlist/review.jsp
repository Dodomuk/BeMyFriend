<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp" %>
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
				<c:forEach items="${list}" var="board">
	           <tr>
						<td>${board.reviewNo}</td>
                 		<td>${board.reviewTitle}</td>
						<td>${board.userId}</td>
						<td>${board.reviewDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table> 
		<p>-----------------------------------------------</p>
			<a href="<%= request.getContextPath() %>/board/form">게시글 쓰기</a>
		
		<!-- section pagination -->
 		<%-- <div class="paging">
			<a href="${context}/${paging.type}/list" class="nav first">《</a> <a
				href="${context}/${paging.type}/list?page=${paging.prev}">〈</a>

			<c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}"
				var="page">
				<a href="${context}/${paging.type}/list?page=${page}"><span>${page}</span></a>
			</c:forEach>

			<a href="${context}/${paging.type}/list?page=${paging.next}">〉</a> <a
				href="${context}/${paging.type}/list?page=${paging.lastPage}">》</a>
		</div>  --%>
		<!-- // section pagination -->
	</div>
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