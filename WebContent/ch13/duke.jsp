<%@page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name" ) ;
	String imgName = request.getParameter("imgName" ) ;
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Duke</title>
</head>
<body>
<h1>이름은 <%=URLDecoder.decode(name, "UTF-8") %>입니다. </h1><br /><br />
<img src="../image/<%=imgName %>"  />
</body>
</html>