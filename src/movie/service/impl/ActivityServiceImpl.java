package movie.service.impl;

import movie.dao.ActivityDAO;
import movie.dao.AnswerDAO;
import movie.dao.MemberDAO;
import movie.model.Activity;
import movie.model.Answer;
import movie.model.Member;
import movie.model.Movie;
import movie.service.ActivityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("activityService")
public class ActivityServiceImpl implements ActivityService{
        @Autowired
        private ActivityDAO activityDAO;
        @Autowired
        private AnswerDAO answerDAO;
        @Autowired
        private MemberDAO memberDAO;
        
        public void addActivity(String q,String a,String b,String c,Movie movie){
        	Activity act = new Activity();
        	act.setAnswer_a(a);
        	act.setAnswer_b(b);
        	act.setAnswer_c(c);
        	act.setQuestion(q);
        	act.setMovie(movie);
        	save(act);
        	
        }
        
        
        public Integer save(Activity a ){
        	return activityDAO.save(a);
        	
        }


		@Override
		public void addAnswer(Member m, Integer act_id , Integer answer) {
			// TODO Auto-generated method stub
			Answer an = new Answer();	
			m.setCredit(m.getCredit()+20);			
			an.setAct(getActById(act_id));
			an.setAnswer(answer);
			an.setMember(m);
			answerDAO.save(an);
		}
		
		
		public Activity getActById(Integer id){
			return activityDAO.getById(id);
		}
        
}
