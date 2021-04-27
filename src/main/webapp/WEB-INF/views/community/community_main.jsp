<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/include/head.jsp"%>
<head>
<link rel="stylesheet" href="/resources/css/community.css">
<link rel="stylesheet" href="/resources/css/community_button.css">

</head>
<body>


  <div class="container-2">
    <div class="btn btn-two">
      <span>커뮤니티</span>
    </div>
  </div>


<nav class="menu">

  <ul>
    <li><a href="${context}/community/review/review">기업리뷰</a></li>
    <li id="viewLaw"><a href="#">법률</a></li>
    <li id="viewMedia"><a href="#">매체</a></li>
    <li id="viewQna"><a href="#">QNA</a></li>
    <li><a href="${context}/index">뒤로가기</a></li>
  </ul>
</nav>

  
</body>

	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	
<c:choose>
<c:when test="${(userMember.userId == null) && (comMember.comId == null)}">
   <script>
    $('#viewLaw').click(function(){
    	
    		alert("로그인 후 사용 지원 가능합니다");
 		   	   location.href =  "${context}/member/user/login";
 		
    });
    $('#viewMedia').click(function(){

		alert("로그인 후 사용 지원 가능합니다");
		   	   location.href =  "${context}/member/user/login";
		
});
    $('#viewQna').click(function(){

		alert("로그인 후 사용 지원 가능합니다");
		   	   location.href =  "${context}/member/user/login";
		
});
  
  </script>
  </c:when>
   <c:otherwise>
      <script>
    $('#viewLaw').click(function(){
    	
 		   	   location.href =  "${context}/community/law";
 		
    });
    $('#viewMedia').click(function(){

		   	   location.href =  "${context}/community/media";
		
});
    $('#viewQna').click(function(){
    	
		   	   location.href =  "${context}/community/qna";
		
});
  
  </script>
   </c:otherwise>
    </c:choose>

</html>