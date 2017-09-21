<%@ page language="java" contentType="text/html; charset=utf-8" import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>需求管理</title>
</head>
<body>
    <p style = "text-align: center;font-size: 30px;font-weight: bold;">河北省重大技术需求征集表</p>
<jsp:useBean id="db" class = "bean.JDBConnection"></jsp:useBean>
  <%
  	String username = (String)session.getAttribute("username"); 
  	String agencyname = (String)session.getAttribute("agencyname");
  	
  	if(db.createConnection() == true) {
  		String sql = "select * from listinfo where agencyname = '"+agencyname+"'";
  		
  		ResultSet rs = db.executeQuery(sql);
  		
  		%>
  		<table border = "1" cellspacing = "0" cellpadding = "0" style = "position: absolute;left: 50px;top: 100px;text-align: center;">
  		  <thead>
  		    <tr>
  		      <td style = "width: 100px;height: 80px;">需求编号</td>
  		      <td style = "width: 300px;">需求名称</td>
  		      <td style = "width: 300px;">审核状态</td>
  		      <td style = "width: 200px;">操作</td>
  		      <td style = "width: 150px;"><a href = "fillIn.html"><button style = "width: 120px;height: 40px;cursor: pointer;"><span style = "font-size:15px;font-weight: bold;color: red;">添加技术需求</span></button></a></td>
  	  	    </tr>
  		  </thead>
  		  <tbody>
  		  <%
  		  	while(rs.next()) {
  		  		int number = rs.getInt(1);
  		  		int xssh = rs.getInt(2);
  		  		int bmsh = rs.getInt(4);
  		  		String state = "";
  		  		
  		  		if(xssh == 0 && bmsh == 0) {
  		  			state = "未审核";
  		  		} else if(xssh == 1 && bmsh == 0) {
  		  			state = "形式审核通过，尚未进行部门审核";
  		  		} else if(xssh == 2 && bmsh == 0) {
  		  			state = "形式审核未通过";
  		  		} else if(xssh == 1 && bmsh == 1) {
  		  			state = "审核通过";
  		  		} else if(xssh == 1 && bmsh == 2) {
  		  			state = "部门审核未通过";
  		  		} else {
  		  			state = "审核过程出错";
  		  		}
  		  		
  		  		%>
  		  		  <tr>
  		  		    <td style = "height: 50px;"><%=number %></td>
  		  		    <td><%=rs.getString(21) %></td>
  		  		    <td><%=state %></td>
  		  		    <td colspan = "2">
  		  		    <%
  		  		      if(state.equals("未审核")) {
  		  		    	  %>
  		  		    	  <a href = "xqcheck.jsp?number=<%=number %>" style = "text-decoration: none;">查看</a>&nbsp;
  		  		    	  <a href = "xqchange.jsp?number=<%=number %>" style = "text-decoration: none;">修改</a>&nbsp;
  		  		    	  <a href = "xqdelete.jsp?number=<%=number %>" style = "text-decoration: none;" onclick = "return todelete();">删除</a>
  		  		    	  <%
  		  		      } else if(state.equals("形式审核通过，尚未进行部门审核")) {
  		  		    	  %>
  		  		    	  <a href = "xqcheck.jsp?number=<%=number %>" style = "text-decoration: none;">查看</a>&nbsp;
  		  		    	  <a href = "xqdelete.jsp?number=<%=number %>" style = "text-decoration: none;" onclick = "return todelete();">删除</a>
  		  		    	  <%
  		  		      } else if(state.equals("形式审核未通过")) {
  		  		    	  %>
  		  		    	  <a href = "xqcheck.jsp?number=<%=number %>" style = "text-decoration: none;">查看</a>&nbsp;
  		  		    	  <a href = "xqchange.jsp?number=<%=number %>" style = "text-decoration: none;">修改</a>&nbsp;
  		  		    	  <a href = "xqdelete.jsp?number=<%=number %>" style = "text-decoration: none;" onclick = "return todelete();">删除</a>
  		  		    	  <%
  		  		      } else if(state.equals("部门审核未通过")) {
  		  		    	  %>
  		  		    	  <a href = "xqcheck.jsp?number=<%=number %>" style = "text-decoration: none;">查看</a>&nbsp;
  		  		    	  <a href = "xqchange.jsp?number=<%=number %>" style = "text-decoration: none;">修改</a>&nbsp;
  		  		    	  <a href = "xqdelete.jsp?number=<%=number %>" style = "text-decoration: none;" onclick = "return todelete();">删除</a>
  		  		    	  <%
  		  		      } else if(state.equals("审核通过")) {
  		  		    	  %>
  		  		    	  <a href = "xqcheck.jsp?number=<%=number %>" style = "text-decoration: none;">查看</a>
  		  		    	  <%
  		  		      }
  		  		    %>
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
<script type="text/javascript">
function todelete() {
	var con = confirm("确认删除？");
	
	if(con == true) {
		return true;
	} else {
		return false;
	}
}
</script>
</html>