<%@ page language="java" contentType="text/html; charset=UTF-8" import = "java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户详情</title>
</head>
<script type="text/javascript">
function back() {
	window.history.go(-1);
}
</script>
<body>
<p style = "text-align: center;font-size: 30px;font-weight: bold;">形式审核</p>
<jsp:useBean id="db" class = "bean.JDBConnection"></jsp:useBean>
  <%
  	String username = request.getParameter("username");
  	
  	if(db.createConnection() == true) {
  		String sql = "select * from listinfo where username = '"+username+"'";
  		
  		ResultSet rs = db.executeQuery(sql);
  		
  		%>
  		<table border = "1" cellspacing = "0" cellpadding = "0" style = "position: absolute;left: 50px;top: 100px;text-align: center;">
  		  <thead>
  		    <tr>
  		      <td style = "width: 100px;height: 80px;">用户名</td>
  		      <td style = "width: 300px;">用户密码</td>
  		      <td style = "width: 300px;">机构名称</td>
  		      <td style = "width: 200px;">真实姓名</td>
  		      <td style = "width: 200px;">身份证号</td>
  	  	    </tr>
  		  </thead>
  		  <tbody>
  		  <%
  		  	while(rs.next()) {
  		  		%>
  		  		  <tr>
  		  		    <td style = "height: 50px;"><%=rs.getString(1) %></td>
  		  		    <td><%=rs.getString(2) %></td>
  		  		    <td><%=rs.getString(3) %></td>
  		  		    <td><%=rs.getString(4) %></td>
  		  		    <td><%=rs.getString(5) %></td>
  		  		  </tr>
  		  		<%
  		  	}
  		  %>
  		  <tr>
  		    <td><button onclick = "back();">返回</button></td>
  		  </tr>
  		  </tbody>
  		</table>
  		<%
  	}
  %>
</body>
</html>