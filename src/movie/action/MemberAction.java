package movie.action;

import java.sql.Date;

import movie.model.Member;
import movie.service.MemberService;
import movie.service.MovieService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberAction extends BaseAction {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MovieService movieService;

	public MovieService getMovieService() {
		return movieService;
	}

	public void setMovieService(MovieService movieService) {
		this.movieService = movieService;
	}

	private Member user;
	private String id;
	private String password;


	private String r_password;
	private String r_name;
	private String r_gender;
	private String r_bankcard;
	private String r_age;

	public MemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_gender() {
		return r_gender;
	}

	public void setR_gender(String r_gender) {
		this.r_gender = r_gender;
	}

	public String getR_bankcard() {
		return r_bankcard;
	}

	public void setR_bankcard(String r_bankcard) {
		this.r_bankcard = r_bankcard;
	}

	public String getR_password() {
		return r_password;
	}

	public void setR_password(String r_password) {
		this.r_password = r_password;
	}

	@SuppressWarnings("unchecked")
	public String execute() {
		System.out.println("Login.........");
		user = memberService.login(id, password);
		if (user != null  && user.getState()!=3) {		
			session.put("user", user);
			return SUCCESS;
		}
		return ERROR;
	}

	public String register() {

		System.out.println("Registering.....");

		System.out.println(r_name + ";" + r_password + ";" + r_gender + ";"
				+ r_age);
		boolean gender =true;
		if(Integer.parseInt(r_gender)>0) gender=false;
		String id = memberService.register(r_name, r_password,
				gender, Integer.parseInt(r_age),
				r_bankcard);
		
		request.setAttribute("new_id", id);
		
		return SUCCESS;
	}


	public String logout(){
		System.out.println("logouting...");
		session.remove("user");
		return SUCCESS;
	}
	
	
	
	public String cancel(){
		System.out.println("Canceling......");
		Member user =(Member)session.get("user"); 
		memberService.cancel(user);
		session.remove("user");
		return SUCCESS;
	}
	
	private Integer amount;
	
	public String charge(){
		System.out.println("Charging......");
		Member user =(Member)session.get("user"); 
		memberService.charge(user,amount);
		
		session.remove("user");
		session.put("user", user);
		
		
		return SUCCESS;
	}
	
	public String changeToBal(){
		Member user =(Member)session.get("user"); 
		memberService.change(user);
		session.remove("user");
		session.put("user", user);
		return SUCCESS;
	}
	public Integer getAmount() {
		return amount;
	}
	
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Member getUser() {
		return user;
	}

	public void setUser(Member user) {
		this.user = user;
	}

	public String getR_age() {
		return r_age;
	}

	public void setR_age(String r_age) {
		this.r_age = r_age;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}