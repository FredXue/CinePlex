package movie.service;

import movie.model.Activity;
import movie.model.Member;
import movie.model.Movie;

public interface ActivityService {
	 public void addActivity(String q,String a,String b,String c,Movie movie);
	 public void addAnswer(Member m,Integer act_id , Integer answer);
	 public Integer save(Activity a);
	 public Activity getActById(Integer id);
}
