function localReview() {
	//变量
	var username = document.getElementById("username").value;
	var pwd = document.getElementById("pwd").value;
	var repwd = document.getElementById("repwd").value;
	var loc = document.getElementById("loc").value;
	var website = document.getElementById("website").value;
	var email = document.getElementById("email").value;
	var legalre = document.getElementById("legalre").value;
	var poscode = document.getElementById("poscode").value;
	var ereg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	var wreg = /^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+)\.)+([A-Za-z0-9-~\/])+$/;
	
	//函数
	//判断是否有空的输入框
	if(username == "") {
		alert("机构名称不能为空！");
		document.getElementById("username").focus();
		return false;
	}
	
	if(pwd == "") {
		alert("密码不能为空！");
		document.getElementById("pwd").focus();
		return false;
	}
	
	if(repwd == "") {
		alert("确认密码不能为空！");
		document.getElementById("repwd").focus();
		return false;
	}
	
	if(loc == "") {
		alert("通讯地址不能为空！");
		document.getElementById("loc").focus();
		return false;
	}
	
	if(website == "") {
		alert("单位网址不能为空！");
		document.getElementById("website").focus();
		return false;
	}
	
	if(email == "") {
		alert("电子邮箱不能为空！");
		document.getElementById("email").focus();
		return false;
	}
	
	if(legalre == "") {
		alert("法人代表不能为空！");
		document.getElementById("legalre").focus();
		return false;
	}
	
	if(poscode == "") {
		alert("邮政编码不能为空！");
		document.getElementById("poscode").focus();
		return false;
	}
	
	//一些限制条件
	if(pwd != repwd) {
		alert("两次密码输入不相等，请重新输入！");
		document.getElementById("repwd").focus();
		return false;
	}
	
	if(isNaN(poscode)) {
		alert("邮政编码必须都是数字，请重新输入！");
		document.getElementById("poscode").focus();
		return false;
	}
	
	if(poscode.length != 6){
		alert("邮政编码位数不正确，请重新输入！");
		document.getElementById("poscode").focus();
		return false;
	}
	
	if(!wreg.test(website)) {
		alert("单位网址格式不正确，请重新输入！");
		document.getElementById("website").focus();
		return false;
	}
	
	if(!ereg.test(email)) {
		alert("电子邮箱格式不正确，请重新输入！");
		document.getElementById("email").focus();
		return false;
	}
	
	return true;
}

function p1_blank() {
	var username = document.getElementById("username").value;
	
	if(username == "") {
		document.getElementById("p1").innerText = "*用户名不能为空";
	} else {
		document.getElementById("p1").innerText = "  ";
	}
}

function p2_blank() {
	var pwd = document.getElementById("pwd").value;
	
	if(pwd == "") {
		document.getElementById("p2").innerText = "*密码不能为空";
	} else {
		document.getElementById("p2").innerText = "  ";
	}
}

function p3_blank() {
	var repwd = document.getElementById("repwd").value;
	
	if(repwd == "") {
		document.getElementById("p3").innerText = "*重复密码不能为空";
	} else {
		document.getElementById("p3").innerText = "  ";
	}
}

function p4_blank() {
	var loc = document.getElementById("loc").value;
	
	if(loc == "") {
		document.getElementById("p4").innerText = "*通信地址不能为空";
	} else {
		document.getElementById("p4").innerText = "  ";
	}
}

function p5_blank() {
	var website = document.getElementById("website").value;
	
	if(website == "") {
		document.getElementById("p5").innerText = "*单位网址不能为空";
	} else {
		document.getElementById("p5").innerText = "  ";
	}
}

function p6_blank() {
	var email = document.getElementById("email").value;
	
	if(email == "") {
		document.getElementById("p6").innerText = "*电子邮箱不能为空";
	} else {
		document.getElementById("p6").innerText = "  ";
	}
}

function p7_blank() {
	var legalre = document.getElementById("legalre").value;
	
	if(legalre == "") {
		document.getElementById("p7").innerText = "*法人代表不能为空";
	} else {
		document.getElementById("p7").innerText = "  ";
	}
}

function p8_blank() {
	var poscode = document.getElementById("poscode").value;
	
	if(poscode == "") {
		document.getElementById("p8").innerText = "*邮政编码不能为空";
	} else {
		document.getElementById("p8").innerText = "  ";
	}
}

function cancel() {
	var result = confirm("是否取消修改个人信息？");
	
	if(result) {
		window.location.href = "index.jsp";
	}
}