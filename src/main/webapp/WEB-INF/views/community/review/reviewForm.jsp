<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/board.css" />
<link rel="stylesheet" href="/resources/css/reset.css" />
<!-- 제이쿼리 유무 물어보기 -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

</head>
<body>
	<div class="content">
		<h2 class="tit">*게시판 글쓰기</h2>

		<form method="post" class="form-group">
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
						<td><input class="form-control" name="reviewWriter" /></td>
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
</html>