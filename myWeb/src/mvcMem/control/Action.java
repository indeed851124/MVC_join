package mvcMem.control;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvcMem.control.*;
public interface Action { //actionŬ������ super �������̽�
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException;
	
}
