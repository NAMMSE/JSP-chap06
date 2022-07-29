<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%-- 0729 --%>
<% 
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	String maxAge = request.getParameter("max-age");
	
	// # 서버측에서 쿠키 만들기
	
	// 1. 새 쿠키 인스턴스를 생성한다
	Cookie cookie = new Cookie(name, value);
	
	// 2. 쿠키 인스턴스를 원하는대로 설정한다
	try{
		cookie.setMaxAge(Integer.parseInt(maxAge));
	}catch (NumberFormatException e){
		System.out.println("cookie max age == session");
	}
	
	//cookie.setMaxAge(10); // 쿠키의 유효시간 설정 (초) , 설정하지 않으면 웹 브라우저 종료 시 삭제 (Session) > 서버에 있는 세션 객체랑은 다르다
	// 0으로 설정 시 해당 쿠키를 웹 브라우저에서 삭제한다
	
	//cookie.setPath() // 이 쿠키를 사용하는 경로를 지정, 지정하지 않으면 현재 경로로 설정됨
	// Path는 쿠키가 노출되는 경로 / 다른 경로로 가면 해당 경로로 설정된 쿠키가 보이지 않는다
	
	cookie.setHttpOnly(true); // 쿠키로 http 이외의 프로그래밍 언어를 보낼 수 없도록 설정 / 기본 값이 false
	
	cookie.setComment("쿠키에 대한 설명...");
	
	// 3. 해당 쿠키를 응답에 추가해 놓는다
	response.addCookie(cookie);
	
	response.sendRedirect(request.getContextPath() + "/views/cookie/index.jsp");
	
	
%>