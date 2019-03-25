<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다국여 변환 시험</title>
</head>
<body>
<h1>다국여 변환 시험</h1>

<fmt:setLocale value="en_US" />
<%-- <fmt:setLocale value="ko_KR" /> --%>

<h2>
<fmt:bundle basename="resource.member" >
이름 : <fmt:message key="member.name" /><br />
주소 : <fmt:message key="member.address" /><br />
직업 : <fmt:message key="member.job" />
</fmt:bundle>
</h2>
</body>
</html>