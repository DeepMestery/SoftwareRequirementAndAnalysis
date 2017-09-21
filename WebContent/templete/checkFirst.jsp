<%@ page language="java" contentType="text/html; charset=utf-8"  import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>形式审核</title>
</head>
<body>
<p style = "text-align: center;font-size: 30px;font-weight: bold;">形式审核</p>
<jsp:useBean id="db" class = "bean.JDBConnection"></jsp:useBean>
  <%
  	
  	if(db.createConnection() == true) {
  		String sql = "select * from listinfo where xssh = '0'";
  		
  		ResultSet rs = db.executeQuery(sql);
  		
  		%>
  		<table border = "1" cellspacing = "0" cellpadding = "0" style = "position: absolute;left: 50px;top: 100px;text-align: center;">
  		  <thead>
  		    <tr>
  		      <td style = "width: 100px;height: 80px;">需求编号</td>
  		      <td style = "width: 300px;">需求名称</td>
  		      <td style = "width: 300px;">申请机构</td>
  		      <td style = "width: 200px;">操作</td>
  	  	    </tr>
  		  </thead>
  		  <tbody>
  		  <%
  		  	while(rs.next()) {
  		  		int number = rs.getInt(1);
  		  		%>
  		  		  <tr>
  		  		    <td style = "height: 50px;"><%=number %></td>
  		  		    <td><%=rs.getString(21) %></td>
  		  		    <td><%=rs.getString(7) %></td>
  		  		    <td colspan = "2">
  		  		      <a href = "xsshST.jsp?number=<%=number %>" style = "text-decoration: none;">开始审核</a>
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