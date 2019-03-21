<%@page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action tag - forward</title>
</head>
<body>
<h1>Action tag - forward</h1>
<br /><br />

<jsp:forward  page="duke.jsp" >
	<jsp:param name="name"  value='<%=URLEncoder.encode("듀크1(Duke)", "UTF-8") %>' />
	<jsp:param name="imgName"  value="duke.png" />
</jsp:forward>
</body>
</html>