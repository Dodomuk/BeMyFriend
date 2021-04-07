<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp"%>
<%@ include file="/WEB-INF/views/include/community_head.jsp"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/board.css" />
<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<div class="content">
		<h2 class="tit">게시판 글쓰기</h2>

		<form action="${context}/community/review/uploadForm" method="post" class="form-group">
			<table style="text-align: center" border="1">
				<thead>
					<tr>
						<th><span>제목</span></th>
						<td><input class="form-control" name="reviewTitle" /></td>
					</tr>
					<tr>
						<th><span>내용</span></th>
						<td><textarea class="form-control" name="reviewContent"></textarea></td>
					</tr>
					<tr>
						<th><span>작성자</span></th>
						<td><input class="form-control" name="userId" /></td>
					</tr>
					<tr>
						<td colspan="2">
						<button>등록</button>
						<button type="reset">새로입력</button>
						<button type="button" class="cancelBtn">취소</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>

		<p>-----------------------------------------------</p>




	</div>
</body>

<script type="text/javascript">
$(function(){
    $(".cancelBtn").click(function(){
    	   history.back();
    });	
});

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
</html>