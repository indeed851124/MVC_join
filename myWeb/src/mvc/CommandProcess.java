package mvc;
import javax.servlet.http.*;
public interface CommandProcess {
	//��û�Ķ���ͷ� ��ɾ �����ϴ� ����� ���� �������̽�
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable;
	
}
