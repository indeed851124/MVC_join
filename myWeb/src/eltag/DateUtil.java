package eltag;
import java.util.Date;
import java.text.SimpleDateFormat;
public class DateUtil {

	
	private static SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); //�ð��� ���ϴ�  �������� ����ϱ�.
	public static String format(Date date) {
		return formatter.format(date);
	}
	
}
