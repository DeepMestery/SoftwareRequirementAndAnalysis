function localReview() {
	var listagencyname = document.getElementsByName("listagencyname")[0];
	var belong = document.getElementsByName("belong")[0];
	var loc = document.getElementsByName("loc")[0];
	var place = document.getElementsByName("place")[0];
	var website = document.getElementsByName("website")[0];
	var email = document.getElementsByName("email")[0];
	var represent = document.getElementsByName("represent")[0];
	var postcode = document.getElementsByName("postcode")[0];
	var linkperson = document.getElementsByName("linkperson")[0];
	var phone = document.getElementsByName("phone")[0];
	var telephone = document.getElementsByName("telephone")[0];
	var fax = document.getElementsByName("fax")[0];
	
	var MEtype = document.getElementsByName("MEtype");
	
	var ta1 = document.getElementsByName("ta1")[0];
	var jsxqname = document.getElementsByName("jsxqname")[0];
	var xqlimit1 = document.getElementsByName("xqlimit1")[0];
	var xqlimit2 = document.getElementsByName("xqlimit2")[0];
	var ta2 = document.getElementsByName("ta2")[0];
	var ta3 = document.getElementsByName("ta3")[0];
	var ta4 = document.getElementsByName("ta4")[0];
	var keyword1 = document.getElementsByName("keyword1")[0];
	var keyword2 = document.getElementsByName("keyword2")[0];
	var keyword3 = document.getElementsByName("keyword3")[0];
	var keyword4 = document.getElementsByName("keyword4")[0];
	var keyword5 = document.getElementsByName("keyword5")[0];
	
	var allmoney = document.getElementsByName("allmoney")[0];
	var resolution = document.getElementsByName("resolution");
	var workwith = document.getElementsByName("workwith")[0];
	var TAtype = document.getElementsByName("TAtype");
	
	var subject1 = document.getElementsByName("subject1")[0];
	var subject2 = document.getElementsByName("subject2")[0];
	var subject3 = document.getElementsByName("subject3")[0];

	var DTfield = document.getElementsByName("DTfield");
	var industry1 = document.getElementsByName("industry1")[0];
	var industry2 = document.getElementsByName("industry2")[0];
	var industry3 = document.getElementsByName("industry3")[0];
	var industry4 = document.getElementsByName("industry4")[0];
	
	if(listagencyname.value == "") {
		alert("机构全称不能为空！");
		return false;
	}

	if(loc.value == "") {
		alert("通讯地址不能为空！");
		return false;
	}

	if(place.value == "请选择所在地区") {
		alert("所在地域不能为空！");
		return false;
	}

	if(email.value == "") {
		alert("电子邮箱不能为空！");
		return false;
	}
	
	var isemail = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	if(!isemail.test(email.value)) {
		alert("电子邮箱格式不正确！");
		return false;
	}

	if(represent.value == "") {
		alert("法人代表不能为空！");
		return false;
	}
	
	if(linkperson.value == "") {
		alert("联系人不能为空！");
		return false;
	}
	
	if(telephone.value == "") {
		alert("手机号码不能为空！");
		return false;
	}
	
	var istelephone = /^((\+?86)|(\(\+86\)))?(13[012356789][0-9]{8}|15[012356789][0-9]{8}|18[02356789][0-9]{8}|147[0-9]{8}|1349[0-9]{7})$/;
	if(!istelephone.test(telephone.value)) {
		alert("手机号码格式不正确！");
		return false;
	}
	
	var flag = 0;
	for(var i = 0;i<MEtype.length;i++) {
		if(MEtype[i].checked) {
			flag = 1;
			break;
		}
	}
	
	if(flag == 0) {
		alert("机构属性不能为空！");
		return false;
	}

	if(ta1.value == "") {
		alert("机构简介不能为空！");
		return false;
	}

	if(jsxqname.value == "") {
		alert("技术需求名称不能为空！");
		return false;
	}

	if(xqlimit1.value == "") {
		alert("需求时限上限不能为空！");
		return false;
	}
	
	if(xqlimit1.value.length != 4) {
		alert("需求时限上限格式有误！");
		return false;
	}

	for(var i = 0;i<xqlimit1.value.length;i++) {
		if(xqlimit1.value[i]<'0' || xqlimit1.value[i]>'9') {
			alert("需求时限上限格式有误！");
			return false;
		}
	}
	
	if(xqlimit2.value == "") {
		alert("需求时限下限不能为空！");
		return false;
	}
	
	if(xqlimit2.value.length != 4) {
		alert("需求时限下限格式有误！");
		return false;
	}

	for(var i = 0;i<xqlimit2.value.length;i++) {
		if(xqlimit2.value[i]<'0' || xqlimit2.value[i]>'9') {
			alert("需求时限下限格式有误！");
			return false;
		}
	}

	if(parseInt(xqlimit1.value) > parseInt(xqlimit2.value)) {
		alert("需求时限上限年份应该小于下限年份！");
		return false;
	}
	
	if(parseInt(xqlimit2.value)<2016) {
		alert("需求时限下限的年份应该大于等于当前年份！");
		return false;
	}
	
	
	if(ta2.value == "") {
		alert("主要问题不能为空！");
		return false;
	}

	if(ta3.value == "") {
		alert("技术关键不能为空！");
		return false;
	}

	if(ta4.value == "") {
		alert("预期目标不能为空！");
		return false;
	}

	if(keyword1.value == "") {
		alert("关键字不能为空！");
		return false;
	}
	
	flag = 0;
	for(var i = 0;i<resolution.length;i++) {
		if(resolution[i].checked) {
			flag = 1;
			break;
		}
	}
	
	if(flag == 0) {
		alert("技术需求解决方案不能为空！");
		return false;
	}

	var TA = "";
	flag = 0;
	for(var i = 0;i<TAtype.length;i++) {
		if(TAtype[i].checked) {
			flag = 1;
			TA = TAtype[i].value;
			break;
		}
	}
	
	if(flag == 0) {
		alert("科技活动类型不能为空！");
		return false;
	}
	
	if(TA == "基础研究") {
		if(subject1.value == "学科一级代码") {
			alert("学科一级代码不能为空！");
			return false;
		}
		if(subject2.value == "学科二级代码") {
			alert("学科二级代码不能为空！");
			return false;
		}
		if(subject3.value == "学科三级代码") {
			alert("学科三级代码不能为空！");
			return false;
		}
		
		flag = 0;
		for(var i = 0;i<DTfield.length;i++) {
			if(DTfield[i].checked) {
				flag = 1;
				break;
			}
		}
		
		if(flag == 1) {
			alert("若选择基础研究，需求技术所属领域必须为空！");
			return false;
		}
		
		if(industry1.value != "技术行业一级代码") {
			alert("技术行业代码必须为空！");
			return false;
		}
	} else {
		flag = 0;
		for(var i = 0;i<DTfield.length;i++) {
			if(DTfield[i].checked) {
				flag = 1;
				break;
			}
		}
		
		if(flag == 0) {
			alert("需求技术所属领域不能为空！");
			return false;
		}
		
		if(industry1.value == "技术行业一级代码") {
			alert("技术行业一级代码不能为空！");
			return false;
		}
		if(industry2.value == "技术行业二级代码") {
			alert("技术行业二级代码不能为空！");
			return false;
		}
		if(industry3.value == "技术行业三级代码") {
			alert("技术行业三级代码不能为空！");
			return false;
		}
		if(industry4.value == "技术行业四级代码") {
			alert("技术行业四级代码不能为空！");
			return false;
		}
		

		if(subject1.value != "学科一级代码") {
			alert("若选择非基础研究，学科代码必须为空！");
			return false;
		}
	}
	
	var con = confirm("需求信息审核后不能修改！确定提交吗？");
	if(con == true) {
		return true;
	} else 
		return false;
}

function remind() {
	var con = confirm("重置将会清空技术需求信息，是否要重置？");
	
	if(con) {
		return true;
	} else {
		return false;
	}
}

function key2_able() {
	var keyword1 = document.getElementById("keyword1").value;
	
	if(keyword1 != "") {
		document.getElementById("keyword2").disabled = false;
	} else {
		document.getElementById("keyword2").value = "";
		document.getElementById("keyword2").disabled = true;
		document.getElementById("keyword3").value = "";
		document.getElementById("keyword3").disabled = true;
		document.getElementById("keyword4").value = "";
		document.getElementById("keyword4").disabled = true;
		document.getElementById("keyword5").value = "";
		document.getElementById("keyword5").disabled = true;
	}
}

function key3_able() {
	var keyword2 = document.getElementById("keyword2").value;
	
	if(keyword2 != "") {
		document.getElementById("keyword3").disabled = false;
	} else {
		document.getElementById("keyword3").value = "";
		document.getElementById("keyword3").disabled = true;
		document.getElementById("keyword4").value = "";
		document.getElementById("keyword4").disabled = true;
		document.getElementById("keyword5").value = "";
		document.getElementById("keyword5").disabled = true;
	}
}

function key4_able() {
	var keyword3 = document.getElementById("keyword3").value;
	
	if(keyword3 != "") {
		document.getElementById("keyword4").disabled = false;
	} else {
		document.getElementById("keyword4").value = "";
		document.getElementById("keyword4").disabled = true;
		document.getElementById("keyword5").value = "";
		document.getElementById("keyword5").disabled = true;
	}
}

function key5_able() {
	var keyword4 = document.getElementById("keyword4").value;
	
	if(keyword4 != "") {
		document.getElementById("keyword5").disabled = false;
	} else {
		document.getElementById("keyword5").value = "";
		document.getElementById("keyword5").disabled = true;
	}
}

function hk_jc() {
	document.getElementById("hk_jc").style.display = "";
	document.getElementById("hk_other1").style.display = "none";
	document.getElementById("hk_other2").style.display = "none";
}

function hk_other() {
	document.getElementById("hk_other1").style.display = "";
	document.getElementById("hk_other2").style.display = "";
	document.getElementById("hk_jc").style.display = "none";
}

function WC1() {
	var number = document.getElementById("ta1").value.length;
	var wordnum1 = document.getElementById("wordnum1");
	
	wordnum1.innerHTML = number + "/500";
	
	if(number > 500) {
		wordnum1.style.color = "red";
	} else {
		wordnum1.style.color = "black";
	}
}

function WC_1() {
	var wordnum1 = document.getElementById("wordnum1");
	
	if(wordnum1.style.color == "red") {
		alert("机构简介字数超过限制！");
	}
}

function WC2() {
	var number = document.getElementById("ta2").value.length;
	var wordnum2 = document.getElementById("wordnum2");
	
	wordnum2.innerHTML = number + "/500";
	
	if(number > 500) {
		wordnum2.style.color = "red";
	} else {
		wordnum2.style.color = "black";
	}
}

function WC_2() {
	var wordnum2 = document.getElementById("wordnum2");
	
	if(wordnum2.style.color == "red") {
		alert("主要问题字数超过限制！");
	}
}

function WC3() {
	var number = document.getElementById("ta3").value.length;
	var wordnum3 = document.getElementById("wordnum3");
	
	wordnum3.innerHTML = number + "/500";
	
	if(number > 500) {
		wordnum3.style.color = "red";
	} else {
		wordnum3.style.color = "black";
	}
}

function WC_3() {
	var wordnum3 = document.getElementById("wordnum3");
	
	if(wordnum3.style.color == "red") {
		alert("技术关键字数超过限制！");
	}
}

function WC4() {
	var number = document.getElementById("ta4").value.length;
	var wordnum4 = document.getElementById("wordnum4");
	
	wordnum4.innerHTML = number + "/500";
	
	if(number > 500) {
		wordnum4.style.color = "red";
	} else {
		wordnum4.style.color = "black";
	}
}

function WC_4() {
	var wordnum4 = document.getElementById("wordnum4");
	
	if(wordnum4.style.color == "red") {
		alert("预期目标字数超过限制！");
	}
}
