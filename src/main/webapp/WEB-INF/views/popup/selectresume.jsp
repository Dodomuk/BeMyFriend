<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- date 형식을 바꾸기 위한 jstl -->
<jsp:useBean id="now" class="java.util.Date" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="kr">
<%-- 모든 페이지에서 공통적으로 사용할 헤더정보를 담은 헤더태그 --%>
<head>
<title>비 마이 프랜드</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<body>


<h3 style="text-align: center;"> [ 지원할 이력서를 선택하세요 ] </h3><br />

		<c:forEach var="resumeList" items="${resumeList}" begin="0" end="11">
			<form class="col-md-6 col-lg-3 ftco-animate detail_list" style="cursor: pointer;">
				<div class="text pt-3 px-3 pb-4 text-center" id="apply"
						onclick="location.href='/member/user/resume/selectresume?userId=${resumeList.userId}&&resIdx=${resumeList.resIdx}&&jobNo=${jobMap.jobNo}&&jobTitle=${jobMap.jobTitle}'"
						style="background-color: darkseagreen; border: 2px solid; margin-bottom: 5px; text-align: center; color: white;">
					<h4 id="resTitle" >${resumeList.resTitle}</h4>
					<span class="position mb-2" id="user_id" style="display:none">${resumeList.userId}</span> 
				</div>
			</form>
		</c:forEach>




</body>
</html>