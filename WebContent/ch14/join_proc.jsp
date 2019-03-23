<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String  id=request.getParameter("id");
	String  pwd = request.getParameter("password");
	String  name = request.getParameter("name");
	String  email = request.getParameter("email");
	String  address = (String)request.getAttribute("address");
// 	String  address = request.getParameter("address");
%>
<jsp:useBean  id="member" class="ch13.Member" />
<jsp:setProperty  name="member" property="*" />
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
<td><%=id %> </td>
<td><%=pwd%> </td>
<td><%=name %> </td>
<td><%=email %> </td>
<td><%=address %> </td>
</tr>   
<tr align=center>
<td>${param.id } </td>
<td>${param.password } </td>
<td>${param.name } </td>
<td>${param.email }</td>
<td>${requestScope.address }</td>
</tr>
<tr align=center>
<td>${member.id } </td>
<td>${member.password } </td>
<td>${member.name } </td>
<td>${member.email }</td>
<td>${requestScope.address }</td>
</tr>
</table>
</div>
</body>
</html>