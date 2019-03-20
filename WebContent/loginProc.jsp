<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Result</title>
</head>
<body>
<h1>Login Result</h1>
<%
	request.setCharacterEncoding("utf-8");
	String strUserID = request.getParameter("user_id");
	String strPassword = request.getParameter("password");
%>	
<h2>아이디  : <%= strUserID %></h2>
<h2>비밀번호: <%= strPassword %></h2>
</body>
</html>