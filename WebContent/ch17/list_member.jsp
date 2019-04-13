<%@ page language="java" contentType="text/html; charset=UTF-8"
	import=" java.util.*, ch17.*"
	pageEncoding="UTF-8"
	isELIgnored="false" 
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.cls1 {
		font-size:40px;
		text-align:center;
	}
	
	.cls2 {
		font-size:20px;
		text-align:center;
	}
  </style>
  
</head>
<body>
<p class="cls1">회원 목록</p>
<table align="center" border="1" >
<tr align="center" bgcolor="lightgreen">
	<td width="7%" ><b>아이디</b></td>
	<td width="7%" ><b>비밀번호</b></td>
	<td width="7%" ><b>이름</b></td>
	<td width="7%"><b>이메일</b></td>
	<td width="7%" ><b>가입일</b></td>
	<td width="7%" ><b>관리</b></td>
</tr>

<c:choose>
<c:when test="${ membersList==null}" >
<tr>
	<td colspan=6>
		<b>등록된 회원이 없습니다.</b>
	</td>  
</tr>
</c:when>  
<c:when test="${membersList != null }" >
<c:forEach  var="mem" items="${membersList }" >
<tr align="center">
	<td>${mem.id }</td>
	<td>${mem.password }</td>
	<td>${mem.name}</td>     
	<td>${mem.email }</td>     
	<td>${mem.joinDate}</td>
	<td><a href="/myShop/member/modify?member_id=${mem.id }">수정</a> <a href="/myShop/member/delete?member_id=${mem.id }">삭제</a></td>     
</tr>
</c:forEach>
</c:when>
</c:choose>
</table>  
<a href="#"><p class="cls2">회원 가입하기</p></a>
</body>
</html>