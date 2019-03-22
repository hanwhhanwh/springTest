<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,ch13.*" 
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String  id=request.getParameter("member_id");
	String  pwd = request.getParameter("password");
	String  name = request.getParameter("member_name");
	String  email = request.getParameter("email");
%>
<jsp:useBean  id="m"  class="ch13.Member"  scope="page"/>
<%
//	Member m =  new Member(id, pwd, name, email);
	m.setId(id);
	m.setPasswordd(pwd);
	m.setName(name);
	m.setEmail(email);

	MemberDAO  memberDAO=new MemberDAO();
	memberDAO.addMember(m);
	List<Member> membersList = memberDAO.listMembers();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
</head>
<body>
<h1>회원가입 처리</h1>
<table align="center"  width="100%">
<tr align="center" bgcolor="#99ccff">
	<td width="7%" >아이디</td>
	<td width="7%">비밀번호</td>
	<td width="5%" >이름</td>
	<td width="11%" >이메일</td>
	<td width="5%" >가입일</td>
</tr>
<%
	if(membersList.size()==0){
%>
<tr>
	<td colspan="5">
		<p align="center"><b><span style="font-size:9pt;">등록된 회원이  없습니다.</span></b></p>
	</td>
</tr>
<%
	}else{
		for( int i = 0; i < membersList.size(); i++ ) {
			Member bean = (Member) membersList.get(i);
%>
<tr align="center">
	<td><%=bean.getId() %></td>
	<td><%=bean.getPassword() %></td>
	<td><%=bean.getName() %></td>
	<td><%=bean.getEmail() %></td>
	<td><%=bean.getJoinDate() %></td>
</tr>
<%
		} // end for

	} // end if
%>
<tr height="1" bgcolor="#99ccff">
	<td colspan="5"></td>
</tr>
</table>
</body>
</body>
</html>