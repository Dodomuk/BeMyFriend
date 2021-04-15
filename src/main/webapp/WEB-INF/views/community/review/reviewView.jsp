
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp" %>

<link rel="stylesheet" href="${context}/resources/css/board.css" />
<link rel="stylesheet" href="/resources/css/reset.css"/>

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
                            <textarea style="width: 1100px" rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <a href='#' onClick="fn_comment('${result.code }')" class="btn pull-right btn-success">등록</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="b_code" name="b_code" value="${result.code }" />        
    </form>
</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
</div>
 
</div>

<script type="text/javascript">
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

</script>
<!--  
<script>
$(document).ready(function(){
	
	listReply2();
	
	$("#btnReply").click(function(){
		var replytext=$("#replytext").val();
		var no = "${review.reviewno}" /* 여기 주목 */
		var param ="replytext="+replytext+"&no="+no;
		$.ajax({
			type : "post",
			url : "${path}/reply/insert.do"
			data: param,
			success : function(){
				alert("댓글이 등록되었습니다!");
				listReply2();
			}
		});
		
});
	
	function listReply(){
	$.ajax({
	 type: "get",
	 url: "${path}/reply/list.do?no=${review.reviewno}",
			 success: function(result){
				 $("listReply").html(result);
			 }
	});
	}
	
	function listReply2(){
	$.ajax({
	    type: "get",
	    url : "${path}/reply/listJson.do?no=${review.reviewno}",
	    success: function(result){
	    	var output = "<table>";
	    	for(var i in result){
	    	output += "<tr>";	
	    	output += "<td>"+result[i].userName;	
	    	}
	})
	}
	}
	
</script>
-->

</body>
</html>