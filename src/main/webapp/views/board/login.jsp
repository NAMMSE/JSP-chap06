<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
</head>
<body>

	<h3>로그인 페이지</h3>
	<form action="./login" method="POST">
		아이디 : <input type="text"  name="id"/><br />
		비밀번호 : <input type="password" name="password" /><br />
		<input type="submit" value="로그인" />
	</form>
	<form action="./signup_form"><input type="submit" value="회원가입하기" /></form>
</body>
</html>