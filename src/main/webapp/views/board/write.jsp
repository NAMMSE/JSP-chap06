<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� �ۼ�</title>
</head>
<body>
	
	<h3>�� �ۼ��ϱ�</h3>
	<hr />
	<form action="./write" method="POST">
		<input type="text" name="title" placeholder="������ �Է��ϼ���.." /><br /><br />
		<textarea name="content" cols="50" rows="10" placeholder="������ �Է��ϼ���.."></textarea><br />
		<input type="submit" value="�ۼ��ϱ�" />
	</form>

</body>
</html>