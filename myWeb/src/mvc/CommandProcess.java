package mvc;
import javax.servlet.http.*;
public interface CommandProcess {
	//요청파라미터로 명령어를 전달하는 방식의 슈퍼 인터페이스
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable;
	
}
