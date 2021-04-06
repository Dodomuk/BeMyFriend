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
          <span>등록일 : ${view.reviewDate}</span>
          <span>작성자 : ${view.userId}</span>
      </div>
  
      <div class="article_content">
          ${board.content}
      </div>
      <div class="btn_section btn_list">
          <button onclick="submitData('list')"><span>목록</span></button>
      </div>
      
       <div class="btn_section btn_delete">
        <button ><span>삭제</span></button>
      </div>
      <div class="btn_section btn_modify">
        <button><span>수정</span></button> <!-- 나중에 미영누나 회원가입 창 완성되면 세션 값 유무로 다시ㄱㄱ -->
      </div>
   </div>
</div>
<script type="text/javascript">

/*사진 기능 보류*/

/*    function submitData(url){
      location.href = url;
   } 
   
   function downloadFile(ofname,rfname,savePath){
	  let params = {'originFileName':ofname,
			  		'renameFileName':rfname,
			  		'savePath':savePath};
	  
      location.href = '${context}' + "/review/download?" + urlEncodeForm(params);
   }
 */
</script>










</body>
</html>