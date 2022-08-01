package chap06.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap06.boardpractice.process.BoardLoginFormProcess;
import chap06.boardpractice.process.BoardLoginProcess;
import chap06.boardpractice.process.BoardSignupFormProcess;
import chap06.boardpractice.process.BoardSignupProcess;
import chap06.boardpractice.process.BoardWriteFormProcess;
import chap06.boardpractice.process.BoardWriteProcess;
import chap06.boardpractice.process.Process;

public class DispatcherServlet extends HttpServlet {
	
	HashMap<String, Process> uri_mapping;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		uri_mapping = new HashMap<>();
		uri_mapping.put("/board/login_form", new BoardLoginFormProcess());
		uri_mapping.put("/board/login", new BoardLoginProcess());
		uri_mapping.put("/board/signup_form", new BoardSignupFormProcess());
		uri_mapping.put("/board/signup", new BoardSignupProcess());
		uri_mapping.put("/board/write_form", new BoardWriteFormProcess());
		uri_mapping.put("/board/write", new BoardWriteProcess());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String uri = req.getRequestURI();
		
		System.out.println("request uri : " + uri);
		System.out.println("remove context path : " + uri.substring(req.getContextPath().length()));
		
		uri = uri.substring(req.getContextPath().length());
		
		Process process = uri_mapping.get(uri);
		
		String nextPath;
		if(process != null) {
			nextPath = process.process(req, resp);
		}else {
			nextPath = "/views/board/error.jsp";
		}
		req.getRequestDispatcher(nextPath).forward(req, resp);
	}
}
