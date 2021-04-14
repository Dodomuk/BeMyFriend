// JS 전역변수로 설정
	let idCheckFlg = false;
	
	
// 회원가입시에 기존에 있는 아이디인지 확인을 위해 필요한 메소드
	let idCheck = () => {
		
		let headerObj = new Headers();
		headerObj.append('content-type', "application/x-www-form-urlencoded");
		
		
		// 사용자가 입력한 아이디값을 받아서
		 //id가 userId인 데이터의 value값
		let idCheck = document.querySelector('#idCheck');
		
		
		if(comId.value){ // true일때
			fetch("idcheck?comId=" + comId.value,{
				method: "GET",
				headers: headerObj
				
			}).then(response => response.text()) // then해주면 응답(response)이 넘어옴, 바로 return
			  .then((message)=>{ // message가 넘어올 것
				 console.dir(message);
				if(message == 'available'){
					idCheckFlg = true;
					idCheck.innerHTML = '사용 가능한 아이디 입니다.';
				} else {
					idCheckFlg = false;
					idCheck.innerHTML = '사용 불가능한 아이디 입니다.';
					comId.value="";
				}				
			  }).catch(error => {
				 
				  error.alertMessage();
			  })
		} else {
			alert('아이디를 입력하지 않았습니다.');	
		}
	}

	
	
// 아이디체크와 비밀번호 조합이 잘되었는지 확인하고 비밀번호가 서로 일치하는지 확인하는 js
	if(document.querySelector('#contactForm') != null){
		  document.querySelector('#contactForm').addEventListener('submit',(e) => {
			     //  요소의 아이디로 엘리먼트 객체 호출 가능(웹표준이 아님)    
			      if(!idCheckFlg){
			         alert("아이디 중복검사를 통과하지 못했습니다.");
			         comId.value = "";
			         e.preventDefault();
			      }
			      
			      let password = comPw.value;
			      let regExp = /^(?!.*[ㄱ-힣])(?=.*\W)(?=.*\d)(?=.*[a-zA-Z])(?=.{8,})/;
			     
			      if(!(regExp.test(password))){
			         //form의 데이터 전송을 막음
			         e.preventDefault();
			         pw_confirm.innerHTML = '비밀번호는 숫자,영문자,특수문자 조합의 8글자 이상이어야 합니다.';
			         comPw.value = '';
			      } else {
			    	  
			    	  let firstPw = comPw.value;
					  let secondPw = checkpw.value;
					  //비밀번호 double check 메소드
					  if(firstPw != secondPw){
						
							document.querySelector("#pw_confirm").innerHTML = '비밀번호가 맞지 않습니다.';
							checkpw.value= ""; //pw의 value값 비워주기
							e.preventDefault(); //데이터전송 막기
						}
				   
			      }
			      
			
			   }); 
	}
	
	 

	
	
	
	
//company 로그인시 사용할 메소드
	let login = () => {
		let paramObj = new Object();
		paramObj.comId = comId.value; //VO의 변수명이랑 같아야 함
		paramObj.comPw = comPw.value;
		
		let headerObj = new Headers();
		headerObj.append("content-type", "application/json"); /*json으로 받기 때문에 Controller에서 @RequestBody로 잡아주어야 함 */
	
		fetch("loginimpl", { /* 해당 url로 아래의 객체를 포함하여 통신요청 */
			method:"post",
			headers:headerObj, 
			body:JSON.stringify(paramObj) /* json으로 문자열로 전환하여 body에 저장 */
		
		}).then(response => { /* 200번대 코드가 넘어오면 ok => true */
			
			if(response.ok){
				return response.text(); /*controller 의 loginimpl에서 return  */	
			}
			throw new AsyncPageError(response.text()); /* 200번코드가 아니면 catch 문으로 ! */
			
		}).then(text => { /* 위의 text() 값이 들어온다.*/
			console.dir(text);
			if(text == 'fail'){
				alert('아이디나 비밀번호를 확인하세요');
				userPw.value="";
				
			}else if(text == 'success'){
				alert('로그인 되었습니다.');
				location.href = "/index";	
			
			}else if(text == 'withdraw'){
				alert('탈퇴한 회원입니다.');
			
			}
		}).catch(error =>{
			error.alertMsg();
			
		});
		
	}
	
	
	
	
	
	

	
	
	
//멤버 탈퇴시 사용하는 메소드
	let withdraw = () =>{
		let result = confirm("정말 탈퇴하시겠습니까 ?");
		
		if(result){
			console.dir(comId.value);
			
			let headerObj = new Headers();
			headerObj.append("content-type", "application/x-www-form-urlencoded");
			
			fetch("withdraw?comId="+comId.value, {
				method:"GET",
				headers:headerObj			
				
			}).then(response => {
				console.dir(response);
				if(response.ok){
					return response.text();
				}
				throw new AsyncPageError(response.text());
			}).then((text) => {
				if(text == 'success'){
					alert('회원탈퇴가 완료되었습니다.');
					location.href = "/index";
				
				}else{
					alert('회원탈퇴 중 오류가 발생하였습니다. 다시 시도해주세요.');
				}
			})

		}
	}
	
	

	
//User 정보 수정시 사용
	
	if(document.querySelector('.updateform') != null){
		  document.querySelector('.updateform').addEventListener('submit',(e) => {			      
			      
			      let password = comPw.value;
			      let regExp = /^(?!.*[ㄱ-힣])(?=.*\W)(?=.*\d)(?=.*[a-zA-Z])(?=.{8,})/;
			
			      if(password == ''){
			    	  e.preventDefault();
				      pw_check.innerHTML = '비밀번호를 입력해주세요.';
				      
			      }else{
			    	  
				      if(!(regExp.test(password))){
				         //form의 데이터 전송을 막음
				         e.preventDefault();
				         pw_confirm.innerHTML = '비밀번호는 숫자,영문자,특수문자 조합의 8글자 이상이어야 합니다.';
				         comPw.value = '';
				      } else {
				    	  
				    	  let firstPw = comPw.value;
						  let secondPw = checkpw.value;
						  //비밀번호 double check 메소드
						  if(firstPw != secondPw){
							
								document.querySelector("#pw_confirm").innerHTML = '비밀번호가 맞지 않습니다.';
								checkpw.value= ""; //pw의 value값 비워주기
								e.preventDefault(); //데이터전송 막기
							}
				      }    
			      }
			 }); 
		}
	
	

	//User 주소 알림
	  function addressInfo(e) {
		  var 서울특별시 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
		  var 경기도= ["1","2"];
		  var 강원도= ["1","2"];
		  var 인천광역시= ["1","2"];
		  var 충청남도= ["1","2"];
		  var 충청북도= ["1","2"];
		  var 대전광역시= ["1","2"];
		  var 세종특별시= ["1","2"];
		  var 전라남도= ["1","2"];
		  var 전라북도= ["1","2"];
		  var 광주광역시= ["1","2"];
		  var 경상남도= ["1","2"];
		  var 경상북도= ["1","2"];
		  var 부산광역시= ["1","2"];
		  var 대구광역시= ["1","2"];
		  var 울산광역시= ["1","2"];
		  var 제주특별자치도= ["1","2"];
		  

		  let target = document.getElementById("twoAdd");
		  document.getElementById("twoAdd").style.display="inline";
		  
		  
		  if(e.value == "서울특별시") var d = 서울특별시;
		  else if(e.value == "경기도") var d = 경기도;
		  else if(e.value == "인천광역시") var d = 인천광역시;
		  else if(e.value == "강원도") var d = 강원도;
		  else if(e.value == "충청남도") var d = 충청남도;
		  else if(e.value == "충청북도") var d = 충청북도;
		  else if(e.value == "대전광역시") var d = 대전광역시;
		  else if(e.value == "세종특별시") var d = 세종특별시;
		  else if(e.value == "전라남도") var d = 전라남도;
		  else if(e.value == "전라북도") var d = 전라북도;
		  else if(e.value == "광주광역시") var d = 광주광역시;
		  else if(e.value == "경상남도") var d = 경상남도;
		  else if(e.value == "경상북도") var d = 경상북도;
		  else if(e.value == "부산광역시") var d = 부산광역시;
		  else if(e.value == "대구광역시") var d = 대구광역시;
		  else if(e.value == "울산광역시") var d = 울산광역시;
		  else if(e.value == "제주특별자치도") var d = 제주특별자치도;
		  
		  target.options.length = 0;
		  
		  for(x in d){
			  var opt = document.createElement("option");
			  opt.value= d[x];
			  opt.innerHTML = d[x];
			  target.appendChild(opt);
		  }
	  }
