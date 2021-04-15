<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>

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
		font-size: x-large;
	}
</style>
</head>

<body>

	<!-- 커뮤니티 nav -->
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" href="${context}/community/review/review">기업 리뷰</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="${context}/community/law">법률</a></li>
		<li class="nav-item"><a class="nav-link" href="${context}/community/media">매체</a></li>
		<li class="nav-item"><a class="nav-link" href="${context}/community/qna">QNA</a>
		</li>
	</ul>
	<!-- 커뮤니티 nav 끝 -->
	
	
		<h2 class="tit">리뷰 게시판</h2>

  <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row mb-5 pb-10">
    		
             <!-- 오늘 날짜와 게시글 날짜 비교 -->
            <c:set var="date" value="<%=new java.util.Date()%>"/>
            <c:set var="today"><fmt:formatDate value="${date}" pattern="yyyy.MM.dd" /></c:set> 

            <!-- 테이블 값이 null 일 경우  -->
            <c:if test="${empty reviewList}">
	 			    <tr>
	 			    <td></td>
					<td>
						<p>데이터가 존재하지 않습니다.</p>
					<td>
					<td></td>
					<td></td>
					</tr>
				</c:if>
			
			<!-- 테이블 값이 null이 아닐 경우 -->	
            <c:if test="${!empty reviewList}">
			<c:forEach items="${reviewList}" var="review">
			    <div class="col-md-3 pb-5 d-flex align-self-stretch px-3 ftco-animate">
            <div class="d-block services text-center">
              <div class="media-body p-3">
                <h3 class="heading">${review.reviewTitle}</h3>
                <p>${review.userId}</p>
                <p>조회수 : ${review.viewCnt}</p> 
                <span class="position">
                             <fmt:formatDate value="${review.reviewDate}" pattern="yyyy.MM.dd" />
                </span>
                <p></p>
                <a href="${context}/community/review/reviewView?view=${review.reviewNo}" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
                <span></span>
              </div>
            </div>      
          </div> 
            </c:forEach>
            </c:if> 
            
        </div>
        <div  style="padding-left:85%;">
                            <div class="badge bg-primary text-wrap" style="width: 6rem;">
  <a href="${context}/community/review/reviewForm" class="btn btn_default">글쓰기</a>
   </div>
</div>
    	</div>
    </section>

					
				
		<!-- section pagination -->
		    <section class="ftco-section bg-light">
      <div class="container">
		 <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
			<li><a href="${context}/community/review/review" class="nav first">《</a></li>
			<li><a href="${context}/community/review/review?page=${paging.prev}">&lt;</a></li>

			<c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}"
				var="page">
				<c:if test="${page eq paging.currentPage}">
				<li class="active">
				</c:if>
				<c:if test="${page ne paging.currentPage}">
				<li>
				</c:if>
				<a href="${context}/community/review/review?page=${page}"><span>
				<c:choose>
				   <c:when test = "${page%10 eq 1}">B</c:when>
				   <c:when test = "${page%10 eq 2}">E</c:when>
				   <c:when test = "${page%10 eq 3}">&nbsp;M</c:when>
				   <c:when test = "${page%10 eq 4}">Y</c:when>
				   <c:when test = "${page%10 eq 5}">&nbsp;F</c:when>
				   <c:when test = "${page%10 eq 6}">R</c:when>
				   <c:when test = "${page%10 eq 7}">I</c:when>
				   <c:when test = "${page%10 eq 8}">E</c:when>
				   <c:when test = "${page%10 eq 9}">N</c:when>
				   <c:when test = "${page%10 eq 0}">D</c:when>
				</c:choose>
				</span></a></li>
			</c:forEach>

			<li><a href="${context}/community/review/review?page=${paging.next}">&gt;</a></li>
			<li><a href="${context}/community/review/review?page=${paging.lastPage}">》</a></li>
			</ul>
	            </div>
          </div>
        </div>
      </div>
    </section>
	
	<!-- // section pagination -->


</body>

<!-- 코드 확인하고 삭제 예정 ****-->
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