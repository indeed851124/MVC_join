package eltag;
import java.util.Date;
import java.text.SimpleDateFormat;
public class DateUtil {

	
	private static SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); //시간을 원하는  포맷으로 출력하기.
	public static String format(Date date) {
		return formatter.format(date);
	}
	
}
