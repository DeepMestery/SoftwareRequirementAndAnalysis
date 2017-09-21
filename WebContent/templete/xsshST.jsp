<%@ page language="java" contentType="text/html; charset=utf-8" import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" href = "../css/fillIn.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>形式审核</title>
</head>
<script type="text/javascript">
function back() {
	window.location = "checkFirst.jsp";
}

function TG() {
	var glcs = document.getElementById("glcs").value;
	var jsxqname = document.getElementById("jsxqname").value;
		
	if(glcs == "请选择管理处室") {
		alert("若要通过，提交管理处室不能为空！");
		return false;
	} else {
		var url = "xsshTG.jsp?jsxqname="+jsxqname+"&glcs="+glcs;
		window.location = url;
	}
}

function BTG() {
	var xsshyj = document.getElementById("xsshyj").value;
	var jsxqname = document.getElementById("jsxqname").value;
	
	if(xsshyj == "") {
		alert("若要不通过，审核意见不能为空！");
		return false;
	} else {
		var url = "xsshBTG.jsp?jsxqname="+jsxqname+"&xsshyj="+xsshyj;
		window.location = url;
	}
}
</script>
<body>
<jsp:useBean id="db" class = "bean.JDBConnection" />
<%
	String number = request.getParameter("number");
	String agencyname = "";
	String belong = "";
	String loc = "";
	String place = "";
	String website = "";
	String email = "";
	String represent = "";
	String postcode = "";
	String linkperson = "";
	String phone = "";
	String telephone = "";
	String fax = "";
	String MEtype = "";
	String ta1 = "";
	String jsxqname = "";
	String xqlimit1 = "";
	String xqlimit2 = "";
	String ta2 = "";
	String ta3 = "";
	String ta4 = "";
	String keyword1 = "";
	String keyword2 = "";
	String keyword3 = "";
	String keyword4 = "";
	String keyword5 = "";
	String allmoney = "";
	String resolution = "";
	String workwith = "";
	String TAtype = "";
	String subject1 = "";
	String subject2 = "";
	String subject3 = "";
	String DTfield = "";
	String industry1 = "";
	String industry2 = "";
	String industry3 = "";
	String industry4 = "";
	
	if(db.createConnection() == true) {
		String sql = "select * from listinfo where number = '"+number+"'";
		
		ResultSet rs = db.executeQuery(sql);
		
		while(rs.next()) {
			agencyname = rs.getString(7);
			belong = rs.getString(8);
			loc = rs.getString(9);
			place = rs.getString(10);
			website = rs.getString(11);
			email = rs.getString(12);
			represent = rs.getString(13);
			postcode = rs.getString(14);
			linkperson = rs.getString(15);
			phone = rs.getString(16);
			telephone = rs.getString(17);
			fax = rs.getString(18);
			MEtype = rs.getString(19);
			ta1 = rs.getString(20);
			jsxqname = rs.getString(21);
			xqlimit1 = rs.getString(22);
			xqlimit2 = rs.getString(23);
			ta2 = rs.getString(24);
			ta3 = rs.getString(25);
			ta4 = rs.getString(26);
			keyword1 = rs.getString(27);
			keyword2 = rs.getString(28);
			keyword3 = rs.getString(29);
			keyword4 = rs.getString(30);
			keyword5 = rs.getString(31);
			allmoney = rs.getString(32);
			resolution = rs.getString(33);
			workwith = rs.getString(34);
			TAtype = rs.getString(35);
			subject1 = rs.getString(36);
			subject2 = rs.getString(37);
			subject3 = rs.getString(38);
			DTfield = rs.getString(39);
			industry1 = rs.getString(40);
			industry2 = rs.getString(41);
			industry3 = rs.getString(42);
			industry4 = rs.getString(43);
		}
	}
%>
  <p style = "text-align: center;font-size: 30px;font-weight: bold;">详细情况</p>
  <table border = "1" cellspacing = "0" cellpadding = "0" style = "position: absolute;left: 50px;top: 100px;"> 
    <tbody>
      <tr>
        <td style = "width: 200px;">*机构全称</td>
        <td colspan = "2" style = "width: 300px;"><%=agencyname %></td>
        <td style = "width: 200px;">归口管理部门</td>
        <td colspan = "2" style = "width: 300px;"><%=belong %></td>
      </tr>
      <tr>
        <td>*通讯地址</td>
        <td colspan = "2"><%=loc %></td>
        <td>*所在地域</td>
        <td colspan = "2"><%=place %></td>
      </tr>
      <tr>
        <td>网&nbsp;址</td>
        <td colspan = "2"><%=website %></td>
        <td>*电子邮箱</td>
        <td colspan = "2"><%=email %></td>
      </tr>
      <tr>
        <td>*法人代表</td>
        <td colspan = "2"><%=represent %></td>
        <td>邮政编码</td>
        <td colspan = "2"><%=postcode %></td>
      </tr>
      <tr>
        <td>*联系人</td>
        <td colspan = "2"><%=linkperson %></td>
        <td>固定电话</td>
        <td colspan = "2"><%=phone %></td>
      </tr>
      <tr>
        <td>*手&nbsp;机</td>
        <td colspan = "2"><%=telephone %></td>
        <td>传真</td>
        <td colspan = "2"><%=fax %></td>
      </tr>
      <tr>
        <td>*机构属性</td>
        <td colspan = "5"><%=MEtype %></td>
      </tr>
      <tr>
        <td colspan = "6" style = "text-align: left;"><label>*机构简介<br><br></label><br><br><%=ta1 %><br><br></td>
      </tr>
      <tr>
        <td>*技术需求名称</td>
        <td colspan = "2"><%=jsxqname %><input id = "jsxqname" type = "text" value =<%=jsxqname %> style = "display:none;"></td>
        <td>*需求时限</td>
        <td colspan = "2"><%=xqlimit1 %>年至<%=xqlimit2 %>年</td>
      </tr>
      <tr>
        <td colspan = "6" style = "text-align: left;">*技术需求概述<br><br>
        1、主要问题<br><br>
        <%=ta2 %><br><br>
        2、技术关键<br><br>
        <%=ta3 %><br><br>
        3、预期目标<br><br>
        <%=ta4 %><br><br>
        </td>
      </tr>
      <tr>
        <td style = "width: 70px;">*关键字：<br>（1-5个）</td>
        <td><%=keyword1 %></td>
        <td><%=keyword2 %></td>
        <td><%=keyword3 %></td>
        <td><%=keyword4 %></td>
        <td><%=keyword5 %></td>
      </tr>
      <tr>
        <td colspan = "2">拟投入资金总额</td>
        <td colspan = "4"><%=allmoney %>&nbsp;万元</td>
      </tr>
      <tr>
        <td rowspan = "2" colspan = "2">*技术需求解决方案</td>
        <td colspan = "4"><%=resolution %></td>
      </tr>
      <tr>
        <td colspan = "4">合作意向单位：&nbsp;&nbsp;&nbsp;<%=workwith %>
      </tr>
      <tr>
        <td colspan = "2">*科技活动类型</td>
        <td colspan = "4"><%=TAtype %></td>
      </tr>      
      <%
      	if(industry1.equals("无")) {
      		%>
			<tr>
			  <td colspan = "2">*学科分类</td>
			  <td colspan = "4"><%=subject1 %>&nbsp;&nbsp;&nbsp;<%=subject2 %>&nbsp;&nbsp;&nbsp;<%=subject3 %></td>
			</tr>
      		<%
      	} else {
      		%>
      		<tr>
        	  <td colspan = "2">*需求技术所属领域</td>
        	  <td colspan = "4"><%=DTfield %></td>
      		</tr>
      		<tr>
        	  <td colspan = "2">*需求技术应用行业</td>
        	  <td colspan = "4"><%=industry1 %>&nbsp;&nbsp;&nbsp;<%=industry2 %>&nbsp;&nbsp;&nbsp;<%=industry3 %>&nbsp;&nbsp;&nbsp;<%=industry4 %></td>
      		 </tr>
      		<%
      	}
      %>
      <tr>
        <td colspan = "2">审核意见(“不通过”填写)</td>
        <td colspan = "4"><textarea rows="10" cols="80" id = "xsshyj"></textarea></td>
      </tr>
      <tr>
        <td colspan = "2">提交管理处室(“通过”选择)</td>
        <td colspan = "4">
          <select id = "glcs">
            <option value = "请选择管理处室">请选择管理处室</option>
            <option value = "1">办公室</option>
            <option value = "2">人事处</option>
            <option value = "3">机关党委</option>
            <option value = "4">政策法规处</option>
            <option value = "5">计划财务处</option>
            <option value = "6">平台与基础处</option>
            <option value = "7">国际合作处</option>
            <option value = "8">高新技术处</option>
            <option value = "9">农村科技处</option>
            <option value = "10">社会发展处</option>
            <option value = "11">成果与市场处</option>
            <option value = "12">监察室</option>
            <option value = "13">离退休干部处</option>
            <option value = "14">知识产权局</option>
            <option value = "15">半干旱中心</option>
            <option value = "16">山办</option>
            <option value = "17">机关服务中心</option>
            <option value = "18">科技研发中心</option>
            <option value = "19">科技情报研究院</option>
            <option value = "20">器材公司</option>
            <option value = "21">基金办</option>
            <option value = "22">档案馆</option>
            <option value = "23">科技管理信息中心</option>
            <option value = "24">科技投资中心</option>
            <option value = "25">成果转换中心</option>
            <option value = "26">中小企业创新资金管理中心</option>
            <option value = "27">对外交流中心</option>
          </select>
        </td>
      </tr>
      <tr>
        <td colspan = "6" style = "height: 60px;">
          <button onclick = "TG();" style = "width: 100px;height:30px;cursor: pointer;">通过</button>&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <button onclick = "BTG()" style = "width: 100px;height:30px;cursor: pointer;">不通过</button>&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <button onclick = "back();" style = "width: 100px;height:30px;cursor: pointer;">返回</button>
        </td>
      </tr>
      </tbody>
    </table>
</body>
</html>