<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
<h1>회원 가입</h1>

<!-- <form method="post"   action="join_proc.jsp"> -->
<form method="post"   action="forward.jsp">
<table  align="center">
<tr>
	<td width="200"><p align="right">아이디</td>
	<td width="400"><input type="text" name="id"></td>
</tr>
<tr>
	<td width="200"><p align="right">비밀번호</td>
	<td width="400"><input type="password"  name="password"></td>
</tr>
<tr>
	<td width="200"><p align="right">이름</td>
	<td width="400"><p><input type="text"  name="name"></td>
</tr>
<tr>
	<td width="200"><p align="right">이메일</td>
	<td width="400"><p><input type="text"  name="email"></td>
</tr>
<tr>
	<td width="200"><p>&nbsp;</p></td>
	<td width="400">
		<input type="submit" value="가입하기">
		<input type="reset" value="다시입력">
	</td>
</tr>
</table>
</form>
</body>
</html>