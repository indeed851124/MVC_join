package mvc;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Controller extends HttpServlet { //명령어와 명령어 처리 클래스를 쌍으로 저장
	private static final long serialVersionUID = 1L;
	private Map<String, Object> commandMap = new HashMap<String, Object>();
	
	@SuppressWarnings("unchecked") //검증되지 않은 연산자 관련 경고억제
	
	public void init(ServletConfig config) throws ServletException{ 
		String props = config.getInitParameter("propertyConfig"); //web.xml에서 propertyConfig에 해당하는 init-param의 값을 읽어옴
		Properties pr = new Properties(); //명령어와 처리클래스의 매핑정보를 저장할 Properties객체 생성
		String path = config.getServletContext().getRealPath("/WEB-INF");
		FileInputStream f = null;
		try {
			f= new FileInputStream(new File(path,props));
			pr.load(f);
		}catch(IOException e) {
			throw new ServletException(e);
		}finally {
			if(f != null)try {f.close();} catch(IOException ex) {}
		}
		Iterator<Object> keyIter = pr.keySet().iterator();
		while(keyIter.hasNext()) {
			String command = (String)keyIter.next();
			String className = pr.getProperty(command);
			try {
				Class commandClass = Class.forName(className);
				Object commandInstance = commandClass.newInstance();
				commandMap.put(command, commandInstance);
			}catch(ClassNotFoundException e) {
				throw new ServletException(e);
			}catch(InstantiationException e) {
				throw new ServletException(e);
			}catch(IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		requestPro(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		requestPro(request,response);
	}
	private void requestPro(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		String view = null;
		CommandProcess com = null;
		try {
			String command = request.getRequestURI();
			if(command.indexOf(request.getContextPath())==0) {
				command = command.substring(request.getContextPath().length());
			}
			com = (CommandProcess)commandMap.get(command);
			view = com.requestPro(request, response);
		}catch(Throwable e) {
			throw new ServletException(e);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
