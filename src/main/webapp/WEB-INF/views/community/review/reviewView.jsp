
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp" %>

<link rel="stylesheet" href="${context}/resources/css/board.css" />
<link rel="stylesheet" href="/resources/css/reset.css"/>
<script>
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
	
})
</script>
<body>
<div class="content">   
    <h2 class="review_view"> 리뷰 보기 게시판 </h2>
    <div class="review_board">
     <div class="info" >
          <span>번호 : ${view.reviewNo}</span>
          <span>제목 : ${view.reviewTitle}</span>
          <span>등록일 :<fmt:formatDate value="${view.reviewDate}" pattern="yyyy.MM.dd HH.mm.ss" /></span>
          <span>내용 : ${view.reviewContent}</span>
          <span>작성자 : ${view.userId}</span>
      </div>
     
      <div class="btn_section btn_list" id="back_btn">
          <span>목록</span>
      </div>
      
       <div class="btn_section btn_delete" id="del_btn">
       <span>삭제</span>
      </div>
      <div class="btn btn-outline-info" id="fix_btn">
        수정 <!-- 나중에 미영누나 회원가입 창 완성되면 세션 값 유무로 다시ㄱㄱ -->
      </div>
      
   </div>
   
   
     <!-- 댓글 관련 스크립트  -->
    <div class="container">
    <form id="commentForm" name="commentForm" method="post">
    <br><br>
        <div>
            <div>
                <span><strong>Comments</strong></span> <span id="cCnt"></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                        <td>
                            <textarea style="width: 1100px" rows="3" cols="30" id="replytext" name="comment" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                            <c:if test="${sessionScope.memberId != null}">
                                <button type="button" id="btnReply" class="btn pull-right btn-success">등록</button>
                            </c:if>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>       
    </form>
</div>
<div class="container">
        <div id="listReply">
        </div>
</div>
 
</div>

<script type="text/javascript">  //게시글 관련 스크립트
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

	/*----------------------------------------  */
	
	
</script>


</body>
</html>