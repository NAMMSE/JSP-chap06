package chap06.boardpractice.process;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chap06.boardpractice.dao.WriteDAO;

public class BoardWriteProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		new WriteDAO().insertBoard(userID, title, content);
		
		System.out.println("insert success");
		return "/views/board/main.jsp";
	}

}
