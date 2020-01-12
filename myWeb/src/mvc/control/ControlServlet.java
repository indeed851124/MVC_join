package mvc.control;
import mvc.control.Action;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String cmd = request.getParameter("cmd"); // ����ڷκ���  ��û�Ķ���͸� �޾ƿ´�.
		if(cmd!=null) {
			ActionFactory factory = ActionFactory.getInstance(); 
			Action action = factory.getAction(cmd); //getAction�޼ҵ�� ���� ����
			ActionForward af = action.execute(request, response);
			if(af.isRedirect()) { //isRedirect�� true�̸� sendRedirect������� �����ڴ�.
				response.sendRedirect(af.getUrl());
			}else { //false�̸� forward������� ������.
				RequestDispatcher rd = request.getRequestDispatcher(af.getUrl());
				rd.forward(request, response);
			}
		}else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>Error</title></head>");
			out.println("<body>");
			out.println("<h4>�ùٸ� ��û�� �ƴմϴ�!</h4>");
			out.println("<h4>http://localhost:8080/mvc/test.do?cmd=��ûŰ����</h4>");
			out.println("</body>");
			out.println("</html>");
		}
		
	}
	
}
