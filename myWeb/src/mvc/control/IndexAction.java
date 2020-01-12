package mvc.control;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("IndexAction의 execute()수행됨!"); //해당액션의 역할에 맞는 비지니스 로직을 수행
		return new ActionForward("index.jsp", false); //
	}

}
