const btn = document.getElementById('btn');

btn.addEventListener('click', (e) => {
	console.log('hello!');
	/*location.href='<%request.getContextPath()%>/abc/';*/
	location.href=  contextPath + '/views/cookie/use.jsp';
});