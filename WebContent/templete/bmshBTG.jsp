<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门审核不通过</title>
</head>
<body>
  <jsp:useBean id="db" class = "bean.JDBConnection"/>
  <%
  	String jsxqname = request.getParameter("jsxqname");
	String bmshyj = request.getParameter("bmshyj");
	
	if(db.createConnection() == true) {
		String sql = "update listInfo set bmshyj = '"+bmshyj+"',bmsh = '2' where jsxqname = '"+jsxqname+"'";
		
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