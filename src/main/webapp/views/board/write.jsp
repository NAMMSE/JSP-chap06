<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글 작성</title>
</head>
<body>
	
	<h3>글 작성하기</h3>
	<hr />
	<form action="./write" method="POST">
		<input type="text" name="title" placeholder="제목을 입력하세요.." /><br /><br />
		<textarea name="content" cols="50" rows="10" placeholder="내용을 입력하세요.."></textarea><br />
		<input type="submit" value="작성하기" />
	</form>

</body>
</html>