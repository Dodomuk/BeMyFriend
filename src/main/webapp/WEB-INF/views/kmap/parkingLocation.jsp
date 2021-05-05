<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>


  <!-- 팝업팝업 -->
  <!-- <body onload = "javascript:popup()"> -->

   <!-- 
    
	<div class="hero-wrap js-fullheight"
		style=" background-image: url('../../../../resources/images/bg_8.jpg'); "
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-11 ftco-animate text-center">
					<h1 class="mb-4">캘린더 맵</h1>
				</div>
			</div>
		</div>
	</div>
	
	 -->

	<section class="ftco-section bg-light ftco-no-pt ftco-intro">
		<div class="container" style="color:black">
			<div class="row justify-content-center pb-2">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h2>선택한 회사 주차장 위치 확인</h2>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 justify-content-center table">
					<table style="text-align: center">
						       <thead>
						           <tr>
						               <th style="width: 10%; height:20%;"><span>회사 이름</span></th>
						               <th style="width: 50%;"><span>회사 주소</span></th>
						               <th style="width: 10%;"><span>회사 번호</span></th>
						               <th style="width: 30%;">선택</th>
						           </tr>
						       </thead>
						       <tbody>
						       <c:forEach items="${kmapList}" var="kmap">
						           <tr>
						               <td>${kmap.comName}</td>
						               <td>${kmap.comAddress}</td>
						               <td>${kmap.comTell}</td>
						               <td><input type="radio" name="company_address" value="${kmap.comAddress}"></td>
						           </tr>
						        </c:forEach>
						       </tbody>
						    </table>
						    <br>
						    <button id="parkingBtn" type="button" class="btn btn-success btn-block" style="font-size:30px">주변 주차장 확인</button>
					</div>
					<div id="map" style="width:100%;height:350px;"></div>
					
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2f762ca58e04e30355c1fe779c61ff72&libraries=services"></script>
					<script>
					
					
					$("#parkingBtn").click(function () {   
					    // 라디오 버튼 value 가져오기   
					    var companyAddress = $('input[name="company_address"]:checked').val();
					    
					    console.log(companyAddress);
					    
					    
					 // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
					 var infowindow = new kakao.maps.InfoWindow({zIndex:1});
					
					 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					     mapOption = {
					         center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
					         level: 3 // 지도의 확대 레벨
					     };  
					
					 // 지도를 생성합니다    
					 var map = new kakao.maps.Map(mapContainer, mapOption);
					     
					     // 주소-좌표 변환 객체를 생성합니다
					 var geocoder = new kakao.maps.services.Geocoder();
					
					 // 주소로 좌표를 검색합니다
					 geocoder.addressSearch(companyAddress, function(result, status) {
					
					     // 정상적으로 검색이 완료됐으면 
					      if (status === kakao.maps.services.Status.OK) {
					
					         var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					
					         // 결과값으로 받은 위치를 마커로 표시합니다
					         var marker = new kakao.maps.Marker({
					             map: map,
					             position: coords
					         });
					
					         // 인포윈도우로 장소에 대한 설명을 표시합니다
					         var infowindow = new kakao.maps.InfoWindow({
					             content: '<div style="width:150px;text-align:center;padding:6px 0;">선택한 회사</div>'
					         });
					         infowindow.open(map, marker);
					
					         // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					         map.setCenter(coords);
					     } 
					     // 장소 검색 객체를 생성합니다
					 var ps = new kakao.maps.services.Places(map); 
					     // 카테고리로 은행을 검색합니다
					 ps.categorySearch('PK6', placesSearchCB, {useMapBounds:true}); 
					     
					     // 키워드 검색 완료 시 호출되는 콜백함수 입니다
					 function placesSearchCB (data, status, pagination) {
					     if (status === kakao.maps.services.Status.OK) {
					         for (var i=0; i<data.length; i++) {
					             displayMarker(data[i]);    
					         }       
					     }
					 }
					     
					     // 지도에 마커를 표시하는 함수입니다
					 function displayMarker(place) {
					     // 마커를 생성하고 지도에 표시합니다
					     var marker = new kakao.maps.Marker({
					         map: map,
					         position: new kakao.maps.LatLng(place.y, place.x) 
					     });
					
					     // 마커에 클릭이벤트를 등록합니다
					     kakao.maps.event.addListener(marker, 'click', function() {
					         // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
					         infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
					         infowindow.open(map, marker);
					     });
					 }
					     
					 });
					
					
					
					
					
					
					
					
					});
					</script>	
			</div>
		</div>
	</section>
	
  
<!-- whalee js -->
<script src="../resources/js/whaleeTest.js"></script>
<!-- 결제 모듈 js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

  </body>
</html>