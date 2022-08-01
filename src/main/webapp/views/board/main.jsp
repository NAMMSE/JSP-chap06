<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메인페이지</title>
</head>
<body>

	<h3>메인 페이지입니다.</h3>
	<div style="color:grey;">현재 로그인된 id : ${id }입니다.</div>
	<hr />
	<form action="./write_form" method="POST">
		<input type="submit" value="글쓰기" />
	</form>
	<form action="">
		<input type="submit" value="게시판 가기" />
	</form>
	
	
	

</body>
</html>