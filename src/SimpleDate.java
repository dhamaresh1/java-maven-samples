
import java.text.SimpleDateFormat;
import java.util.Date;

public class SimpleDate {
	 public static void main(String[] args){
	    Date date = new Date();
	    String strDateFormat = "HH:mm:ss a";
	    SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
	    System.out.println(sdf.format(date));
		
	   }
	}
