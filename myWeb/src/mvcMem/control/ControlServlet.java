package mvcMem.control;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import mvcMem.action.Action;
public class ControlServlet extends HttpServlet{
	public static final long serialVersionUID = 1L;
	public void servise(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String cmd = request.getParameter("cmd");
		if(cmd!=null) {
			ActionFactory factory = ActionFactory.getInstance();
			Action action = action.execute(request, response);
			ActionForward af = action.execute(request, response);
			if(af.isRedirect()) {
				response.sendRedirect(af.getUrl());
			}else {
				RequestDispatcher rd =request.getRequestDispatcher(af.getUrl());
				rd.forward(request, response);
			}
		}else {
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>Error</title></head>");
			out.println("<body>");
			out.println("<h4>올바른 요청이 아닙니다!<h4>");
			out.println("<h4>http://localhost:8080/myWeb/mvcMem/member.mdo?cmd=요청키워드</h4>");
			out.println("</body>");
			out.println("</html>");
		}
	}
}
