<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	// Servlet
	
	// �ش� path�� ��Ű�� ��û�� �Բ� �Ƿ����� �ȴ�
	Cookie[] cookies = request.getCookies();
	//request.setAttribute("cookies", cookies);
	
	System.out.println(java.util.Arrays.toString(cookies));

	if(cookies != null){
		for(int i=0;i<cookies.length;i++){
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			
			System.out.println(name +"="+value);
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>��Ű �����ϱ�</h1>

</body>
</html>