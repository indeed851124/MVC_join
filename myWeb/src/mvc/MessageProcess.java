package mvc;
import javax.servlet.http.*;
public class MessageProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable{
		request.setAttribute("message", "��û �Ķ���ͷ� ��ɾ ����");
		return "/mvc/process.jsp";
	}
}
