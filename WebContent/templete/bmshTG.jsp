<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门审核通过</title>
</head>
<body>
  <jsp:useBean id="db" class = "bean.JDBConnection"/>
  <%
  	String jsxqname = request.getParameter("jsxqname");
	
	if(db.createConnection() == true) {
		String sql = "update listInfo set bmsh = '1' where jsxqname = '"+jsxqname+"'";
		
		boolean flag = db.executeUpdate(sql);
		
		if(flag == true) {
			%>
			<script type="text/javascript">
			  alert("审核成功！");
			  window.location = "checkSecond.jsp";
			</script>
			<%
		} else {
			%>
			<script type="text/javascript">
			  alert("审核失败！");
			  window.history.go(-1);;
			</script>
			<%
		}
	}
  %>
</body>
</html>