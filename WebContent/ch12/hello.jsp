<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "한원희";
	public String getName(){ return name;}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
</head>
<body>
<h1>Hello JSP</h1>
<%
	// 나이를 받아옴
	String strAge = request.getParameter("age");
	if (strAge == null)
		strAge = "20";
%>
나의 이름은 <%=getName()%> 입니다.<br />
나이는 <%=strAge %>살 입니다.
<%-- 키는 <%=180 %>cm 입니다. --%>
</body>
</html>