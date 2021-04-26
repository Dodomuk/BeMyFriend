<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<style>
.balloon_01 {
	position: relative;
	margin: 50px 50px 0 50px;
	width: 100px;
	height: 30px;
	background: #36E0C6;
	border-radius: 10px;
	text-align: center;
}

.balloon_01:after {
	border-top: 0px solid transparent;
	border-left: 10px solid transparent;
	border-right: 10px solid transparent;
	border-bottom: 10px solid #36E0C6;
	content: "";
	position: absolute;
	top: 28px;
	left: 40px;
	transform: rotate(180deg);
}
.hiddenText{
   clear: none;
   border: 0px none;
   float: none;
   background-color: black;
   color:transparent;
   return false;
}
</style>
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
						</a></span> <span>REVIEW <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-0 bread" id="pageTitle">리뷰</h1>
				</div>
			</div>
		</div>
	</section>
	<pre>&emsp;</pre>
	<div class="content">
		<div class="row justify-content-center">
			<div class="col-md-8 text-center" style="background: #BECDFF;">
				<span class="col-md-4">작성자 : ${view.userName}(${view.userId})</span>
				<span class="col-sm-8"></span> 
				<span class="col-md-4">등록일 :<fmt:formatDate value="${view.reviewDate}" pattern="yyyy.MM.dd HH.mm.ss" /></span> <span
					class="col-sm-8"></span> 
					<span class="col-md-4">번호 : ${view.reviewNo}</span>
			</div>
		</div>
		<br> <br>
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="review_board">
					<div class="info">
						<h2>${view.reviewTitle}</h2>
						<div class="col-md-7-p">
							<div class="balloon_01" id="copy">복사하기</div>

							<div class="contact-wrap w-100 p-md-5 p-4">
								<span>${view.reviewContent}</span>
		
							</div>
						</div>
					</div>
					<div class="col-md-10" style="margin-left: 6rem;">
						<div class="form-group-log-p">
							<div class="btn btn-outline-secondary" id="back_btn"
								style="margin: 8px;">
								<span>목록</span>
							</div>
							<c:if test="${view.userId eq memberId}">
							<div class="btn btn-outline-info" id="fix_btn"
								style="margin: 8px;">수정</div>
							<div class="btn btn-outline-warning" id="del_btn"
								style="margin: 8px;">
								<span>삭제</span>
							</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 댓글 관련 스크립트  -->
		<c:if test="${sessionScope.memberId != null}">
			<div class="container">
				<form id="commentForm" name="commentForm" method="post">
					<br> <br>
					<div>
						<div>
							<span><strong>Comments</strong></span> <span id="cCnt"></span>
						</div>
						<div>
							<table class="table">
								<tr>
									<td><textarea style="width: 1100px" rows="3" cols="30"
											id="replytext" name="comment" placeholder="댓글을 입력하세요"></textarea>
										<br>
										<div>
											<button type="button" id="btnReply"
												class="btn pull-right btn-success">등록</button>
										</div></td>
								</tr>
							</table>
						</div>
					</div>
				</form>
			</div>
		</c:if>

		<div class="container">
			<div id="listReply"></div>
		</div>
	</div>


	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
								<input class="hiddenText" id="rvContent" type="text" style="width:100%; height:100%;" value="${view.reviewContent}">
	<script defer>  //게시글 관련 스크립트
$(function(){
  $("#del_btn").click(function(){
	  if(confirm("정말 삭제하시겠습니까????")==true){
		  
		  location.href = "${context}/community/review/delete?no=${view.reviewNo}";
		  
	  }else{
		  return;
	  }
			  
  });
});

    /* 뒤로가기 */
$(function(){
	  $("#back_btn").click(function(){  
		  history.back();			  
	  });
	});
	
	/* 수정 */
$(function(){
	  $("#fix_btn").click(function(){  
		 location.href = "${context}/community/review/reviewFix?no=${view.reviewNo}";		  
	  });
	});
	
/* 댓글 기능 */

$(document).ready(function(){
	
	listReply();
	
	$("#btnReply").click(function(){
		var replytext = $("#replytext").val();
		var param = {reviewNo:"${view.reviewNo}",reviewCommentContent:replytext};
		$.ajax({
			type:"post",
			url: "${context}/reply/insertReply",
			data: param,
			success: function(){
				alert("댓글이 등록되었습니다!");
				listReply();
			}
		});
	});
	
	function listReply(){
		$.ajax({
			type: "get",
			url:"${context}/reply/replyListJson?reviewNo="+${view.reviewNo},
					success:function(result){
						console.log(${view.reviewNo});
						console.log(result);
						var output = "";
						for(var i in result){
							output += "<div>";
							output += "<div><table class='table'><h6><strong>" + result[i].replyUserName + "/" + result[i].replyUserId+"</strong><h6>";
							output += "<tr><td>"+result[i].reviewCommentContent+"</td></td>";
							output += "</table></div>";
							output += "</div>";
						}
						$("#listReply").html(output);
					}
			
		});
	}
	
});

</script>

	<script>
/* 복사 기능 */
$(function(){
$('#copy').click(function(){
	$('#rvContent').select();
	try{
    document.execCommand("Copy");
    alert('복사되었습니다')
	}catch(err){
	alert('이 브라우저는 지원되지 않습니다.')
	}
 })
 })
</script>

</body>
</html>