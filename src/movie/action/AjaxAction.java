package movie.action;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import movie.helper.FormatHelper;
import movie.model.Activity;
import movie.model.Member;
import movie.model.Movie;
import movie.model.Plan;
import movie.model.Plans;
import movie.model.Sale;
import movie.service.ActivityService;
import movie.service.MemberService;
import movie.service.MovieService;
import movie.service.PlanService;
import movie.service.SaleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class AjaxAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Autowired 
	private PlanService planService;
	@Autowired 
	private MemberService memberService;
	@Autowired 
	private SaleService saleService;
	@Autowired 
	private ActivityService activityService;

	@Autowired 
	private MovieService movieService;
	
		private Integer hall;
		private String plans_date;
		private Integer status;
		private List<String> movie = new ArrayList<String>();
		private List<String> starttime = new ArrayList<String>();
  



		public String queryPlans(){
			 status = 0;
			System.out.println("hall is:"+hall+";  "+"plans_date is: "+plans_date);
			Plans plans = planService.getPlans(hall, FormatHelper.StringToDate(plans_date));
			if(plans!=null) {
				
				status = plans.getState();
			     List<Plan> plantemp = plans.getPlanss();			
			    for(int i=0;i<plantemp.size();i++){
			    	movie.add(plantemp.get(i).getMovie().getMovie_name());
			    	starttime.add(plantemp.get(i).getStart_time());
			    }

			}

			return SUCCESS;
		}
		
		public String acceptPlans(){
			System.out.println("Accepting...");
			planService.checkPlans(hall, FormatHelper.StringToDate( plans_date));
			System.out.println("Adter Accepting...");
			return SUCCESS;
		}
		
		public String rejectPlans(){
			planService.rejectPlans(hall, FormatHelper.StringToDate( plans_date));
			return SUCCESS;
		}
		
//下面是主页面的查询
		
		private Integer movieIndex;
		private Integer dateIndex;
		private List<String> plan_id = new ArrayList<String>();
		private List<String> price_2 = new ArrayList<String>();
		private List<String> hall_2 = new ArrayList<String>();
		private List<String> start_time_2 = new ArrayList<String>();
		
		public String findPlan(){
			System.out.println("Movie: "+movieIndex+"; date:"+ dateIndex);
			Movie m = movieService.getOnlineMovie().get(movieIndex);
			Date d= null;

			if(dateIndex==0) d= FormatHelper.getToday();
			else if(dateIndex==1) d = FormatHelper.getTomorrow();
			else System.out.println("日期是个什么鬼！");
			
			
			List<Plan> plans =planService.queryCheckedPlan(m,d);
			
			System.out.println("匹配的放映计划有："+plans.size());
			
			if(plans.size()>0){
				for(Plan p : plans){
					plan_id.add(p.getPlan_id().toString());
					price_2.add(p.getPrice().toString());
					hall_2.add(p.getPlans().getHall().toString());
					start_time_2.add(p.getStart_time());				
				}
			}
			return SUCCESS;
		}
		
		//====================================================
		private Integer seatCount;
		private String seat;
		private String planID;


		private String result="?";
		
		public String buyTicket(){
			System.out.println("购买的座位是："+seat);
			System.out.println(planID);
			Plan plan = (Plan)planService.getPlanById(Integer.parseInt(planID));
			Member user = (Member)session.get("user");
			
			long  discount = 1-user.getRank()/10 ;
			int sum = (int) (plan.getPrice()*seatCount*discount);
			
			if((user.getBalance()-sum)<0){
				result="账户余额不足！购买失败！请充值！";
				return SUCCESS;
			}
			user.setBalance(user.getBalance()-sum);
			user.setCredit((int)(user.getCredit()+sum*0.1));

			plan.setSold_seat(plan.getSold_seat()+";"+seat);
		
			Sale sale = new Sale();
			sale.setIsCash(0);
			sale.setMember(user);
			sale.setNum(seatCount);
			sale.setPlan(plan);
			sale.setSale_time(new Timestamp(new java.util.Date().getTime()));
			sale.setSum(sum);
		
			saleService.save(sale);
			memberService.update(user);
			planService.update(plan);
			
			session.remove("user");
			session.put("user", user);
			
			result="购买成功！ 请到电影院取票！";
	
			return SUCCESS;
		}
		
		
		private Integer male;
		private Integer female;
		private List<String> movienames =new ArrayList<String>();
		private List<Integer> salesum = new ArrayList<Integer>();
		
		public Integer getMale() {
			return male;
		}

		public void setMale(Integer male) {
			this.male = male;
		}

		public Integer getFemale() {
			return female;
		}

		public void setFemale(Integer female) {
			this.female = female;
		}

		public List<String> getMovienames() {
			return movienames;
		}

		public void setMovienames(List<String> movienames) {
			this.movienames = movienames;
		}

		public List<Integer> getSalesum() {
			return salesum;
		}

		public void setSalesum(List<Integer> salesum) {
			this.salesum = salesum;
		}

		public String loadData(){
			Integer[] gender= memberService.getMale();
		    male = gender[0];
		    female = gender[1];
			List<Movie> movies = movieService.getOnlineMovie();
			for(Movie m:movies){
				movienames.add(m.getMovie_name());
				salesum.add(m.getPlans().size());
			}
			System.out.println(male+"++"+female+" "+movienames);
			return SUCCESS;
		}
		

		public String getPlanID() {
			return planID;
		}

		public void setPlanID(String planID) {
			this.planID = planID;
		}
		public String getResult() {
			return result;
		}

		public void setResult(String result) {
			this.result = result;
		}

		public Integer getSeatCount() {
			return seatCount;
		}

		public void setSeatCount(Integer seatCount) {
			this.seatCount = seatCount;
		}

		public String getSeat() {
			return seat;
		}

		public void setSeat(String seat) {
			this.seat = seat;
		}

		public List<String> getPlan_id() {
			return plan_id;
		}
		
		public void setPlan_id(List<String> plan_id) {
			this.plan_id = plan_id;
		}
		
		public List<String> getPrice_2() {
			return price_2;
		}

		public void setPrice_2(List<String> price_2) {
			this.price_2 = price_2;
		}

		public List<String> getHall_2() {
			return hall_2;
		}

		public void setHall_2(List<String> hall_2) {
			this.hall_2 = hall_2;
		}

		public List<String> getStart_time_2() {
			return start_time_2;
		}

		public void setStart_time_2(List<String> start_time_2) {
			this.start_time_2 = start_time_2;
		}

		

 
		public Integer getMovieIndex() {
			return movieIndex;
		}

		public void setMovieIndex(Integer movieIndex) {
			this.movieIndex = movieIndex;
		}

		public Integer getDateIndex() {
			return dateIndex;
		}

		public void setDateIndex(Integer dateIndex) {
			this.dateIndex = dateIndex;
		}

		public List<String> getStarttime() {
			return starttime;
		}


		public void setStarttime(List<String> starttime) {
			this.starttime = starttime;
		}
		
		public List<String> getMovie() {
			return movie;
		}


		public void setMovie(List<String> movie) {
			this.movie = movie;
		}


		public List<String> getTime() {
			return starttime;
		}


		public void setTime(List<String> time) {
			this.starttime = time;
		}


		public Integer getStatus() {
			return status;
		}

		public void setStatus(Integer status) {
			this.status = status;
		}


		public Integer getHall() {
			return hall;
		}

		public void setHall(Integer hall) {
			this.hall = hall;
		}

		public String getPlans_date() {
			return plans_date;
		}

		public void setPlans_date(String plans_date) {
			this.plans_date = plans_date;
		}
		
}
