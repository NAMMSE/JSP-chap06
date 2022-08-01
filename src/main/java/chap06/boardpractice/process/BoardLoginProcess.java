package chap06.boardpractice.process;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chap06.boardpractice.dao.LoginDAO;

public class BoardLoginProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String userID = request.getParameter("id");
		String userPassword = request.getParameter("password");
		
		HttpSession session = request.getSession(); //  
		//List<Login> list = new LoginDAO().getList();
		HashMap<String, String> map = new LoginDAO().getList();
		
		//if(list.get(list.indexOf(userID)).getLogin_password().equals(userPassword)){
		
		System.out.println(map.get("test2"));
		if(map.containsKey(userID)&&map.get(userID).equals(userPassword)) {
			session.setAttribute("login", true);
			session.setAttribute("id", userID);
		
			return "/views/board/main.jsp";
		}else {
			session.setAttribute("login", false);
			return "/views/board/error.jsp";
		}
			
	}

}
