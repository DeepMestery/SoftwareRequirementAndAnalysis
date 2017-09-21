function localReview() {
	//变量
	var username = document.getElementById("username").value;
	var userpassword = document.getElementById("userpassword").value;
	var repassword = document.getElementById("repassword").value;
	var agencyname = document.getElementById("agencyname").value;
	var realname = document.getElementById("realname").value;
	var id = document.getElementById("id").value;
	
	//函数
	//判断是否有空的输入框
	if(username == "") {
		alert("用户名不能为空！");
		document.getElementById("username").focus();
		return false;
	}
	
	if(userpassword == "") {
		alert("用户密码不能为空！");
		document.getElementById("userpassword").focus();
		return false;
	}
	
	if(repassword == "") {
		alert("验证密码不能为空！");
		document.getElementById("repassword").focus();
		return false;
	}
	
	if(agencyname == "") {
		alert("机构全称不能为空！");
		document.getElementById("agencyname").focus();
		return false;
	}
	
	if(realname == "") {
		alert("真实姓名不能为空！");
		document.getElementById("realname").focus();
		return false;
	}
	
	if(id == "") {
		alert("身份证号不能为空！");
		document.getElementById("id").focus();
		return false;
	}
	
	//一些限制条件
	if(userpassword.length<6 ||userpassword.length>20) {
		alert("输入的密码长度错误，密码应为6-20位的由数字和字母组成！！");
		document.getElementById("userpassword").focus();
		return false;
	}
	
	var flag1 = 0;
	var flag2 = 0;
	
	for(var i = 0;i<userpassword.length;i++) {
		if(userpassword[i]>='0' && userpassword[i]<='9') {
			flag1 = 1;
		} else if((userpassword[i]>='a'&&userpassword[i]<='z')||(userpassword[i]>='A'&&userpassword[i]<='Z')) {
			flag2 = 1;
		}
		
		if(flag1 == 1 && flag2 == 1) {
			break;
		}
		
	}
	
	if(flag1 == 0 || flag2 == 0) {
		alert("输入的密码格式错误，密码应为6-20位的由数字和字母组成！！");
		document.getElementById("userpassword").focus();
		return false;
	}
	
	if(userpassword != repassword) {
		alert("两次密码输入不相等，请重新输入！");
		document.getElementById("repassword").focus();
		return false;
	}
	
	if(id.length != 18  && id.length != 16) {
		alert("身份证长度不对！")
		document.getElementById("id").focus();
		return false;
	}
	
	if(id.length == 16) {
		for(var i = 0;i<id.length;i++) {
			if(id[i]>='0'&&id[i]<='9') {
				continue;
			} else {
				alert("身份证格式不正确！");
				document.getElementById("id").focus();
				return false;
			}
		}
	} else if(id.length == 18) {
		for(var i = 0;i<id.length-1;i++) {
			if(id[i]>='0'&&id[i]<='9') {
				continue;
			} else {
				alert("身份证格式不正确！");
				document.getElementById("id").focus();
				return false;
			}
		}
		
		if((id[17] >= '0' && id[17] <= '9')||id[17] == "x") {
			
		} else {
			alert("身份证格式不正确！");
			document.getElementById("id").focus();
			return false;
		}
	}
	
	return true;
}

function p1_blank() {
	var username = document.getElementById("username").value;
	var p1 = document.getElementById("p1");
	
	if(username == "") {
		p1.style.visibility = "visible";
	} else {
		p1.style.visibility = "hidden";
	}
}

function p2_blank() {
	var userpassword = document.getElementById("userpassword").value;
	var p2 = document.getElementById("p2");
	
	if(userpassword == "") {
		p2.style.visibility = "visible";
	} else {
		p2.style.visibility = "hidden";
	}
}

function p3_blank() {
	var repassword = document.getElementById("repassword").value;
	var p3 = document.getElementById("p3");
	
	if(repassword == "") {
		p3.style.visibility = "visible";
	} else {
		p3.style.visibility = "hidden";
	}
}

function p4_blank() {
	var agencyname = document.getElementById("agencyname").value;
	var p4 = document.getElementById("p4");
	
	if(agencyname == "") {
		p4.style.visibility = "visible";
	} else {
		p4.style.visibility = "hidden";
	}
}

function p5_blank() {
	var realname = document.getElementById("realname").value;
	var p5 = document.getElementById("p5");
	
	if(realname == "") {
		p5.style.visibility = "visible";
	} else {
		p5.style.visibility = "hidden";;
	}
}

function p6_blank() {
	var id = document.getElementById("id").value;
	var p6 = document.getElementById("p6");
	
	if(id == "") {
		p6.style.visibility = "visible";
	} else {
		p6.style.visibility = "hidden";
	}
}

function cancel() {
	var result = confirm("是否取消注册，离开此页面？");
	
	if(result) {
		parent.location = "../login.html";
	}
}