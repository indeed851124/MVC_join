package mvcMem.control;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvcMem.control.*;
public interface Action { //action클래스의 super 인터페이스
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException;
	
}
