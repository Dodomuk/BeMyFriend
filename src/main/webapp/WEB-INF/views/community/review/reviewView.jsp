<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp" %>
<%@include file="/WEB-INF/views/include/community_head.jsp"%>

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



</body>
</html>