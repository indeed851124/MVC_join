package mvc.control;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("IndexAction�� execute()�����!"); //�ش�׼��� ���ҿ� �´� �����Ͻ� ������ ����
		return new ActionForward("index.jsp", false); //
	}

}
