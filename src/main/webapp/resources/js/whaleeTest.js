/**
 * 
 */

function popup(){
    var url = "/popup";
    var name = "popup test";
    var option = "width = 500, height = 500, top = 100, left = 200, location = no"
    window.open(url, name, option);
}

function payment() {
	var IMP = window.IMP; // 생략가능
	IMP.init('imp44886566'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	
	IMP.request_pay({
	    pg : 'inicis', // version 1.1.0부터 지원.
    	pay_method : 'card',
    	merchant_uid : 'merchant_' + new Date().getTime(),
    	name : 'BeMyFriend 멤버쉽 결제',
    	amount : 100,
    	buyer_email : 'iamport@siot.do',
    	buyer_name : '구매자이름',
   	 	buyer_tel : '010-1234-5678',
   	 	buyer_addr : '서울특별시 강남구 삼성동',
    	m_redirect_url : 'https://www.yourdomain.com/payments/complete'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        //msg += '고유ID : ' + rsp.imp_uid;
	        //msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        //msg += '카드 승인번호 : ' + rsp.apply_num;
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
	
	
}
