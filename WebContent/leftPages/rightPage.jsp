<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>跳转左部分界面</title>
</head>
<body>
<%
	String level = (String) session.getAttribute("level");

	if(level.equals("0")) {
		%>
		<script type="text/javascript">
		  window.location = "accordition.html";
		</script>
		<%
	} else if(level.equals("1")) {
		%>
		<script type="text/javascript">
		  window.location = "accorditionAdmin1.html";
		</script>
		<%
	} else if(level.equals("2")) {
		%>
		<script type="text/javascript">
		  window.location = "accorditionAdmin2.html";
		</script>
		<%
	} else if(level.equals("3")) {
		%>
		<script type="text/javascript">
		  window.location = "accorditionAdmin.html";
		</script>
		<%
	}
%>
</body>
</html>