<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
<html>

<body>
	<video id="html5Video" controls="true" preload="auto"
		autoplay="autoplay" width="100%" height="100%"
		controlslist="nodownload">

		<source
			src="http://sldict.korean.go.kr/multimedia/multimedia_files/convert/20191007/625090/MOV000248444_700X466.webm"
			type="video/webm">
		<source
			src="http://sldict.korean.go.kr/multimedia/multimedia_files/convert/20191007/625090/MOV000248444_700X466.mp4"
			type="video/mp4">
		<source
			src="http://sldict.korean.go.kr/multimedia/multimedia_files/convert/20191007/625090/MOV000248444_700X466.ogv"
			type="video/ogv">

	</video>
	
	<span>당황하지 마세욥 이거슨 테스트</span>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="../resources/js/google-map.js"></script>
</body>
</html>