package mvc.control;
import mvc.control.ActionForward;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public interface Action {
	//controller���� ��� �������� ��� �̵��� ���ΰ��� �������ֱ� ���ؼ��̰� request�� parameter�� ���޹ް� controller���� �����ϰ��� �ϴ� �����Ͱ� ������ attribute�� �����ؼ� ����.
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)throws IOException;
}
