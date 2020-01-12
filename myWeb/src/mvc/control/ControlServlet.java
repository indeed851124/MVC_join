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
		String cmd = request.getParameter("cmd"); // 사용자로부터  요청파라미터를 받아온다.
		if(cmd!=null) {
			ActionFactory factory = ActionFactory.getInstance(); 
			Action action = factory.getAction(cmd); //getAction메소드로 모델을 결정
			ActionForward af = action.execute(request, response);
			if(af.isRedirect()) { //isRedirect가 true이면 sendRedirect방식으로 보내겠다.
				response.sendRedirect(af.getUrl());
			}else { //false이면 forward방식으로 보낸다.
				RequestDispatcher rd = request.getRequestDispatcher(af.getUrl());
				rd.forward(request, response);
			}
		}else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>Error</title></head>");
			out.println("<body>");
			out.println("<h4>올바른 요청이 아닙니다!</h4>");
			out.println("<h4>http://localhost:8080/mvc/test.do?cmd=요청키워드</h4>");
			out.println("</body>");
			out.println("</html>");
		}
		
	}
	
}
