<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - pageContext</title>
</head>
<body>

<form method="POST" action="login_proc.jsp">
아이디 : <input type="text" name="id" size=20 /><br />
비밀번호: <input  type="password"  name="password" size=20 /><br />
<input  type="submit" value="로그인" /> <input type="reset" value="다시입력"  />
</form> 
<br /><br />
<!--  <a href="http://localhost:8090/myShop/ch14/join_member.jsp.jsp">회원가입하기</a> -->
<%--   <a href="<%=request.getContextPath() %>/ch14/join_member.jsp.jsp">회원가입하기</a>  --%>
<a href="${pageContext.request.contextPath}/ch14/join_member.jsp">회원가입하기</a>

</body>
</html>