<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.bemyfriend.bmf.common.code.ConfigCode"
    %>
<%@ include file="/WEB-INF/views/include/head.jsp"%>

<body>

	<c:if test="${userId != null}">
		<h2>반갑습니다. ${userId} 님,</h2>
		<h2> BeMyFreinds 사이트에 가입하신 것을 환영합니다 !</h2>
		<h2> 회원가입을 마무리 하기 위해 아래의 링크를 클릭해주세요. </h2>
		<a href ="<%= ConfigCode.DOMAIN %>/member/user/joinimpl/${authPath}">회원가입 완료</a>
	</c:if>
	
	<c:if test="${comId != null}">
		<h2>반갑습니다. ${comId} 님,</h2>
		<h2> BeMyFreinds 사이트에 가입하신 것을 환영합니다 !</h2>
		<h2> 회원가입을 마무리 하기 위해 아래의 링크를 클릭해주세요. </h2>
		<a href ="<%= ConfigCode.DOMAIN %>/member/company/joinimpl/${authPath}">회원가입 완료</a>
	</c:if>
	
</body>
</html>

