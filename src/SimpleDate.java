
import java.text.SimpleDateFormat;
import java.util.Date;

public class SimpleDate {
	 public static void main(String[] args){
	    Date date = new Date();
	    String strDateFormat = "HH:mm:ss a";
	    SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
	    System.out.println(sdf.format(date));
/*	Test1 2 3 4*/
/*	Test 5 6 7 8*/

	   }
	}
