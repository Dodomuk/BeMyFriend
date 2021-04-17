//자동저장 기능

/* (function () {
	
	let autoSave = new Object;
	(function (obj){
		obj.configuration = {
		interval: 10 //30초		
		};
		
	obj.bindTimer = function(){
		
		let textEle = document.querySelector('#contactForm');
		let textVal = textEle.value;
		let ref1, ref2, ref3; // Newer -&gt;Older
		
		
		//Save LocalStorage
		let encodedTextVal = btoa(textVal);
		ref1 = window.localStorage.getItem('textval-01');
	      ref2 = window.localStorage.getItem('textval-02');

	      if ((window.localStorage) && (encodedTextVal != ref1)){
	        window.localStorage.setItem('textval-01', encodedTextVal);
	        window.localStorage.setItem('textval-02', ref1);
	        window.localStorage.setItem('textval-03', ref2);
	      }
	      else if (!window.localStorage) {
	        console.log('Error' + ': Your browser not support')
	        return false;
	      }
	    };

	    obj.start = function() {
	      obj.bindTimer();
	      setTimeout(function() {
	        obj.start();
	      }, obj.configuration.interval * 1000);
		
		
	};
		obj.start();	
	})(autoSave);
	
	
	
})() */