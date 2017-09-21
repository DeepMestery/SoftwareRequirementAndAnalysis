<%@ page language="java" contentType="text/html; charset=utf-8" import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang = "zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel = "stylesheet" href = "css/publicStyle.css">
<link rel = "stylesheet" href = "css/changeInfo.css">
<script type="text/javascript" src = "js/changeInfo.js"></script>
<script type="text/javascript" src = "js/publicButton.js"></script>
<title>修改个人信息</title>
</head>
<body>
  <jsp:useBean id="db" class="bean.JDBConnection"/>
  <%
    String username1 = (String)session.getAttribute("username");
    session.setAttribute("username", username1);
    
    int id = 0;
	String pwd1 = "";
	String loc1 = "";
	String website1 = "";
	String email1 = "";
	String legalre1 = "";
	String poscode1 = "";
	
	if(db.createConnection() == true) {
		String sql1 = "select * from userInfo where username = '"+username1+"'";
		ResultSet rs1  = db.executeQuery(sql1);
		
		while(rs1.next()) {
			id = rs1.getInt(1);
			pwd1 = rs1.getString(3);
			loc1 = rs1.getString(4);
			website1 = rs1.getString(5);
			email1 = rs1.getString(6);
			legalre1 = rs1.getString(7);
			poscode1 = rs1.getString(8);
		}
		
		db.closeConnection();
	}
  %>
  
  <div class = "header">
    <p style = "text-align: right;">欢迎您，<span style = "font-weight: bold;"><%= username1 %></span></p>
  </div>
  
  <div class = "title">
    <ul>
      <li><button class = "button b1" style = "button" onclick = "firstBut();">首页</button></li>
      <li><button class = "button b2" style = "button" onclick = "secondBut();">填写清单</button></li>
      <li><button class = "button b3" style = "button" onclick = "thirdBut();">清单状态</button></li>
      <li><button class = "button b2" style = "button" onclick = "forthBut();">修改个人信息</button></li>
      <li><button class = "button b3" style = "button" onclick = "fifthBut();">退出</button> </li>
    </ul>
  </div>
  
  <div class = "content">
    <div class = "dlk">
      <form action="changeInfo.jsp" action = "post" onsubmit = "return localReview();">
        <table width = "720px" border = "0" cellpadding = "0" cellspacing = "0">
          <tr>
            <td height = "100px" colspan = "3" style = "font-weight: bold;font-size: 40px;">修改信息</td>
          </tr>
          <tr>
            <td height = "40px;"></td>
          </tr>
          <tr>
            <td width = "200px">用户名</td>
            <td><input class = "in" name = "username" id = "username" type = "text" value = "<%=username1 %>" placeholder = "完整机构单位名称" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '完整机构单位名称';p1_blank();" /></td>
            <td class = "tips" id = "p1">&nbsp;</td>
          </tr>
          <tr>
            <td height = "40px"></td>
          </tr>
          <tr>
            <td>密码</td>
            <td><input class = "in" name = "pwd" id = "pwd" type = "password" value = "<%=pwd1 %>" placeholder = "密码" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '密码';p2_blank();" /></td>
            <td class = "tips" id = "p2">&nbsp;</td>
          </tr>
          <tr>
            <td height = "40px"></td>
          </tr>
          <tr>
            <td>确认密码</td>
            <td> <input class = "in" name = "repwd" id = "repwd" type = "password" value = "<%=pwd1 %>" placeholder = "再次输入密码" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '再次输入密码';p3_blank();" /></td>
            <td class = "tips" id = "p3">&nbsp;</td>
          </tr>
          <tr>
            <td height = "40px"></td>
          </tr>
          <tr>
            <td>通讯地址</td>
            <td> <input class = "in" name = "loc" id= "loc" type = "text" value = "<%=loc1 %>" placeholder = "通讯地址" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '通讯地址';p4_blank();" /></td>
            <td class = "tips" id = "p4">&nbsp;</td>
          </tr>
          <tr>
            <td height = "40px"></td>
          </tr>
          <tr>
            <td>单位网址</td>
            <td><input class = "in" name = "website" id = "website" type = "text" value = "<%=website1 %>" placeholder = "单位官方网址，必须以http://或https://开头" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '单位官方网址，必须以http://或https://开头';p5_blank();" /></td>
            <td class = "tips" id = "p5">&nbsp;</td>
          </tr>
          <tr>
            <td height = "40px"></td>
          </tr>
          <tr>
            <td>电子邮箱</td>
            <td><input class = "in" name = "email" id = "email" type = "text" value = "<%=email1 %>" placeholder = "机构电子邮箱" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '机构电子邮箱';p6_blank();" /></td>
            <td class = "tips" id = "p6">&nbsp;</td>
          </tr>
          <tr>
            <td height = "40px"></td>
          </tr>
          <tr>
            <td>法人代表</td>
            <td><input class = "in" name = "legalre" id = "legalre" type = "text" value = "<%=legalre1 %>" placeholder = "机构法人代表" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '机构法人代表';p7_blank();" /></td>
            <td class = "tips" id = "p7">&nbsp;</td>
          </tr>
          <tr>
            <td height = "40px"></td>
          </tr>
          <tr>
            <td>邮政编码</td>
            <td><input class = "in" name = "poscode" id = "poscode" type = "text" value = "<%=poscode1 %>" placeholder = "邮政编码" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '邮政编码';p8_blank();" /></td>
            <td class = "tips" id = "p8">&nbsp;</td>
          </tr>
          <tr>
            <td height = "100px"></td>
          </tr>
          <tr>
            <td colspan = "3"><input class = "but" type = "submit" name = "submit" value = "确认">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <button class = "but" type = "button" onclick="cancel();">取消</button>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
  
  <%
    String username = request.getParameter("username");
	String pwd = request.getParameter("pwd");
	String loc = request.getParameter("loc");
    String website = request.getParameter("website");
	String email = request.getParameter("email");
	String legalre = request.getParameter("legalre");
	String poscode = request.getParameter("poscode");
	String submit = request.getParameter("submit");
	
	if(submit != null && !submit.equals("")){
	  if(db.createConnection() == true){
		  String sql = "update userInfo set username = '"+username+"',pwd = '"+pwd+"',loc = '"+loc+"',website = '"+website+"',email = '"+email+"',legalrep = '"+legalre+"',postalcode = '"+poscode+"' where id = '"+id+"'";
		  if(db.executeUpdate(sql) == true) {
			  db.closeConnection();
			  
			  if(!username1.equals(username)) {
				  session.setAttribute("username", username);
			  }
			  %>
			  <script type="text/javascript">
		        alert("修改信息成功！");
				window.location.href = "index.jsp";
			  </script>
		      <%
		  } else {
			  db.closeConnection();
			  %>
			  <script type="text/javascript">
		        alert("修改信息失败！");
				window.location.href = "changeInfo.jsp";
			  </script>
		      <%
		  }
	  }
	}
  %>
  
  <div class = "footer">
    <p>Copyright 2016 hebei China All Rights Reserved</p><br>
    <p>河北省政府技术需求填报网站 河北省人民政府办公厅主办</p><br>
    <p>河北省人民政府版权所有 冀ICP备字xxxxxxxx号</p><br>
  </div>

</body>
</html>