package mvc;
import javax.servlet.http.*;
public class MessageProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable{
		request.setAttribute("message", "요청 파라미터로 명령어를 전달");
		return "/mvc/process.jsp";
	}
}
