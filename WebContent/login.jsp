<%@ page language="java" contentType="text/html; charset=utf-8" import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang = "zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link >
<script type="text/javascript" src = "js/login.js"></script>
<title>验证登录中...</title>
</head>
<body>
<jsp:useBean id="db" class = "bean.JDBConnection" />
<% %>

<%
	request.setCharacterEncoding("UTF-8");
	String rand = (String)session.getAttribute("rand");
	
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String randcode = request.getParameter("randcode");
	
	String agencyname = "";
	String level = "";
	
	if(!rand.equals(randcode)) {
		%>
		<script type="text/javascript">
		  alert("验证码错误！");
		  window.location = "login.html";
		</script>
		<%
	}

	if(db.createConnection() == true) {
		String sql = "select * from userInfo where username = '"+username+"'";
		ResultSet rs = db.executeQuery(sql);
		
		int flag = 0;
		
		while(rs.next()) {
			flag = 1;
			if(password.equals(rs.getString(2))) {
				flag = 2;
				agencyname = rs.getString(3);
				level = rs.getString(6);
			}
		}
		
		if(flag == 2) {
			db.closeConnection();
			
			session.setAttribute("username", username);
			session.setAttribute("agencyname", agencyname);
			session.setAttribute("level", level);
			
			%>
			<script type="text/javascript">
			alert("登陆成功，欢迎使用！");
			window.location = "main.html";
			</script>
			<%
		} else if(flag == 1) {
			db.closeConnection();
			%>
			<script type="text/javascript">
			alert("密码错误！");
			window.location = "login.html";
			</script>
			<%
		} else {
  			db.closeConnection();
  			%>
  			<script type="text/javascript">
  			  alert("该用户不存在！");
  		      window.location = "login.html";
  			</script>
  			<%
		}
	}
%>
</body>
</html>