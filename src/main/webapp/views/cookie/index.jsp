<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 (Cookie)</title>
<%-- 0729 --%>
</head>
<body>

	<h3># Cookie</h3>
	
	<ul>
		<li>서버측에서 원하는 데이터를 사용자의 웹 브라우저 어딘가에 보관하는 것</li>
		<li>데이터를 key=value 형태로 보관한다</li>
		<li>서버가 원하는 쿠키 데이터를 응답에 실어 보내면 클라이언트가 그것을 보관한 후 모든 요청에 포함시켜 보낸다.</li>
		<li>localStorage, sessionStorage는 클라이언트 측에서 원하는 데이터를 웹 브라우저에 보관한다</li>
	</ul>
	
	<hr />
	
	<form action="<c:url value="/views/cookie/add.jsp" />" method="GET">
	쿠키 이름 : <input type="text" name="name"/>
	쿠키 값 : <input type="text" name="value"/>
	쿠키 수명 : <input type="text" name="max-age"/>
	<input type="submit" value="쿠키 추가하기"/>
	
	</form>
	
	<hr />
	
	<button id="btn">쿠키 활용하러 가기</button>
	
	<%-- 이게 되고 밑에 src는 안되는 이유 
		위에껀 스크립트 태그가 실행되는 시점이 req를 보내고 index.jsp에서 응답을 만들 때 웹 브라우저가 읽으면서 실행하고 
		resp으로 응답(이게 f12눌렀을때 보이는 소스코드)을 보내는데
		아래껀 웹 브라우저가 html 코드를 해석할때 src를 보고 해당 링크를 서버에 다시 요청한다
		그때 myscript가 js파일이므로 컴파일을 하는게 아니라 그냥 해당 내용을 실행하기 때문에 <%%>내용이 그대로 보이는것
	--%>
	<%--
	<script>
	const btn = document.getElementById('btn');

	btn.addEventListener('click', (e) => {
		console.log('hello!');
		location.href='<%=request.getContextPath()%>/abc/';
	})
	</script>
	--%> 
	<script src="<c:url value="/assets/variables.js" />"></script>
	<script src="<c:url value="/assets/myscript.js" />"></script>

</body>
</html>