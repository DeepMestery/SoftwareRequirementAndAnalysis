<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang = "zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel = "stylesheet" href = "css/publicStyle.css">
<script type="text/javascript" src = "js/publicButton.js"></script>
<title>清单状态</title>
</head>
<body>
  <%
    String username = (String)session.getAttribute("username"); 
    session.setAttribute("username", username);
  %>
  
  <div class = "header">
    <p style = "text-align: right;">欢迎您，<span style = "font-weight: bold;"><%= username %></span></p>
  </div>
  
  
  <div class = "title">
    <ul>
      <li><button class = "button b1" style = "button" onclick = "firstBut();">首页</button></li>
      <li><button class = "button b2" style = "button" onclick = "secondBut();">填写清单</button></li>
      <li><button class = "button b3" style = "button" onclick = "thirdBut();">清单状态</button></li>
      <li><button class = "button b2" style = "button" onclick = "forthBut();">修改个人信息</button></li>
      <li><button class = "button b3" style = "button" onclick = "fifthBut();">退出</button> </li>
    </ul>
  </div>
  
  <div class = "content">

  </div>
  
  <div class = "footer">
    <p>Copyright 2016 hebei China All Rights Reserved</p><br>
    <p>河北省政府技术需求填报网站 河北省人民政府办公厅主办</p><br>
    <p>河北省人民政府版权所有 冀ICP备字xxxxxxxx号</p><br>
  </div>

</body>
</html>