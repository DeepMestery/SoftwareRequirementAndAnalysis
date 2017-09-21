<%@ page language="java" contentType="text/html; charset=UTF-8" import = "java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
</head>
<body>
  <p style = "text-align: center;font-size: 30px;font-weight: bold;">用户管理</p>
<jsp:useBean id="db" class = "bean.JDBConnection"></jsp:useBean>
  <%
  
  	if(db.createConnection() == true) {
  		String sql = "select * from userinfo";
  		
  		ResultSet rs = db.executeQuery(sql);
  		
  		%>
  		<table border = "1" cellspacing = "0" cellpadding = "0" style = "position: absolute;left: 50px;top: 100px;text-align: center;">
  		  <thead>
  		    <tr>
  		      <td style = "width: 100px;height: 80px;">用户名</td>
  		      <td style = "width: 300px;">机构单位</td>
  		      <td style = "width: 300px;">身份等级</td>
  		      <td style = "width: 200px;">操作</td>
  	  	    </tr>
  		  </thead>
  		  <tbody>
  		  <%
  		  	while(rs.next()) {
  		  		String username = rs.getString(1);
  		  		String agencyname = rs.getString(3);
  		  		int userlevel = rs.getInt(6);  		  		
  		  		%>
  		  		  <tr>
  		  		    <td style = "height: 50px;"><%=username %></td>
  		  		    <td><%=agencyname %></td>
  		  		    <td><%=userlevel %></td>
  		  		    <td colspan = "2">
  		  		      <a href = "umcheck.jsp?username=<%=username %>" style = "text-decoration: none;">查看详情</a>
  		  		    </td>
  		  		  </tr>
  		  		<%
  		  	}
  		  %>
  		  </tbody>
  		</table>
  		<%
  	}
  %>
</body>
</html>