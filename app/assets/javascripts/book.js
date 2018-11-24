
	function myfunction() {
		
		 var nameInput = document.getElementById('name').value;
		 var emailInput = document.getElementById('email').value;
		 var passwordInput = document.getElementById('password').value;

		 var nameRegExp = /^([\w]{3,})$/;
		 var emailRegExp = /([\w\s]+.+)@([\w\s]+)([\.])([\w]{2,5})/;
		 var passwordRegExp =/^[a-zA-Z]\w{3,14}$/;

		 var nameTest = nameRegExp.test(nameInput);
		 var emailTest = emailRegExp.test(emailInput);
		 var passwordTest = passwordRegExp.test(passwordInput);
		 

		 if(nameTest && emailTest && passwordTest){
		 	alert("successfully registered")
		 }else{
		 	
		 	if(!emailTest){
		 		alert("invalid email");
		 	}
		 	if(!passwordTest){
		 		alert("Invalid Password")
		 	}
		 	if(!nameTest){
		 		alert("Invalid Name")
		 	}

		 	else{
		 		alert("invalid credentials");
		 	}
	}




