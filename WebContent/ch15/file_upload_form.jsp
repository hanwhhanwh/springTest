<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 시험</title>
</head>
<body>
<h1>파일 업로드 시험</h1>
<form action="/myShop/upload.do"  method="post" enctype="multipart/form-data" >
파일1: <input type="file" name="file1" ><br />
파일2: <input type="file" name="file2" ><br />
파라미터1: <input type="text" name="param1" ><br />
파라미터2: <input type="text" name="param2" ><br />
파라미터3: <input type="text" name="param3" ><br />
<input type="submit" value="업로드" >
</form>
</body>
</html>