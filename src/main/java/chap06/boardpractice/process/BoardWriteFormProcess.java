package chap06.boardpractice.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardWriteFormProcess implements Process{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		return "/views/board/write.jsp";
	}

}
