<%@page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include - Action Tag</title>
</head>
<body>
<h1>Include - Action Tag</h1><br /><br /><br />

안녕하세요. 쇼핑몰 중심 JSP 시작입니다!!!
<br>
<jsp:include  page="duke.jsp"  flush="true" >
	<jsp:param name="name"  value='<%=URLEncoder.encode("듀크1(Duke)", "UTF-8") %>' />
	<jsp:param name="imgName"  value="duke.png" />
</jsp:include>
<br />
안녕하세요. 쇼핑몰 중심 JSP 끝 부분입니다.!!!
</body>
</body>
</html>