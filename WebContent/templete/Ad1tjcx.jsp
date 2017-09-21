<%@ page language="java" contentType="text/html; charset=utf-8"  import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>统计查询1</title>
</head>
<body>
<p style = "text-align: center;font-size: 30px;font-weight: bold;">统计查询1</p>
<jsp:useBean id="db" class = "bean.JDBConnection"></jsp:useBean>
  <%
  	
  	if(db.createConnection() == true) {
  		String sql = "select * from listinfo where xssh = '0'";
  		
  		ResultSet rs = db.executeQuery(sql);
  		
  		%>
  		<div style = "position: absolute;left: 50px;top: 70px;">
  		  <table>
  		    <tr>
  		      <td><span>机构全称</span><input id = "agencyname" type = "text"></td>
  		      <td><span>归口管理单位</span><input id = "agencyname" type = "text"></td>
  		      <td><span>所在地域</span><input id = "agencyname" type = "text"></td>
  		      <td><span>法人代表</span><input id = "agencyname" type = "text"></td>
  		    </tr>
  		    <tr>
  		      <td><span>联系人</span><input id = "agencyname" type = "text"></td>
  		      <td><span>机构属性</span><input id = "agencyname" type = "text"></td>
  		      <td><span>技术需求名称</span><input id = "agencyname" type = "text"></td>
  		      <td><span>关键字</span><input id = "agencyname" type = "text"></td>
  		    </tr>
  		    <tr>
  		      <td><span>拟投入总金额</span><input id = "agencyname" type = "text"></td>
  		      <td><span>技术需求解决方案</span><input id = "agencyname" type = "text"></td>
  		      <td><span>科技活动类型</span><input id = "agencyname" type = "text"></td>
  		      <td><span>学科分类</span><input id = "agencyname" type = "text"></td>
  		    </tr>
  		    <tr>
  		      <td><span>需求技术所属领域</span><input id = "agencyname" type = "text"></td>
  		      <td><span>需求技术应用行业</span><input id = "agencyname" type = "text"></td>
  		      <td><span>管理处室</span><input id = "agencyname" type = "text"></td>
  		      <td><button>查询</button></td>
  		    </tr>
  		  </table>
  		</div>
  		<table border = "1" cellspacing = "0" cellpadding = "0" style = "position: absolute;left: 50px;top: 200px;text-align: center;">
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
  		  		      <a href = "xssh_check.jsp?number=<%=number %>" style = "text-decoration: none;">查看详情</a>
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