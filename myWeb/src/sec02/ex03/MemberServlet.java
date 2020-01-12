package sec02.ex03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;import org.apache.catalina.startup.SetContextPropertiesRule;

@WebServlet("/member3")
public class MemberServlet extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		MemberDAO dao = new MemberDAO();
		PrintWriter out = response.getWriter();
		String command = request.getParameter("command"); 
		
		if(command != null && command.equals("addMember")) {
			
			//회원가입창에서 전송된 값들을 얻어와 memberVO객체에 저장한 후 SQLㅁ문을 이용해 전달합니다.
			String _id = request.getParameter("id");
			String _pwd = request.getParameter("pwd");
			String  _name = request.getParameter("name");
			String _email = request.getParameter("email");
			MemberVO vo = new MemberVO();
			vo.setId(_id);
			vo.setPwd(_pwd);
			vo.setName(_name);
			vo.setEmail(_email);
			dao.addMember(vo);
		}else if(command != null && command.equals("delMember")) {
			String id = request.getParameter("id");
			dao.delMember(id); //command값이 delMember인 경우 ID를 가져와 SQL문으로 전달해서 삭제
			
		}
		List list = dao.listMembers();
		out.print("<html><body>");
		out.print("<table border=1><tr align='center' bgcolor='lightgreen'>");
		out.print("<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td><td>삭제</td></tr>");
		
		for(int i=0; i<list.size(); i++) {
			MemberVO memberVO =  (MemberVO) list.get(i);
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			Date joinDate = memberVO.getJoinDate();
			out.print("<tr><td>"+id+"</td><td>"+pwd+"</td><td>"+name+"</td><td>"+email+"</td><td>"+joinDate+"</td><td>"+"<a href='/myWeb/member3?command=delMember&id="+id+"'>삭제</a></td></tr>"); //삭제를 클릭하면 command값과 회원ID를 서블릿으로 전송
			
		}
		out.print("</table></body></html>");
		out.print("<a href='/myWeb/memberForm.html'>새 회원 등록하기</a>");  //다시 회원가입창으로 이동
	}

}
