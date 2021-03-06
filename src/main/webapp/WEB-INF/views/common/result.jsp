<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp"%>
<body>
	
	<script type="text/javascript">
		let context = "${context}";
		
		<c:if test="${alertMsg != null}">
			alert("${alertMsg}");
		</c:if>
		
		<c:if test="${back != null}">
			history.back();
		</c:if>
	
		<c:if test="${url != null}">
			location.href = context + '${url}';		
		</c:if>
		
		<c:if test= "${close != null}">
			window.close();
		</c:if>
	</script>
</body>
</html>

