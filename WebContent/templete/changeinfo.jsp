<%@ page language="java" contentType="text/html; charset=utf-8" import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>    
<script type="text/javascript">
function localReview() {
	var userpassword = document.getElementById("userpassword").value;
	var newuserpassword = document.getElementById("newuserpassword").value;
	var renewuserpassword = document.getElementById("renewuserpassword").value;
	
	if(userpassword == "") {
		alert("原始密码不能为空！");
		document.getElementById("userpassword").focus();
		return false;
	}
	
	if(newuserpassword == "") {
		alert("新密码不能为空！");
		document.getElementById("newuserpassword").focus();
		return false;
	}
	
	if(renewuserpassword == "") {
		alert("验证密码不能为空！");
		document.getElementById("renewuserpassword").focus();
		return false;
	}
	
	if(newuserpassword.length<6 ||newuserpassword.length>20) {
		alert("输入的新密码长度错误，密码应为6-20位的由数字和字母组成！！");
		document.getElementById("newuserpassword").focus();
		return false;
	}
	
	var flag1 = 0;
	var flag2 = 0;
	
	for(var i = 0;i<newuserpassword.length;i++) {
		if(newuserpassword[i]>='0' && newuserpassword[i]<='9') {
			flag1 = 1;
		} else if((newuserpassword[i]>='a'&&newuserpassword[i]<='z')||(newuserpassword[i]>='A'&&newuserpassword[i]<='Z')) {
			flag2 = 1;
		}
		
		if(flag1 == 1 && flag2 == 1) {
			break;
		}
		
	}
	
	if(flag1 == 0 || flag2 == 0) {
		alert("输入的新密码格式错误，密码应为6-20位的由数字和字母组成！！");
		document.getElementById("newuserpassword").focus();
		return false;
	}
	
	if(newuserpassword != renewuserpassword) {
		alert("新密码和验证密码不相等！");
		document.getElementById("renewuserpassword").focus();
		return false;
	}
}
</script>
</head>
<body>
  <form action="changeinfo.jsp" action = "post" onsubmit = "return localReview();">
    <table style = "text-align: center;position: absolute;left: 100px;top: 30px;">
      <tbody>
        <tr height = "100px;">
          <td style = "width: 300px;text-align: right;">原始密码</td>
          <td style = "width: 500px;"><input name = "userpassword" id = "userpassword" type = "password" style = "width: 300px;height: 30px;line-height: 30px;font-size: 14px;" placeholder = "原始密码" onfocus = "placeholder = ''" onblur = "placeholder = '原始密码'"></td>
        </tr>
        <tr height = "100px;">
          <td style = "width: 300px;text-align: right;">新密码</td>
          <td><input name = "newuserpassword" id = "newuserpassword" type = "password" style = "width: 300px;height: 30px;line-height: 30px;font-size: 14px;" placeholder = "新密码" onfocus = "placeholder = ''" onblur = "placeholder = '新密码'"></td>
        </tr>
        <tr height = "100px;">
          <td style = "width: 300px;text-align: right;">验证密码</td>
          <td><input name = "renewuserpassword" id = "renewuserpassword" type = "password" style = "width: 300px;height: 30px;line-height: 30px;font-size: 14px;" placeholder = "重复新密码" onfocus = "placeholder = ''" onblur = "placeholder = '重复新密码'"></td>
        </tr>
        <tr height = "100px;">
          <td colspan = "2">
            <input name = "submit" type = "submit" value = "确认" style = "width: 100px;height: 30px;cursor: pointer;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type = "reset" value = "重置" style = "width: 100px;height: 30px;cursor: pointer;">
          </td>
        </tr>
      </tbody>
    </table>
  </form>
  

 <jsp:useBean id="db" class = "bean.JDBConnection"></jsp:useBean>
  <%
  	String username = (String) session.getAttribute("username");
  	String userpassword = request.getParameter("userpassword");
	String olduserpassword = "";
  	String newuserpassword = request.getParameter("newuserpassword");
  	String submit = request.getParameter("submit");
  	
  	if(submit != null && !submit.equals("") ) {

  		if(db.createConnection() == true) {
  			String sql = "select * from userInfo where username = '"+username+"'";
  			ResultSet rs = db.executeQuery(sql);
  			
  			while(rs.next()) {
  				olduserpassword = rs.getString(2);
  			}
  		}
  		
  		if(!olduserpassword.equals(userpassword)) {
  			%>
  			<script type="text/javascript">
  			  alert("原始密码不正确！");
  			  window.location = "changeinfo.jsp";
  			</script>
  			<%
  		} else {
  			String sql = "update userinfo set userpassword = '"+newuserpassword+"' where username = '"+username+"'";
  			
  			Boolean flag = db.executeUpdate(sql);
  			
  			if(flag == true) {
  				%>
  				<script type="text/javascript">
  				  alert("修改密码成功！");
  				  window.location = "changeinfo.jsp";
  				</script>
  				<%
  			} else {
  				%>
  				<script type="text/javascript">
  				  alert("修改密码失败！");
  				  window.location = "changeinfo.jsp";
  				</script>
  				<%
  			}
  		}
  	}
  %>
</body>
</html>