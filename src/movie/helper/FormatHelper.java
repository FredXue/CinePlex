package movie.helper;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class FormatHelper {
	
       // yyyy-mm-dd to Date
       public static Date StringToDate(String s){	   
    	 Date date = null;
  		 try{			
  			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
  			 date = new Date(sdf.parse(s).getTime());
                    
  		 }catch (ParseException e){
  			 e.printStackTrace();
  		 }
  		  System.out.println(s+"转换后日期为："+date);
    	   return date;
       }
       
	
       public static String DateToString(Date d){
    	   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    	   String result = sdf.format(d);
    	   return result;
       }
       
       // 1-白金  2-黄金  3-钻石
       public static String getRankText(Integer i){
    	   
    	   
    	   
    	   return null;
       }
       
       //1-9折   2-8折  3-7折
       public static Integer getRankDiscount(Integer i){
    	   
    	   
    	   return null;
       }
       
       public static Date getToday(){
    		Date now  = new Date(new java.util.Date().getTime());		
    		return now;
       }
       
       public static Date getTomorrow(){
     		    Calendar c = Calendar.getInstance();
		        c.add(Calendar.DAY_OF_MONTH, 1);
		        Date tomorrow = new Date(c.getTime().getTime());
     		return  tomorrow;
        }
       
       //0 未激活    1： 正常  2：暂停  3：取消？
       
}
