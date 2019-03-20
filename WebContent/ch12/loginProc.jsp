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
	
	if ( (strUserID == null) || (strUserID.length() == 0) )
	{
%>	
아이디를 입력해 주시기 바랍니다.<br />
<a href="/myShop/login.html">로그인하기</a>
<%
	} else {
		if (strUserID.equals("admin")) {
%>
<h2>관리자로 로그인 하셨습니다.</h2>
<input type=button value="회원정보 삭제하기" />
<input type=button value="회원정보 수정하기" /><br />
<%
		} else {
%>
로그인이 성공하였습니다. 입력한 정보는 아래와 같습니다.
<h2>아이디  : <%= strUserID %></h2>
<h2>비밀번호: <%= strPassword %></h2>
<%
		}
	}
%>
</body>
</html>