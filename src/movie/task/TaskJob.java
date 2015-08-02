package movie.task;

import java.sql.Date;
import java.util.List;

import movie.model.Member;
import movie.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
  
@Component("taskJob")  
public class TaskJob {  
	
	@Autowired
   private	MemberService memberService;
	
    @Scheduled(cron = "0 0 12 * * ?")  
    public void checkMember() {  
       List<Member> members =  memberService.getAll();
       long now =new java.util.Date().getTime();
       for(Member m : members){
    	   long time1 = m.getAct_time().getTime();
    	   long time2 = m.getPause_time().getTime();
    	   long intervalMilli1 = now-time1;
    	   long intervalMilli2 = now-time2;
    			   int day =  (int) (intervalMilli1 / (24 * 60 * 60 * 1000));
    			   int day2 =  (int) (intervalMilli2 / (24 * 60 * 60 * 1000));
    			   if(day>365 && m.getState()==1){
    				   if(m.getBalance()<20){
    					   m.setState(2);
    					   m.setPause_time(new Date(new java.util.Date().getTime()));
    					   memberService.update(m);
    				   }
    			   }
    			   
    			   if(day2>365 && m.getState()==2){
    				   m.setState(3);
    				   memberService.update(m);
    			   }
       }
    }  
} 