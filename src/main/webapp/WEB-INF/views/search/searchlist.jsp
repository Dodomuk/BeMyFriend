<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/head.jsp"%>

  <style type="text/css">

	.paging{
		width:30vw;
		position:relative;
		left:50vw;
		transform:translateX(-50%);
		display: flex;
		justify-content:space-around;
		font-size: x-large;
	}
</style>
  <body>
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span></p>
            <h1 class="mb-0 bread">검색결과</h1>
          </div>
        </div>
      </div>
    </section>


	 <!-- 채용정보 검색 section -->
    
     <section class="ftco-sections ftco-degree-bg">
      <div class="container">
        <div class="row search_row">
           <!-- .col-md-8 -->
          <div class="col-lg-8 sidebar pl-lg-5 ftco-animate">
            <div class="sidebar-box">
              <form action="${context}/search/searchkeyword?searchType=${searchType.value}&keyword=${keyword.value}" Method="GET" class="recru_search-form">
                <div class="form-group">
                  <div class="search_box">
                  	<select class="col-md-2" id="searchType" name="searchType">
                  		<option value="searchTotal">전체</option>
                  		<option value="searchDuty">직무별</option>
                  		<option value="searchPlace">지역별</option>
                  		<option value="searchCom">기업별</option>
                  		<option value="searchExp">경력별</option>
                 	 </select>
                  	<input type="text" class="form-control col-md-8" id="keyword" name="keyword" placeholder="검색어를 입력하세요." autocomplete="off">
                  	<button type="submit" class="recru_search_btn fa fa-search col-md-2">검색</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>


    <section class="ftco-section bg-light">
			<div class="container">
				<div class="row">
					
				
					<c:forEach items="${searchList}" var="CompanyHire">
						
						<div class="col-md-6 col-lg-3 ftco-animate"  onClick="location.href='/recruitment/recruitmentView?view=${CompanyHire.jobNo}&&comId=${CompanyHire.comId}'">
							<div class="staff">
								<div class="img-wrap d-flex align-items-stretch" >
								<div class="img align-self-stretch" style="background-image: url(../../../../resources/images/resume7.png);"></div>
							</div>
								<div class="text pt-3 px-3 pb-4 text-center">
									<h3>${comMember.comName}</h3>
									<span class="position mb-2">${CompanyHire.jobTitle}</span>
									<div class="faded">
										<p>${CompanyHire.jobLocation}</p>
										<ul class="ftco-social text-center">
						              	</ul>
					             	 </div>
								</div>
							</div>
						</div>
					</c:forEach>
										
				</div>
			</div>
		</section>
    	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
  </body>
</html>