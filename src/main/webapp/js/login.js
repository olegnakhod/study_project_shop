function loginRegisterSwitch() {
	$('form').animate({
		height: "toggle",
		opacity: "toggle"
	}, "slow");
}

$('.message a').click(function() {
	loginRegisterSwitch();
});


$('button.register').click(function() {
	let firstName = $("form.register-form input.firstName").val();
	let lastName = $("form.register-form input.lastName").val();
	let email = $("form.register-form input.email").val();
	let password = $("form.register-form input.password").val();
	let cpassword = $("form.register-form input.cpassword").val();
	if (firstName == '' || lastName == '' || email == '' || password == '' || cpassword == '') {
		alert("Please fill all fields...!!!!!!");
	} else if ((password.length) < 8) {
		alert("Password should atleast 8 character in length...!!!!!!");
	} else if (!(password).match(cpassword)) {
		alert("Your passwords don't match. Try again?");
	} else {
		let userObj = {
			firstName: firstName,
			lastName: lastName,
			email: email,
			password: password
		};
		$.post("registration", userObj, function(data) {
			if (data == 'Sucsess') {
				$("form")[0].reset();
				$("form")[1].reset();
				loginRegisterSwitch();
			}
		});
	}
});

$('button.login').click(function() {
	let email = $('form.login-form input.email').val();
	let password = $('form.login-form input.password').val();
	if (email == '' || password == '') {
		alert("Please fill all fields...!!!!!!");
	}
	let userLogin = {
		email: email,
		password: password
	};
	$.post("login", userLogin, function(data) {
		if (data !== '') {
			let customUrl = '';
			let urlContent = window.location.href.split('/');
			for (let i = 0; i < urlContent.length - 1; i++) {
				customUrl += urlContent[i] + '/'
			}
			customUrl += data.destinationUrl;
			window.location = customUrl;
		}
		$("form")[1].reset();
	});
});

