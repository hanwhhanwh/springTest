<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL(Expression Language)</title>
</head>
<body>
<h1>EL(Expression Language)</h1>

<h2>EL 기본 사용</h2>
<h3>
\${100}: ${100}<br />
\${"안녕하세요"}: ${"안녕하세요"}<br />
\${10+1}: ${10+1}<br />
\${"10"+1} : ${"10"+1 }<br />

\${null+10 }: ${null+10 }<br /> 
\${"안녕"+11 }: \${"안녕"+11 } ; 문자열과 숫자는 더할 수 없고, 오류가 발생함<br /> 
\${"hello"+"world"}:\${"hello"+"world"} ; 문자열과 문자열은 더할 수 없고, 오류가 발생함<br /> 
</h3>

<h2>EL 산술 연산자 사용</h2>
<h3>
\${10+10}  : ${10+10} <br />
\${20-10}  : ${20-10}  <br />
\${10*10}  : ${10*10} <br />
\${100/9} : ${100/9} <br />
\${100 div 9} : ${100 div 9} <br />
\${100%9} : ${100%9}<br />
\${100 mod 9} : ${100 mod 9}<br />
</h3>

<h2>EL 논리 연산자 사용</h2>
<h3>
\${(10==10) && (20==20)}  : ${(10==10)&&(20==20)} <br />
\${(10==10) and (20!=20)}  : ${(10==10) and (20!=20)} <br /><br />

\${(10==10) || (20!=30)}  : ${(10==10)||(20==30)} <br />
\${(10!=10) or (20!=20)}  : ${(10!=10) or (20!=20)} <br /><br />

\${!(20==10)}  : ${!(20==10)}<br />
\${not (20==10)}  : ${not (20==10)}<br /><br />

\${!(20!=10)}  : ${!(20!=10)}<br />
\${not(20!=10)}  : ${not(20!=10)}<br /><br />       
</h3>

<h2>EL 비교 연산자 사용</h2>
<h3>
\${"hello" != "apple" } : ${"hello" != "apple" }<br />
\${"hello" ne "apple" } : ${"hello" ne "apple" }<br />
</h3>

<h2>EL 논리 연산자 사용</h2>
<h3>
\${empty m1 } : ${empty m1 } <br />
\${not empty m1 } : ${not empty m1 } <br /><br />

\${empty m2 } : ${empty m2 } <br />
\${not empty m2} : ${not empty m2 } <br /><br />

\${empty "hello"} : ${empty "hello" }<br />
\${empty null} : ${empty null } <br />
\${empty ""} : ${empty "" } <br />
</h3>

</body>
</html>