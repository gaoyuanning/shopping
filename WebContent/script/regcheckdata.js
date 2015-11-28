function checkdata() {
	
	if(!checkUserName(form.username.value.toLowerCase())) {
		return false;
	}
	
	if(strlen(form.password.value) < 6 || strlen(form.password.value) > 18) {
		alert("密码长度为6-18位!");
		form.password.focus();
		return false;
	}
	
	if(form.username.value == form.password.value) {
		alert("用户名与密码不能相同！");
		form.password.focus();
		return false;
	}
	
	if(form.password2.value == "") {
		alert("请输入密码确认");
		form.password2.focus();
		return false;
	}
	
	if(form.password2.value != form.password.value) {
		alert("两次输入的密码不一致！");
		form.password2.focus();
		return false;
	}
	
	if(!checkPhone(form.phone.value)) {
		alert("电话号码格式不正确");
		form.phone.focus();
		return false;
	}
	
	if(form.addr.value == "") {
		alert("地址不能为空");
		form.addr.focus();
		return false;
	}
	
	return true;
}

function checkUserName(name) {
	if(name.length < 3 || name.length > 18) {
		alert("ok");
		form.username.focus();
		return false;
	}
	
	if(isWhiteSpace(form.username.value.toLowerCase())) {
		form.username.focus();
		return false;
	}
	
	if(!isFormatName(form.username.value.toLowerCase())) {
		form.username.focus();
		return false;
	}
	return true;
	
}

function isWhiteSpace(name) {
	var whiteSpace = " \t\n\r";
	var i;
	for(i = 0; i < name.length; i++) {
		var c = name.charAt(i);
		if(whiteSpace.indexOf(c) >= 0) {
			return true;
		}
	}
	return false;
}

function isFormatName(name) {
	var re= /^[0-9a-z][\w-.]*[0-9a-z]$/i;
	if(re.test(name)) {
		return true;
	} else {
		return false;
	}
}

function strlen(str) {
	var i;
	var len;
	len = 0;
	for(i = 0; i < str.length; i++) {
		if(str.charCodeAt(i) > 255) {
			len += 2;
		} else {
			len += 1;
		}	
	}
	
	return len;
}

function checkPhone(phone) {
	var re=/^[0-9]+$/;
	if(re.test(phone)) {
		return true;
	} else {
		return false;
	}
}






