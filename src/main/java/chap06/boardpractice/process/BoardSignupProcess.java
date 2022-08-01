package chap06.boardpractice.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap06.boardpractice.dao.SignupDAO;

public class BoardSignupProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		new SignupDAO(id, password);
		
		return "/views/board/login.jsp";
	}

}
