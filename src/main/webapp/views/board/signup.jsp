<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 페이지</title>
</head>
<body>

	<h3>회원가입 페이지</h3>
	<form action="./signup" method="POST">
	아이디 : <input type="text" name="id"  /><br />
	비밀번호 : <input type="password" name="password" /><br />
	<input type="submit" value="가입하기" />
	</form>

</body>
</html>