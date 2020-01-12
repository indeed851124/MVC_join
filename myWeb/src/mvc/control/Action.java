package mvc.control;
import mvc.control.ActionForward;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public interface Action {
	//controller에게 어느 페이지로 어떻게 이동할 것인가를 전달해주기 위해서이고 request는 parameter를 전달받고 controller에게 전달하고자 하는 데이터가 있으면 attribute에 저장해서 전달.
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)throws IOException;
}
