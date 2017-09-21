<%@ page language="java" contentType="text/html; charset=utf-8" import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang = "zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel = "stylesheet" href = "../css/zhuce.css">
<script type="text/javascript" src = "../js/zhuce.js"></script>
<title>注册</title>
</head>
<body>
  <div class = "content">
    <div class = "dlk">
      <form action="zhuce.jsp" action = "post" onsubmit = "return localReview();">
        <table>
          <tr>
            <td style = "width: 300px;text-align: right;">用户名</td>
            <td style = "width: 500px;"><input class = "in" name = "username" id = "username" type = "text" placeholder = "用户名" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '用户名';p1_blank();" /></td>
            <td style = "width: 300px;text-align: left;"><label class = "tip" style = "width: 200px;" id = "p1">*用户名不能为空</label></td>
          </tr>
          <tr>
            <td style = "width: 300px;text-align: right;">用户密码</td>
            <td><input class = "in" name = "userpassword" id = "userpassword" type = "password" placeholder = "用户密码" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '用户密码';p2_blank();" /></td>
            <td style = "width: 300px;text-align: left;"><label class = "tip" id = "p2">*用户密码不能为空</label></td>
          </tr>
          <tr>
            <td style = "width: 300px;text-align: right;">验证密码</td>
            <td> <input class = "in" name = "repassword" id = "repassword" type = "password" placeholder = "再次输入密码" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '再次输入密码';p3_blank();" /></td>
            <td style = "width: 300px;text-align: left;"><label class = "tip" id = "p3">*验证密码不能为空</label></td>
          </tr>
          <tr>
            <td style = "width: 300px;text-align: right;">机构全称</td>
            <td><input class = "in" name = "agencyname" id= "agencyname" type = "text" placeholder = "机构全称" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '机构全称';p4_blank();" /></td>
            <td style = "width: 300px;text-align: left;"><label class = "tip" id = "p4">*机构全称不能为空</label></td>
          </tr>
          <tr>
            <td style = "width: 300px;text-align: right;">真实姓名</td>
            <td><input class = "in" name = "realname" id = "realname" type = "text" placeholder = "真实姓名" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '真实姓名';p5_blank();" /></td>
            <td style = "width: 300px;text-align: left;"><label class = "tip" id = "p5">*真实姓名不能为空</label></td>
          </tr>
          <tr>
            <td style = "width: 300px;text-align: right;">身份证号</td>
            <td><input class = "in" name = "id" id = "id" type = "text" placeholder = "身份证号" onfocus = "this.placeholder = ''" onblur = "this.placeholder = '身份证号';p6_blank();" /></td>
            <td style = "width: 300px;text-align: left;"><label class = "tip" id = "p6">*身份证号不能为空</label></td>
          </tr>
          <tr>
            <td colspan = "3"><input class = "button" type = "submit" name = "submit" value = "确认" style = "width: 100px;height: 30px;cursor: pointer">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type = "button" style = "width: 100px;height: 30px;cursor: pointer;" onclick="cancel();">取消</button>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
  
  <jsp:useBean id="db" class="bean.JDBConnection"/>
  <%
	String username = request.getParameter("username");
	String userpassword = request.getParameter("userpassword");
	String agencyname = request.getParameter("agencyname");
    String realname = request.getParameter("realname");
	String id = request.getParameter("id");
	String submit = request.getParameter("submit");
	
	if(submit != null && !submit.equals("")){
	  if(db.createConnection() == true){
		  String sql = "select * from userinfo where username = '"+username+"'";
		  ResultSet rs = db.executeQuery(sql);
		  
		  int flag = 1;
		  
		  int i = 0;
		  while (rs.next()) {
			  flag = 0;
		  }
		  
		  if(flag == 0) {
			db.closeConnection();
			%>
			<script type="text/javascript">
			  alert("该用户已存在！");
			  window.location = "zhuce.jsp";
			</script>
			<%
		  } else {
		      sql = "insert into userInfo(username,userpassword,agencyname,realname,id,userlevel) values ('"+username+"','"+userpassword+"','"+agencyname+"','"+realname+"','"+id+"','0')";	
			  if(db.executeUpdate(sql) == true) {
				db.closeConnection();
				%>
				<script type="text/javascript">
				  alert("注册成功，请登录！");
				  top.location = "../login.html";
				</script>
				<%
			  } else {
				  db.closeConnection();
				  %>
				  <script type="text/javascript">
				    alert("注册失败！");
				    windows.location = "zhuce.jsp";
				  </script>
				  <%
			  }
		  }
	  }
	}
  %>
</body>
</html>