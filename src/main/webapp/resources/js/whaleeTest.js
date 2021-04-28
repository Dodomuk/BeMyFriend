/**
 * 
 */

function popup(){
	var cookieCheck = getCookie("popupYN");
	if(cookieCheck != "N"){
		var url = "/popup";
    	var name = "popup test";
    	var option = "width = 400, height = 550, top = 100, left = 200, location = no"
    	window.open(url, name, option);
	}
    
}

function getCookie(name){
	var cookie = document.cookie;
	
	if(document.cookie != ""){
		var cookie_array = cookie.split("; ");
		
		for(var index in cookie_array){
			var cookie_name = cookie_array[index].split("=");
			
			if(cookie_name[0] == "popupYN"){
				return cookie_name[1];
			}
		}
	}
	
	return ;
}

function setCookie(name, value, expiredays){
	var date = new Date();
	date.setDate(date.getDate() + expiredays);
	document.cookie = escape(name) + "=" + escape(value) + "; expires=" + date.toUTCString();
}

function closePopup(){
	if(document.getElementById("check").value){
		setCookie("popupYN", "N", 1);
		self.close();
	}
}




function payment(memberValue) {
	
	var amountVal = 50;
	var resultVal = 0;
	
	if(memberValue == 'gold'){
		amountVal = 100;
		resultVal = 1;
	}else if(memberValue == 'platinum'){
		amountVal = 200;
		resultVal = 2;
	}else if(memberValue == 'dia'){
		amountVal = 300;
		resultVal = 3;
	}
	
	
	var IMP = window.IMP; // 생략가능
	IMP.init('imp44886566'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	
	IMP.request_pay({
	    pg : 'inicis', // version 1.1.0부터 지원.
    	pay_method : 'card',
    	merchant_uid : 'merchant_' + new Date().getTime(),
    	name : 'BeMyFriend 멤버쉽 결제',
    	amount : amountVal,
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

			location.href = "member/company/membership?resultValue="+resultVal;
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
	
	
}
