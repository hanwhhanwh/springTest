<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 변환</title>
</head>
<body>
<%
	String strScore = request.getParameter("score");
	if ( (strScore == null) || (strScore.length() == 0) ) {
%>
<h1>시험 점수를 입력해 주세요</h1>
<form method=get action="convertScore.jsp">
시험점수  :<input type=text  name="score" /> <br>
<input type ="submit" value="변환하기">
</form>
<%
	} else {
		request.setCharacterEncoding("utf-8");
		int nScore = Integer.parseInt(strScore);
		out.println("<h1>시험 점수 : " + strScore + "</h1>");
		if ( nScore >= 90)
			out.println("<h1>A학점 입니다.</h1>");
		else if ( nScore >= 80)
			out.println("<h1>B학점 입니다.</h1>");
		else if ( nScore >= 70)
			out.println("<h1>C학점 입니다.</h1>");
		else if ( nScore >= 60)
			out.println("<h1>D학점 입니다.</h1>");
		else
			out.println("<h1>F학점 입니다.</h1>");
%>
<a href="convertScore.jsp">시험점수 입력</a>
<%
	}
%>
</body>
</html>