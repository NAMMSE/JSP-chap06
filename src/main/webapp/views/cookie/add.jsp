<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%-- 0729 --%>
<% 
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	String maxAge = request.getParameter("max-age");
	
	// # ���������� ��Ű �����
	
	// 1. �� ��Ű �ν��Ͻ��� �����Ѵ�
	Cookie cookie = new Cookie(name, value);
	
	// 2. ��Ű �ν��Ͻ��� ���ϴ´�� �����Ѵ�
	try{
		cookie.setMaxAge(Integer.parseInt(maxAge));
	}catch (NumberFormatException e){
		System.out.println("cookie max age == session");
	}
	
	//cookie.setMaxAge(10); // ��Ű�� ��ȿ�ð� ���� (��) , �������� ������ �� ������ ���� �� ���� (Session) > ������ �ִ� ���� ��ü���� �ٸ���
	// 0���� ���� �� �ش� ��Ű�� �� ���������� �����Ѵ�
	
	//cookie.setPath() // �� ��Ű�� ����ϴ� ��θ� ����, �������� ������ ���� ��η� ������
	// Path�� ��Ű�� ����Ǵ� ��� / �ٸ� ��η� ���� �ش� ��η� ������ ��Ű�� ������ �ʴ´�
	
	cookie.setHttpOnly(true); // ��Ű�� http �̿��� ���α׷��� �� ���� �� ������ ���� / �⺻ ���� false
	
	cookie.setComment("��Ű�� ���� ����...");
	
	// 3. �ش� ��Ű�� ���信 �߰��� ���´�
	response.addCookie(cookie);
	
	response.sendRedirect(request.getContextPath() + "/views/cookie/index.jsp");
	
	
%>