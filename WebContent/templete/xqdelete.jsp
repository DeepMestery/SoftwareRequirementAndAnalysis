<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除需求</title>
</head>
<body>
<jsp:useBean id="db" class="bean.JDBConnection" />
<%
	String number = request.getParameter("number");

	if (db.createConnection() == true) {
		String sql = "delete from listinfo where number = '" + number + "'";

		Boolean flag = db.executeUpdate(sql);

		if (flag == true) {
			%>
			<script type="text/javascript">
		  	  alert("删除成功！");
		  	  window.location = "management.jsp";
			</script>
	 		<%
		} else {
			%>
			<script type="text/javascript">
			  alert("删除失败！");
			  window.location = "management.jsp"
			</script>
			 <%
		}
	}
%>
</body>
</html>