
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
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
						</a></span> <span>QNA <i class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-0 bread" id="pageTitle">QNA</h1>
				</div>
			</div>
		</div>
	</section>
	<pre>&emsp;</pre>
	<div class="content">
		<div class="row justify-content-center">
			<div class="col-md-8 text-center" style="background: #BECDFF;">
				<span class="col-md-4">작성자 : ${view.userId}</span>
				<span class="col-sm-8"></span> 
				<span class="col-md-4">등록일 :<fmt:formatDate value="${view.qnaDate}" pattern="yyyy.MM.dd HH.mm.ss" /></span> <span
					class="col-sm-8"></span> 
					<span class="col-md-4">번호 : ${view.qnaNo}</span>
			</div>
		</div>
		<br> <br>
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="review_board">
					<div class="info">
						<h2>${view.qnaTitle}</h2>
							<div class="col-md-7-p">
							<div class="contact-wrap w-100 p-md-5 p-4">
								<span>${view.qnaContent}</span>
		
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
		<c:if test="${sessionScope.memberId eq view.userId || sessionScope.memberId eq 'admin'}">
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
	
<script defer>  //게시글 관련 스크립트
$(function(){
  $("#del_btn").click(function(){
	  if(confirm("정말 삭제하시겠습니까????")==true){
		  
		  location.href = "${context}/community/qna/delete?qnaNo=${view.qnaNo}";
		  
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
		 location.href = "${context}/community/qna/qnaFix?qnaNo=${view.qnaNo}";		  
	  });
	});
	
/* 댓글 기능 */

$(document).ready(function(){
	
	listReply();
	
	$("#btnReply").click(function(){
		var replytext = $("#replytext").val();
		var param = {qnaNo:"${view.qnaNo}",qnaCommentContent:replytext};
		$.ajax({
			type:"post",
			url: "${context}/reply/insertQnaReply",
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
			url:"${context}/reply/replyQnaListJson?qnaNo="+${view.qnaNo},
					success:function(result){
						console.log(${view.qnaNo});
						console.log(result);
						var output = "";
						for(var i in result){
							output += "<div>";
							output += "<div><table class='table'><h6><strong>" + result[i].replyUserId + "/" + result[i].replyUserName+"</strong><h6>";
							output += "<tr><td>"+result[i].qnaCommentContent+"</td></td>";
							output += "</table></div>";
							output += "</div>";
						}
						$("#listReply").html(output);
					}
			
		});
	}
	
});

</script>


</body>
</html>