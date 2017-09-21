<%@ page language="java" contentType="text/html; charset=utf-8" import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户信息</title>
</head>
<body>
  <jsp:useBean id="db" class = "bean.JDBConnection"></jsp:useBean>
  <%
    String username = (String) session.getAttribute("username");
  	String agencyname = "";
  	String realname = "";
  	String id = "";
  
  	if(db.createConnection() == true) {
  		String sql = "select * from userInfo where username = '"+username+"'";
  		ResultSet rs = db.executeQuery(sql);
  		
  		while(rs.next()) {
  			agencyname = rs.getString(3);
  			realname = rs.getString(4);
  			id = rs.getString(5);
  		}
  	}
  %>

  <table border = "1px solid black" cellpadding = "0" cellspacing = "0" 
  		style = "text-align: center;position: absolute;left: 180px;top: 50px;">
    <tbody>
      <tr style = "height: 70px;">
        <td style = "width: 350px;">用户名</td>
        <td style = "width: 350px;"><label><%= username %></label></td>
      </tr>
      <tr style = "height: 70px;">
        <td>机构名称</td>
        <td><label><%= agencyname %></label></td>
      </tr>
      <tr style = "height: 70px;">
        <td>真实姓名</td>
        <td><label><%= realname %></label></td>
      </tr>
      <tr style = "height: 70px;">
        <td>身份证号</td>
        <td><label><%= id %></label></td>
      </tr>
    </tbody>
  </table>
</body>
</html>