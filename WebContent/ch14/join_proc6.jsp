<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,ch13.*" isELIgnored="false" pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set  var="id"  value="hong"  scope="page" />
<c:set  var="password"  value="1234"  scope="page" />
<c:set  var="name"  value="${'홍길동'}"  scope="page" />
<c:set  var="email"  value="${'hong@google.com'}"  scope="page" />
<c:set  var="address"  value="${'강원도 홍길동'}"  scope="page" />
<c:set  var="age"  value="${22}"  scope="page" />
<c:set  var="height"  value="${177}"  scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리</title>
</head>
<body>
<h1>회원 가입 처리</h1>
<div align="center"><table border="1">
<tr align="center" bgcolor="#99ccff">
<td width="20%"><b>아이디</b></td>
<td width="20%"><b>비밀번호</b></td>
<td width="20%" ><b>이름</b></td>
<td width="20%"><b>이메일</b></td>
<td width="20%"><b>주소</b></td>
</tr>
<tr align=center>
<td>${id } </td>
<td>${password } </td>
<td>${name } </td>
<td>${email }</td>
<td>${address }</td>
</tr>
<tr align=center>
<td>${member.id } </td>
<td>${member.password } </td>
<td>${member.name } </td>
<td>${member.email }</td>
<td>${address }</td>
</tr>
<% for(int nIndex = 0 ; nIndex < 2 ; nIndex ++) { %>
<tr align=center>
<td>${membersList[0].id } </td>
<td>${membersList[0].password } </td>
<td>${membersList[nIndex].name } </td>
<td>${membersList[nIndex].email }</td>
<td>${membersList[nIndex].address }</td>
</tr>
<% } %>
</table>
</div>
</body>
</html>