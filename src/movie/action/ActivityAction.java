package movie.action;

import java.util.ArrayList;
import java.util.List;

import movie.model.Activity;
import movie.model.Member;
import movie.model.Movie;
import movie.service.ActivityService;
import movie.service.MemberService;
import movie.service.MovieService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ActivityAction extends BaseAction {
      @Autowired
      private ActivityService activityService;
      @Autowired
      private MovieService movieService;
      @Autowired
      private MemberService memberService;
     
      private String question;
	  private String choice_a;
      private String choice_b;
      private String choice_c;
      private String movie;
      
      
      public String execute(){
    	  List<Movie> movies = movieService.getOnlineMovie();
    	  Movie m = movies.get(Integer.parseInt(movie));
    	  System.out.println("发布的问题是："+question);
    	  activityService.addActivity(question,choice_a,choice_b,choice_c,m);
    	  return SUCCESS;
      }
      
      
      public String loadActivity(){
    	  Member user = (Member)session.get("user");
    	  List<Movie> movies = memberService.getWatchedMovie(user);
    	  System.out.println("该用户看过的电影："+movies.size());
    	  List<Activity> acts = new ArrayList<Activity>();
    	  if(movies.size()>0){    		 
    		  for(Movie m:movies){
    			  List<Activity> as=m.getActs();
    			  acts.addAll(as);
    		  }
    	  }
    	  List<Activity> acts_answered = memberService.getAnsweredAct(user);
    	  acts.removeAll(acts_answered);
    	  session.put("act", acts);
    	  System.out.println("活动数目："+acts.size());
    	  return SUCCESS;
      }
      
      private String act_id;
      private String answer;


	public String getAct_id() {
		return act_id;
	}


	public void setAct_id(String act_id) {
		this.act_id = act_id;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String answer(){
    	  Member user = (Member)session.get("user");
          
    	  activityService.addAnswer(user, Integer.parseInt(act_id), Integer.parseInt(answer));
 
    	  
    	  return SUCCESS;
      }
      

      
      
      public String getQuestion() {
		return question;
	  }
      
      
      


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getChoice_a() {
		return choice_a;
	}


	public void setChoice_a(String choice_a) {
		this.choice_a = choice_a;
	}


	public String getChoice_b() {
		return choice_b;
	}


	public void setChoice_b(String choice_b) {
		this.choice_b = choice_b;
	}


	public String getChoice_c() {
		return choice_c;
	}


	public void setChoice_c(String choice_c) {
		this.choice_c = choice_c;
	}


	public String getMovie() {
		return movie;
	}


	public void setMovie(String movie) {
		this.movie = movie;
	}
      
}
