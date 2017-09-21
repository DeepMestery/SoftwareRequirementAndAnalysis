<%@ page language="java" contentType="text/html; charset=utf-8" import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel = "stylesheet" href = "../css/fillIn.css">
  <script type="text/javascript" src = "../js/fillIn.js"></script>
  <script type="text/javascript" src = "../js/subjectClass.js"></script>
  <script type="text/javascript" src = "../js/industryClass.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>需求更改</title>
</head>
<script type="text/javascript">
function back() {
	window.location = "management.jsp";
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

  <div> 
    <p style = "text-align: center;font-size: 30px;font-weight: bold;">河北省重大技术需求征集表</p>
    <form action="xqchange_yz.jsp" onReset = "return remind();" onsubmit="return localReview();"> 
    <table border = "1" cellspacing = "0" cellpadding = "0" style = "position: absolute;left: 50px;top: 100px;"> 
      <tbody>
      <tr>
        <td style = "width: 120px;">*机构全称</td>
        <td colspan = "2"><input name = "listagencyname" type = "text" style = "width:200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=agencyname %>></td>
        <td>归口管理部门</td>
        <td colspan = "2">
          <input name = "belong" type = "text" style = "width:230px;height: 30px;line-height: 30px;font-size: 14px;" list = "datalist" value = <%=belong %>>
        <datalist id ="datalist" style = "overflow: auto;">
        <option value = "邯郸市科技局">邯郸市科技局</option>
        <option value = "邢台市科技局">邢台市科技局</option>
        <option value = "石家庄市科技局">石家庄市科技局</option>
        <option value = "保定市科技局">保定市科技局</option>
        <option value = "张家口市科技局">张家口市科技局</option>
        <option value = "承德市科技局">承德市科技局</option>
        <option value = "秦皇岛市科技局">秦皇岛市科技局</option>
        <option value = "唐山市科技局">唐山市科技局</option>
        <option value = "廊坊市科技局">廊坊市科技局</option>
        <option value = "沧州市科技局">沧州市科技局</option>
        <option value = "衡水市科技局">衡水市科技局</option>
        <option value = "省科技厅">省科技厅</option>
        <option value = "省财政厅">省财政厅</option>
        <option value = "省工业和信息化厅">省工业和信息化厅</option>
        <option value = "省住房和城乡建设厅">省住房和城乡建设厅</option>
        <option value = "省水利厅">省水利厅</option>
        <option value = "省计生委">省计生委</option>
        <option value = "省食品药品监督管理局">省食品药品监督管理局</option>
        <option value = "省质量技术监督局">省质量技术监督局</option>
        <option value = "省环保厅">省环保厅</option>
        <option value = "省卫生厅">省卫生厅</option>
        <option value = "省农业厅">省农业厅</option>
        <option value = "省教育厅">省教育厅</option>
        <option value = "省林业厅">省林业厅</option>
        <option value = "省中小企业局">省中小企业局</option>
        <option value = "省交通厅">省交通厅</option>
        <option value = "省国防科技工业局">省国防科技工业局</option>
        <option value = "省审计厅">省审计厅</option>
        <option value = "省文化厅">省文化厅</option>
        <option value = "省统计局">省统计局</option>
        <option value = "省公安厅">省公安厅</option>
        <option value = "省人力资源和社会保障厅">省人力资源和社会保障厅</option>
        <option value = "省体育局">省体育局</option>
        <option value = "省国土资源厅">省国土资源厅</option>
        <option value = "省科学院">省科学院</option>
        <option value = "省农科院">省农科院</option>
        <option value = "省社会科学院">省社会科学院</option>
        <option value = "省气象局">省气象局</option>
        <option value = "省地震局">省地震局</option>
        <option value = "省民政厅">省民政厅</option>
        <option value = "省委宣传部">省委宣传部</option>
        <option value = "省委组织部">省委组织部</option>
        <option value = "省供销合作社">省供销合作社</option>
        <option value = "省广播电视局">省广播电视局</option>
        <option value = "省委办公厅">省委办公厅</option>
        <option value = "省政府研究室">省政府研究室</option>
        <option value = "省盐务局">省盐务局</option>
        <option value = "省档案局">省档案局</option>
        <option value = "省物价局">省物价局</option>
        <option value = "省人民政府外事办公室">省人民政府外事办公室</option>
        <option value = "省政府办公厅">省政府办公厅 </option>
        <option value = "省信访局">省信访局</option>
        <option value = "省妇联">省妇联</option>
        <option value = "省法院">省法院</option>
        <option value = "省检察院">省检察院</option>
        <option value = "省商务厅">省商务厅</option>
        <option value = "省发改委">省发改委</option>
        <option value = "省国资委">省国资委</option>
        <option value = "辛集市科技局">辛集市科技局</option>
        <option value = "定州市科技局">定州市科技局</option>
        <option value = "省安全生产监督管理局">省安全生产监督管理局</option>
        <option value = "省国家安全厅">省国家安全厅</option>
        <option value = "省中医药管理局">省中医药管理局</option>
        <option value = "河北出入境检验检疫局">河北出入境检验检疫局</option>
        <option value = "省科协">省科协</option>
        <option value = "河北钢铁集团有限公司">河北钢铁集团有限公司</option>
        <option value = "石家庄国家高新技术产业开发区">石家庄国家高新技术产业开发区</option>
        <option value = "保定国家高新技术产业开发区">保定国家高新技术产业开发区</option>
        <option value = "省总工会">省总工会</option>
        <option value = "省旅游局">省旅游局</option>
        <option value = "省新闻出版广电局">省新闻出版广电局</option>
        <option value = "省社科联">省社科联</option>
        <option value = "团省委">团省委</option>
        <option value = "省司法厅">省司法厅</option>
        <option value = "唐山国家高新技术产业开发区">唐山国家高新技术产业开发区</option>
        <option value = "燕郊国家高新技术产业开发区">燕郊国家高新技术产业开发区</option>
        <option value = "河北行政学院">河北行政学院</option>
        <option value = "河北省机构编制委员会办公室">河北省机构编制委员会办公室</option>
        <option value = "省政府法制办">省政府法制办</option>
        <option value = "中共河北省委党校">中共河北省委党校</option>
        <option value = "省工商行政管理局">省工商行政管理局</option>
        <option value = 承德国家高新技术产业开发区>承德国家高新技术产业开发区</option>
        </datalist>
        </td>
      </tr>
      <tr>
        <td>*通讯地址</td>
        <td colspan = "2"><input name = "loc" type = "text" style = "width:200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=loc %>></td>
        <td>*所在地域</td>
        <td colspan = "2">
          <select name = "place" style = "width: 200px;height: 30px;font-size: 13px;" value = <%=place %>>
            <option value = "请选择所在地区">请选择所在地区</option>
            <option value = "石家庄市">石家庄市</option>
            <option value = "唐山市">唐山市</option>
            <option value = "秦皇岛市">秦皇岛市</option>
            <option value = "邯郸市">邯郸市</option>
            <option value = "邢台市">邢台市</option>
            <option value = "保定市">保定市</option>
            <option value = "张家口市">张家口市</option>
            <option value = "承德市">承德市</option>
            <option value = "沧州市">沧州市</option>
            <option value = "廊坊市">廊坊市</option>
            <option value = "衡水市">衡水市</option>
            <option value = "定州市  (直管县)">定州市  (直管县)</option>
            <option value = "辛集市  (直管县)">辛集市  (直管县)</option>
            <option value = "其他  (河北工大)">其他  (河北工大)</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>网&nbsp;址</td>
        <td colspan = "2"><input name = "website" type = "text" style = "width:200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=website %>></td>
        <td>*电子邮箱</td>
        <td colspan = "2"><input name = "email" type = "text" style = "width:200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=email %>></td>
      </tr>
      <tr>
        <td>*法人代表</td>
        <td colspan = "2"><input name = "represent" type = "text" style = "width:200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=represent %>></td>
        <td>邮政编码</td>
        <td colspan = "2"><input name = "postcode" type = "text" style = "width:200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=postcode %>></td>
      </tr>
      <tr>
        <td>*联系人</td>
        <td colspan = "2"><input name = "linkperson" type = "text" style = "width: 200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=linkperson %>></td>
        <td>固定电话</td>
        <td colspan = "2"><input name = "phone" type = "text" style = "width: 200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=phone %>></td>
      </tr>
      <tr>
        <td>*手&nbsp;机</td>
        <td colspan = "2"><input name = "telephone" type = "text" style = "width: 200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=telephone %>></td>
        <td>传真</td>
        <td colspan = "2"><input name = "fax" type = "text" style = "width: 200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=fax %>></td>
      </tr>
      <tr>
        <td>*机构属性</td>
        <td colspan = "5">
        <%
        	if(MEtype.equals("企业")) {
        		%>
          <input name = "MEtype" type = "radio" value = "企业" checked>企业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "高等院校">高等院校&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "研究机构">研究机构&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "其他">其他
        		<%
        	} else if(MEtype.equals("高等院校")) {
        		%>
          <input name = "MEtype" type = "radio" value = "企业">企业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "高等院校" checked>高等院校&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "研究机构">研究机构&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "其他">其他
        		<%
        	} else if(MEtype.equals("研究机构")) {
        		%>
          <input name = "MEtype" type = "radio" value = "企业">企业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "高等院校">高等院校&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "研究机构" checked>研究机构&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "其他">其他
        		<%
        	} else {
        		%>
          <input name = "MEtype" type = "radio" value = "企业">企业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "高等院校">高等院校&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "研究机构">研究机构&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "MEtype" type = "radio" value = "其他" checked>其他
        		<%
        	}
        %>
        </td>
      </tr>
      <tr>
        <td colspan = "6" style = "text-align: left;"><label>*机构简介<br><br>
                           （主要包括基本情况、现有研究基础等，<span style = "color: red;">限500字以内</span>）</label><br><br>
          <textarea name = "ta1" id = "ta1" rows="8" cols="130" onkeyup = "WC1();" onblur = "WC_1();"><%=ta1 %></textarea>
          <label id = "wordnum1">0/500</label><br><br>
        </td>
      </tr>
      <tr>
        <td>*技术需求名称</td>
        <td colspan = "2"><input name = "jsxqname" type = "text" style = "width:230px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=jsxqname %>></td>
        <td>*需求时限</td>
        <td colspan = "2"><input name = "xqlimit1" type = "text" style = "border: 0;border-bottom: 1px solid black;width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=xqlimit1 %>>年至<input name = "xqlimit2" type = "text" style = "border: 0;border-bottom: 1px solid black;width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=xqlimit2 %>>年</td>
      </tr>
      <tr>
        <td colspan = "6" style = "text-align: left;">*技术需求概述<br><br>
        1、主要问题（需要解决的重大技术问题，<span style = "color: red;">限500字以内</span>）<br><br>
        <textarea name = "ta2" id = "ta2" rows="8" cols="130" onkeyup = "WC2();" onblur = "WC_2();"><%=ta2 %></textarea>
        <label id = "wordnum2">0/500</label><br><br>
        2、技术关键（所需的关键技术、主要指标，<span style = "color: red;">限500字以内</span>）<br><br>
        <textarea name = "ta3" id = "ta3" rows="8" cols="130" onkeyup = "WC3();" onblur = "WC_3();"><%=ta3 %></textarea>
        <label id = "wordnum3">0/500</label><br><br>
        3、预期目标（技术创新性、经济社会效益，<span style = "color: red;">限500字以内</span>）<br><br>
        <textarea name = "ta4" id = "ta4" rows="8" cols="130" onkeyup = "WC4();" onblur = "WC_4();"><%=ta4 %></textarea>
        <label id = "wordnum4">0/500</label><br><br>
        </td>
      </tr>
      <tr>
        <td style = "width: 70px;">*关键字：<br>（1-5个）</td>
        <td><input name = "keyword1" id = "keyword1" type = "text" onblur = "key2_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword1 %>></td>
        <%
        	if(keyword2.equals("无")) {
        		%>
        <td><input name = "keyword2" id = "keyword2" type = "text" onblur = "key3_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        <td><input name = "keyword3" id = "keyword3" type = "text" disabled = "disabled" onblur = "key4_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        <td><input name = "keyword4" id = "keyword4" type = "text" disabled = "disabled" onblur = "key5_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        <td><input name = "keyword5" id = "keyword5" type = "text" disabled = "disabled" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        		<%
        	} else if(keyword3.equals("无")) {
        		%>
        <td><input name = "keyword2" id = "keyword2" type = "text" onblur = "key3_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword2 %>></td>
        <td><input name = "keyword3" id = "keyword3" type = "text" onblur = "key4_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        <td><input name = "keyword4" id = "keyword4" type = "text" disabled = "disabled" onblur = "key5_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        <td><input name = "keyword5" id = "keyword5" type = "text" disabled = "disabled" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        		<%
        	} else if(keyword4.equals("无")) {
        		%>
        <td><input name = "keyword2" id = "keyword2" type = "text" onblur = "key3_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword2 %>></td>
        <td><input name = "keyword3" id = "keyword3" type = "text" onblur = "key4_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword3 %>></td>
        <td><input name = "keyword4" id = "keyword4" type = "text" onblur = "key5_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        <td><input name = "keyword5" id = "keyword5" type = "text" disabled = "disabled" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        		<%
        	} else if(keyword5.equals("无")) {
        		%>
        <td><input name = "keyword2" id = "keyword2" type = "text" onblur = "key3_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword2 %>></td>
        <td><input name = "keyword3" id = "keyword3" type = "text" onblur = "key4_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword3 %>></td>
        <td><input name = "keyword4" id = "keyword4" type = "text" onblur = "key5_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword4 %>></td>
        <td><input name = "keyword5" id = "keyword5" type = "text" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;"></td>
        		<%
        	} else {
        		%>
        <td><input name = "keyword2" id = "keyword2" type = "text" onblur = "key3_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword2 %>></td>
        <td><input name = "keyword3" id = "keyword3" type = "text" onblur = "key4_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword3 %>></td>
        <td><input name = "keyword4" id = "keyword4" type = "text" onblur = "key5_able();" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword4 %>></td>
        <td><input name = "keyword5" id = "keyword5" type = "text" style = "width: 150px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=keyword5 %>></td>
        		<%
        	}
        %>
      </tr>
      <tr>
        <td colspan = "2">拟投入资金总额</td>
        <td colspan = "4"><input name = "allmoney" type = "text" style = "width: 200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=allmoney %>>万元</td>
      </tr>
      <tr>
        <td rowspan = "2" colspan = "2">*技术需求解决方案</td>
        <td colspan = "4">
        <%
        	if(resolution.equals("独立研发")) {
        		%>
          <input name = "resolution" type = "radio" value = "独立研发" checked>独立研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "委托研发">委托研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "合作研发">合作研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "其他">其他
        		<%
        	} else if(resolution.equals("委托研发")) {
        		%>
          <input name = "resolution" type = "radio" value = "独立研发">独立研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "委托研发" checked>委托研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "合作研发">合作研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "其他">其他
        		<%
        	} else if(resolution.equals("合作研发")) {
        		%>
          <input name = "resolution" type = "radio" value = "独立研发">独立研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "委托研发">委托研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "合作研发" checked>合作研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "其他">其他
        		<%
        	} else {
        		%>
          <input name = "resolution" type = "radio" value = "独立研发">独立研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "委托研发">委托研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "合作研发">合作研发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "resolution" type = "radio" value = "其他" checked>其他
        		<%
        	}
        %>
        </td>
      </tr>
      <tr>
        <td colspan = "4">合作意向单位&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<input name = "workwith" type = "text" style = "border: 0;border-bottom: 1px solid black;width: 200px;height: 30px;line-height: 30px;font-size: 14px;" value = <%=workwith %>>（选填）</td>
      </tr>
      <tr>
        <td colspan = "2">*科技活动类型</td>
        <td colspan = "4">
        <%
        	if(TAtype.equals("基础研究")) {
        		%>
          <input name = "TAtype" type = "radio" onclick = "hk_jc();" value = "基础研究" checked>基础研究
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "应用领域">应用领域
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "试验发展">试验发展
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "研究与试验发展成果应用">研究与试验发展成果应用
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "技术推广与科技服务">技术推广与科技服务
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "生产性活动">生产性活动
        		<%
        	} else if(TAtype.equals("应用领域")) {
        		%>
          <input name = "TAtype" type = "radio" onclick = "hk_jc();" value = "基础研究">基础研究
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "应用领域" checked>应用领域
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "试验发展">试验发展
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "研究与试验发展成果应用">研究与试验发展成果应用
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "技术推广与科技服务">技术推广与科技服务
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "生产性活动">生产性活动
        		<%
        	} else if(TAtype.equals("试验发展")) {
        		%>
          <input name = "TAtype" type = "radio" onclick = "hk_jc();" value = "基础研究">基础研究
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "应用领域">应用领域
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "试验发展" checked>试验发展
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "研究与试验发展成果应用">研究与试验发展成果应用
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "技术推广与科技服务">技术推广与科技服务
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "生产性活动">生产性活动
        		<%
        	} else if(TAtype.equals("研究与试验发展成果应用")) {
        		%>
          <input name = "TAtype" type = "radio" onclick = "hk_jc();" value = "基础研究">基础研究
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "应用领域">应用领域
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "试验发展">试验发展
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "研究与试验发展成果应用" checked>研究与试验发展成果应用
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "技术推广与科技服务">技术推广与科技服务
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "生产性活动">生产性活动
        		<%
        	} else if(TAtype.equals("技术推广与科技服务")) {
        		%>
          <input name = "TAtype" type = "radio" onclick = "hk_jc();" value = "基础研究">基础研究
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "应用领域">应用领域
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "试验发展">试验发展
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "研究与试验发展成果应用">研究与试验发展成果应用
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "技术推广与科技服务" checked>技术推广与科技服务
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "生产性活动">生产性活动
        		<%
        	} else {
        		%>
          <input name = "TAtype" type = "radio" onclick = "hk_jc();" value = "基础研究">基础研究
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "应用领域">应用领域
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "试验发展">试验发展
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "研究与试验发展成果应用">研究与试验发展成果应用
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "技术推广与科技服务">技术推广与科技服务
          <input name = "TAtype" type = "radio" onclick = "hk_other();" value = "生产性活动" checked>生产性活动
        		<%
        	}
        %>
        </td>
      </tr>
      <%
      	if(TAtype.equals("基础研究")) {
      		%>
      <tr id = "hk_jc">
        <td colspan = "2">*学科分类</td>
        <td colspan = "4">
          <select name = "subject1" id = "subject1" style = "width: 200px;font-size: 13px;" onchange = "subject2_value();" = "">
            <option value = "学科一级代码" selected>学科一级代码</option>
            <option value = "数学">数学</option>
            <option value = "信息科学与系统科学" >信息科学与系统科学</option>
            <option value = "力学">力学</option>
            <option value = "物理学">物理学</option>
            <option value = "化学">化学</option>
            <option value = "天文学">天文学</option>
            <option value = "地球科学">地球科学</option>
            <option value = "生物学">生物学</option>
            <option value = "农学">农学</option>
            <option value = "林学">林学</option>
            <option value = "畜牧、兽医科学">畜牧、兽医科学</option>
            <option value = "水产学">水产学</option>
            <option value = "基础医学">基础医学</option>
            <option value = "临床医学">临床医学</option>
            <option value = "预防医学与卫生学">预防医学与卫生学</option>
            <option value = "军事医学与特种医学">军事医学与特种医学</option>
            <option value = "药学">药学</option>
            <option value = "中医学与中药学">中医学与中药学</option>
            <option value = "工程与技术科学基础学科">工程与技术科学基础学科</option>
            <option value = "测绘科学技术">测绘科学技术</option>
            <option value = "材料科学">材料科学</option>
            <option value = "矿山工程技术">矿山工程技术</option>
            <option value = "冶金工程技术">冶金工程技术</option>
            <option value = "机械工程">机械工程</option>
            <option value = "动力与电气工程">动力与电气工程</option>
            <option value = "能源科学技术">能源科学技术</option>
            <option value = "核科学技术">核科学技术</option>
            <option value = "电子、通信与自动控制技术">电子、通信与自动控制技术</option>
            <option value = "计算机科学技术">计算机科学技术</option>
            <option value = "化学工程">化学工程</option>
            <option value = "纺织科学技术">纺织科学技术</option>
            <option value = "食品科学技术">食品科学技术</option>
            <option value = "土木建筑工程">土木建筑工程</option>
            <option value = "水利工程">水利工程</option>
            <option value = "交通运输工程">交通运输工程</option>
            <option value = "航空、航天科学技术">航空、航天科学技术</option>
            <option value = "环境科学技术">环境科学技术</option>
            <option value = "安全科学技术">安全科学技术</option>
            <option value = "管理学">管理学</option>
            <option value = "马克思主义">马克思主义</option>
            <option value = "哲学">哲学</option>
            <option value = "宗教学">宗教学</option>
            <option value = "语言学">语言学</option>
            <option value = "文学">文学</option>
            <option value = "艺术学">艺术学</option>
            <option value = "历史学">历史学</option>
            <option value = "考古学">考古学</option>
            <option value = "经济学">经济学</option>
            <option value = "政治学">政治学</option>
            <option value = "法学">法学</option>
            <option value = "军事学">军事学</option>
            <option value = "社会学">社会学</option>
            <option value = "民族学">民族学</option>
            <option value = "新闻学与传播学">新闻学与传播学</option>
            <option value = "图书馆、情报与文献学">图书馆、情报与文献学</option>
            <option value = "教育学">教育学</option>
            <option value = "体育科学">体育科学</option>
            <option value = "统计学">统计学</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "subject2" id = "subject2" style = "width: 200px;font-size: 13px;" onchange = "subject3_value();">
            <option value = "学科二级代码">学科二级代码</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "subject3" id = "subject3" style = "width: 200px;font-size: 13px;">
            <option value = "学科三级代码">学科三级代码</option>
          </select>
        </td>
      </tr>
      <tr id = "hk_other1" style = "display: none;">
        <td colspan = "2">*需求技术所属领域</td>
        <td colspan = "4">
          <input name = "DTfield" type = "checkbox" value = "电子信息">电子信息&nbsp;&nbsp;&nbsp;
          <input name = "DTfield" type = "checkbox" value = "光机电一体化">光机电一体化&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "DTfield" type = "checkbox" value = "生物技术与制药">生物技术与制药&nbsp;&nbsp;
          <input name = "DTfield" type = "checkbox" value = "新材料及应用">新材料及应用&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          <input name = "DTfield" type = "checkbox" value = "现代农业">现代农业&nbsp;&nbsp;&nbsp;
          <input name = "DTfield" type = "checkbox" value = "新能源与高效节能">新能源与高效节能&nbsp;&nbsp;&nbsp;
          <input name = "DTfield" type = "checkbox" value = "资源与环境">资源与环境&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "DTfield" type = "checkbox" value = "高技术服务业">高技术服务业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          <input name = "DTfield" type = "checkbox" value = "海洋">海洋&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "DTfield" type = "checkbox" value = "社会公共事业">社会公共事业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "DTfield" type = "checkbox" value = "医疗卫生">医疗卫生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input name = "DTfield" type = "checkbox" value = "其它">其它（注明）（可多选）
        </td>
      </tr>
      <tr id = "hk_other2" style = "display: none;">
        <td colspan = "2">*需求技术应用行业</td>
        <td colspan = "4">
          <select name = "industry1" id = "industry1" style = "width: 130px;font-size: 13px;" onchange = "industry2_value();">
            <option value = "技术行业一级代码" selected>技术行业一级代码</option>
            <option value = "农、林、牧、渔业">农、林、牧、渔业</option>
            <option value = "采矿业">采矿业</option>
            <option value = "制造业">制造业</option>
            <option value = "电力、热力、燃气及水生产和供应业">电力、热力、燃气及水生产和供应业</option>
            <option value = "建筑业">建筑业</option>
            <option value = "批发和零售业">批发和零售业</option>
            <option value = "交通运输、仓储和邮政业">交通运输、仓储和邮政业</option>
            <option value = "住宿和餐饮业">住宿和餐饮业</option>
            <option value = "信息传输、软件和信息技术服务业">信息传输、软件和信息技术服务业</option>
            <option value = "金融业">金融业</option>
            <option value = "房地产业">房地产业</option>
            <option value = "租赁和商务服务业">租赁和商务服务业</option>
            <option value = "科学研究和技术服务业">科学研究和技术服务业</option>
            <option value = "水利、环境和公共设施管理业">水利、环境和公共设施管理业</option>
            <option value = "居民服务、修理和其他服务业">居民服务、修理和其他服务业</option>
            <option value = "教育">教育</option>
            <option value = "卫生和社会工作">卫生和社会工作</option>
            <option value = "文化、体育和娱乐业">文化、体育和娱乐业</option>
            <option value = "公共管理、社会保障和社会组织">公共管理、社会保障和社会组织</option>
            <option value = "国际组织">国际组织</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "industry2" id = "industry2" style = "width: 130px;font-size: 13px;" onchange = "industry3_value();">
            <option value = "技术行业二级代码">技术行业二级代码</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "industry3" id = "industry3" style = "width: 130px;font-size: 13px;" onchange = "industry4_value();">
            <option value = "技术行业三级代码">技术行业三级代码</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "industry4" id = "industry4" style = "width: 130px;font-size: 13px;">
            <option value = "技术行业四级代码">技术行业四级代码</option>
          </select>
        </td>
      </tr>
      		<%
      	} else {
      		%>
      <tr id = "hk_jc" style = "display: none;">
        <td colspan = "2">*学科分类</td>
        <td colspan = "4">
          <select name = "subject1" id = "subject1" style = "width: 200px;font-size: 13px;" onchange = "subject2_value();">
            <option value = "学科一级代码" selected>学科一级代码</option>
            <option value = "数学">数学</option>
            <option value = "信息科学与系统科学" >信息科学与系统科学</option>
            <option value = "力学">力学</option>
            <option value = "物理学">物理学</option>
            <option value = "化学">化学</option>
            <option value = "天文学">天文学</option>
            <option value = "地球科学">地球科学</option>
            <option value = "生物学">生物学</option>
            <option value = "农学">农学</option>
            <option value = "林学">林学</option>
            <option value = "畜牧、兽医科学">畜牧、兽医科学</option>
            <option value = "水产学">水产学</option>
            <option value = "基础医学">基础医学</option>
            <option value = "临床医学">临床医学</option>
            <option value = "预防医学与卫生学">预防医学与卫生学</option>
            <option value = "军事医学与特种医学">军事医学与特种医学</option>
            <option value = "药学">药学</option>
            <option value = "中医学与中药学">中医学与中药学</option>
            <option value = "工程与技术科学基础学科">工程与技术科学基础学科</option>
            <option value = "测绘科学技术">测绘科学技术</option>
            <option value = "材料科学">材料科学</option>
            <option value = "矿山工程技术">矿山工程技术</option>
            <option value = "冶金工程技术">冶金工程技术</option>
            <option value = "机械工程">机械工程</option>
            <option value = "动力与电气工程">动力与电气工程</option>
            <option value = "能源科学技术">能源科学技术</option>
            <option value = "核科学技术">核科学技术</option>
            <option value = "电子、通信与自动控制技术">电子、通信与自动控制技术</option>
            <option value = "计算机科学技术">计算机科学技术</option>
            <option value = "化学工程">化学工程</option>
            <option value = "纺织科学技术">纺织科学技术</option>
            <option value = "食品科学技术">食品科学技术</option>
            <option value = "土木建筑工程">土木建筑工程</option>
            <option value = "水利工程">水利工程</option>
            <option value = "交通运输工程">交通运输工程</option>
            <option value = "航空、航天科学技术">航空、航天科学技术</option>
            <option value = "环境科学技术">环境科学技术</option>
            <option value = "安全科学技术">安全科学技术</option>
            <option value = "管理学">管理学</option>
            <option value = "马克思主义">马克思主义</option>
            <option value = "哲学">哲学</option>
            <option value = "宗教学">宗教学</option>
            <option value = "语言学">语言学</option>
            <option value = "文学">文学</option>
            <option value = "艺术学">艺术学</option>
            <option value = "历史学">历史学</option>
            <option value = "考古学">考古学</option>
            <option value = "经济学">经济学</option>
            <option value = "政治学">政治学</option>
            <option value = "法学">法学</option>
            <option value = "军事学">军事学</option>
            <option value = "社会学">社会学</option>
            <option value = "民族学">民族学</option>
            <option value = "新闻学与传播学">新闻学与传播学</option>
            <option value = "图书馆、情报与文献学">图书馆、情报与文献学</option>
            <option value = "教育学">教育学</option>
            <option value = "体育科学">体育科学</option>
            <option value = "统计学">统计学</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "subject2" id = "subject2" style = "width: 200px;font-size: 13px;" onchange = "subject3_value();">
            <option value = "学科二级代码">学科二级代码</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "subject3" id = "subject3" style = "width: 200px;font-size: 13px;">
            <option value = "学科三级代码">学科三级代码</option>
          </select>
        </td>
      </tr>
      <tr id = "hk_other1">
        <td colspan = "2">*需求技术所属领域</td>
        <td colspan = "4">
        <%
        	String DTf[] = DTfield.split(",");
        	int flag = 0;
        
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("电子信息")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "电子信息" checked>电子信息&nbsp;&nbsp;&nbsp;
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
      <input name = "DTfield" type = "checkbox" value = "电子信息">电子信息&nbsp;&nbsp;&nbsp;
    			<%
        	}
        
        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("光机电一体化")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "光机电一体化" checked>光机电一体化&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "光机电一体化">光机电一体化&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<%
        	}
        
        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("生物技术与制药")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "生物技术与制药" checked>生物技术与制药&nbsp;&nbsp;
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "生物技术与制药">生物技术与制药&nbsp;&nbsp;
    			<%
        	}

        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("新材料及应用")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "新材料及应用" checked>新材料及应用&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "新材料及应用">新材料及应用&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
    			<%
        	}

        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("现代农业")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "现代农业" checked>现代农业&nbsp;&nbsp;&nbsp;
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "现代农业">现代农业&nbsp;&nbsp;&nbsp;
    			<%
        	}

        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("新能源与高效节能")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "新能源与高效节能" checked>新能源与高效节能&nbsp;&nbsp;&nbsp;
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "新能源与高效节能">新能源与高效节能&nbsp;&nbsp;&nbsp;
    			<%
        	}

        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("资源与环境")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "资源与环境" checked>资源与环境&nbsp;&nbsp;&nbsp;&nbsp;
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "资源与环境">资源与环境&nbsp;&nbsp;&nbsp;&nbsp;
    			<%
        	}

        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("高技术服务业")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "高技术服务业" checked>高技术服务业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "高技术服务业">高技术服务业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
    			<%
        	}

        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("海洋")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "海洋" checked>海洋&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "海洋">海洋&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<%
        	}

        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("社会公共事业")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "社会公共事业" checked>社会公共事业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "社会公共事业">社会公共事业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<%
        	}

        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("医疗卫生")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "医疗卫生" checked>医疗卫生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "医疗卫生">医疗卫生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<%
        	}

        	flag = 0;
        	for(int i = 0;i<DTf.length;i++) {
        		if(DTf[i].equals("其它")) {
        			%>
          <input name = "DTfield" type = "checkbox" value = "其它" checked>其它（注明）（可多选）
        			<%
        			flag = 1;
        			break;
        		}
        	}
        	
        	if(flag == 0) {
    			%>
          <input name = "DTfield" type = "checkbox" value = "其它">其它（注明）（可多选）
    			<%
        	}
        %>
        </td>
      </tr>
      <tr id = "hk_other2">
        <td colspan = "2">*需求技术应用行业</td>
        <td colspan = "4">
          <select name = "industry1" id = "industry1" style = "width: 130px;font-size: 13px;" onchange = "industry2_value();">
            <option value = "技术行业一级代码" selected>技术行业一级代码</option>
            <option value = "农、林、牧、渔业">农、林、牧、渔业</option>
            <option value = "采矿业">采矿业</option>
            <option value = "制造业">制造业</option>
            <option value = "电力、热力、燃气及水生产和供应业">电力、热力、燃气及水生产和供应业</option>
            <option value = "建筑业">建筑业</option>
            <option value = "批发和零售业">批发和零售业</option>
            <option value = "交通运输、仓储和邮政业">交通运输、仓储和邮政业</option>
            <option value = "住宿和餐饮业">住宿和餐饮业</option>
            <option value = "信息传输、软件和信息技术服务业">信息传输、软件和信息技术服务业</option>
            <option value = "金融业">金融业</option>
            <option value = "房地产业">房地产业</option>
            <option value = "租赁和商务服务业">租赁和商务服务业</option>
            <option value = "科学研究和技术服务业">科学研究和技术服务业</option>
            <option value = "水利、环境和公共设施管理业">水利、环境和公共设施管理业</option>
            <option value = "居民服务、修理和其他服务业">居民服务、修理和其他服务业</option>
            <option value = "教育">教育</option>
            <option value = "卫生和社会工作">卫生和社会工作</option>
            <option value = "文化、体育和娱乐业">文化、体育和娱乐业</option>
            <option value = "公共管理、社会保障和社会组织">公共管理、社会保障和社会组织</option>
            <option value = "国际组织">国际组织</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "industry2" id = "industry2" style = "width: 130px;font-size: 13px;" onchange = "industry3_value();">
            <option value = "技术行业二级代码">技术行业二级代码</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "industry3" id = "industry3" style = "width: 130px;font-size: 13px;" onchange = "industry4_value();">
            <option value = "技术行业三级代码">技术行业三级代码</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          <select name = "industry4" id = "industry4" style = "width: 130px;font-size: 13px;">
            <option value = "技术行业四级代码">技术行业四级代码</option>
          </select>
        </td>
      </tr>
      		<%
      	}
      %>
      <tr>
        <td colspan = "6">
          <input type = "submit" value = "保存并提交" style = "width: 140px;height:30px;">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type = "reset" value = "重置" style = "width: 100px;height:30px;">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type = "button" value = "返回" style = "width: 100px;height:30px;cursor: pointer;" onclick = "back();">
          <input name = "number" value = <%=number %> type = "hidden">
        </td>
      </tr>
      </tbody>
    </table> 
    </form> 
  </div>  
</body>
</html>