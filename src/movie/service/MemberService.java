package movie.service;

import java.util.List;

import movie.model.Activity;
import movie.model.Member;
import movie.model.Movie;


public interface MemberService{
	
    public Member login(String id, String password);   
    public String register(String name,String password,Boolean gender,Integer age,String bank_card);
    public void update(Member m);
    public void charge(Member m, int amount);
    public List<Movie> getWatchedMovie(Member m);
    public List<Activity> getAnsweredAct(Member m);
    public void change(Member m);
    public Integer[] getMale();
    public List<Member> getAll();
    public void cancel(Member m);


}