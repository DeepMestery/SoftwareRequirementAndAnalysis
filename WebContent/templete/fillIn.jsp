<%@ page language="java" contentType="text/html; charset=utf-8" import = "java.sql.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>需求提交。。。</title>
</head>
<body>
  <jsp:useBean id="db" class = "bean.JDBConnection" />
  <%
  	String username = (String) session.getAttribute("username");
  	String agencyname = (String) session.getAttribute("agencyname");
  	
  	if(!agencyname.equals(request.getParameter("listagencyname"))) {
  		%>
  		<script type="text/javascript">
  		  alert("机构全称不正确！");
  		  window.location = "fillIn.html";
  		</script>
  		<%
  	}
  	
	String belong = request.getParameter("belong");
	String loc = request.getParameter("loc");
	String place = request.getParameter("place");
	String website = request.getParameter("website");
	String email = request.getParameter("email");
	String represent = request.getParameter("represent");
	String postcode = request.getParameter("postcode");
	String linkperson = request.getParameter("linkperson");
	String phone = request.getParameter("phone");
	String telephone = request.getParameter("telephone");
	String fax = request.getParameter("fax");
	
	String MEtype = request.getParameter("MEtype");
	
	String ta1 = request.getParameter("ta1");
	String jsxqname = request.getParameter("jsxqname");
	String xqlimit1 = request.getParameter("xqlimit1");
	String xqlimit2 = request.getParameter("xqlimit2");
	String ta2 = request.getParameter("ta2");
	String ta3 = request.getParameter("ta3");
	String ta4 = request.getParameter("ta4");
	String keyword1 = request.getParameter("keyword1");
	String keyword2 = request.getParameter("keyword2");
	String keyword3 = request.getParameter("keyword3");
	String keyword4 = request.getParameter("keyword4");
	String keyword5 = request.getParameter("keyword5");
	
	String allmoney = request.getParameter("allmoney");
	String resolution = request.getParameter("resolution");
	String workwith = request.getParameter("workwith");
	String TAtype = request.getParameter("TAtype");
	
	String subject1 = request.getParameter("subject1");
	String subject2 = request.getParameter("subject2");
	String subject3 = request.getParameter("subject3");

	String DTfield[] = request.getParameterValues("DTfield");
	String DTf = "";
	
	if(request.getParameterValues("DTfield") == null){
		DTf = "无";
	}else if(DTfield.length == 1) {
		DTf = DTfield[0];
	} else if(DTfield.length == 2) {
		DTf = DTfield[0]+","+DTfield[1];
	} else {
		String test[] = new String[DTfield.length];
		test[1] = DTfield[0]+","+DTfield[1];
		for(int i = 2;i<DTfield.length;i++) {
			test[i] = test[i-1] +","+ DTfield[i];
		}
		DTf = test[test.length-1];
	}
	
	
	String industry1 = request.getParameter("industry1");
	String industry2 = request.getParameter("industry2");
	String industry3 = request.getParameter("industry3");
	String industry4 = request.getParameter("industry4");
  	
	
	if(db.createConnection() == true) {
		
		if(belong == null || belong.equals("")) {
			belong = "无";
		}

		if(website == null || website.equals("")) {
			website = "无";
		}

		if(postcode == null || postcode.equals("")) {
			postcode = "无";
		}

		if(phone == null || phone.equals("")) {
			phone = "无";
		}

		if(fax == null || fax.equals("")) {
			fax = "无";
		}

		if(keyword2 == null || keyword2.equals("")) {
			keyword2 = "无";
		}

		if(keyword3 == null || keyword3.equals("")) {
			keyword3 = "无";
		}

		if(keyword4 == null || keyword4.equals("")) {
			keyword4 = "无";
		}

		if(keyword5 == null || keyword5.equals("")) {
			keyword5 = "无";
		}

		if(allmoney == null || allmoney.equals("")) {
			allmoney = "无";
		}

		if(workwith == null || workwith.equals("")) {
			workwith = "无";
		}
		
		if(TAtype.equals("基础研究")) {
			industry1 = "无";
			industry2 = "无";
			industry3 = "无";
			industry4 = "无";
		} else {
			subject1 = "无";
			subject2 = "无";
			subject3 = "无";
		}
		
		String sql = "insert into listinfo(xssh,xsshyj,bmsh,bmshyj,glcs,agencyname,belong,loc,place,website,email,represent,postcode,linkperson,phone,telephone,fax,MEtype,ta1,jsxqname,xqlimit1,xqlimit2,ta2,ta3,ta4,keyword1,keyword2,keyword3,keyword4,keyword5,allmoney,resolution,workwith,TAtype,subject1,subject2,subject3,DTfield,industry1,industry2,industry3,industry4) values('0','空','0','空','0','"+agencyname+"','"+belong+"','"+loc+"','"+place+"','"+website+"','"+email+"','"+represent+"','"+postcode+"','"+linkperson+"','"+phone+"','"+telephone+"','"+fax+"','"+MEtype+"','"+ta1+"','"+jsxqname+"','"+xqlimit1+"','"+xqlimit2+"','"+ta2+"','"+ta3+"','"+ta4+"','"+keyword1+"','"+keyword2+"','"+keyword3+"','"+keyword4+"','"+keyword5+"','"+allmoney+"','"+resolution+"','"+workwith+"','"+TAtype+"','"+subject1+"','"+subject2+"','"+subject3+"','"+DTf+"','"+industry1+"','"+industry2+"','"+industry3+"','"+industry4+"')";
		
		Boolean flag = db.executeUpdate(sql);
		
		if(flag == true) {
			%>
			<script type="text/javascript">
			  alert("填报成功！");
			  window.location = "fillIn.html";
			</script>
			<%
		} else {
			%>
			<script type="text/javascript">
			  alert("填报失败！");
			  window.location = "fillIn.html";
			</script>
			<%
		}
	}
	
  %>
</body>
</html>