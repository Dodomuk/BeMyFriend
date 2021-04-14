
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
<script>
/*
 * 댓글 등록하기(Ajax)
 */
function fn_comment(code){
    
    $.ajax({
        type:'POST',
        url : "<c:url value='/board/addComment.do'/>",
        data:$("#commentForm").serialize(),
        success : function(data){
            if(data=="success")
            {
                getCommentList();
                $("#comment").val("");
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
 
/**
 * 초기 페이지 로딩시 댓글 불러오기
 */
$(function(){
    
    getCommentList();
    
});
 
/**
 * 댓글 불러오기(Ajax)
 */
function getCommentList(){
    
    $.ajax({
        type:'GET',
        url : "<c:url value='/board/commentList.do'/>",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
            
            var html = "";
            var cCnt = data.length;
            
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div><table class='table'><h6><strong>"+data[i].writer+"</strong></h6>";
                    html += data[i].comment + "<tr><td></td></tr>";
                    html += "</table></div>";
                    html += "</div>";
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#cCnt").html(cCnt);
            $("#commentList").html(html);
            
        },
        error:function(request,status,error){
            
       }
        
    });
}
 
</script>


</body>
</html>