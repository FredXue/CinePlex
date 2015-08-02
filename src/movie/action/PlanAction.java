package movie.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import movie.helper.FormatHelper;
import movie.model.Member;
import movie.model.Movie;
import movie.model.Plan;
import movie.model.Plans;
import movie.service.MovieService;
import movie.service.PlanService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlanAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4420957190670475944L;
	@Autowired 
	private PlanService planService;
	@Autowired 
	private MovieService movieService;
	
		private Integer hall;
		private String plans_date;
		private Integer[] movie_name;
		private String[] start_time;
		private String[] price;
		
		
		public String execute() throws IOException{
			 System.out.println("提交放映计划："+hall+"日期："+plans_date);
			 
			 planService.deletePlans(hall,FormatHelper.StringToDate(plans_date));
			 List<Movie> movs = movieService.getOnlineMovie();
			 Plans newplans = new Plans();
			 Plan newplan =null;
			 List<Plan> somePlans = new ArrayList<Plan>();
			 newplans.setHall(hall);
			 newplans.setPlans_date(FormatHelper.StringToDate(plans_date));
			 
			 
			 for(int i =0;i<movie_name.length;i++){
				 newplan= new Plan();
				 newplan.setPlans(newplans);
				 newplan.setMovie(movs.get(movie_name[i]));
				 newplan.setPrice(Integer.parseInt(price[i]));
				 newplan.setStart_time(start_time[i]);
				 newplan.setSold_seat("");
				 somePlans.add(newplan);
			 }
			 newplans.setPlanss(somePlans);
			 newplans.setState(2);
			 planService.submitPlans(newplans);
			return SUCCESS;
		}

		
		//========================================================
		
		private String plan_id;
		
		
		public String getPlan_id() {
			return plan_id;
		}

		public void setPlan_id(String plan_id) {
			this.plan_id = plan_id;
		}

		public String goBuy(){
			Plan plan = planService.getPlanById(Integer.parseInt(plan_id));
			request.setAttribute("plan", plan);				
			return SUCCESS;
		}
		
		public String goSell(){
			Plan plan = planService.getPlanById(Integer.parseInt(plan_id));
			request.setAttribute("plan", plan);				
			return SUCCESS;
		}

		public PlanService getPlanService() {
			return planService;
		}




		public void setPlanService(PlanService planService) {
			this.planService = planService;
		}




		public MovieService getMovieService() {
			return movieService;
		}




		public void setMovieService(MovieService movieService) {
			this.movieService = movieService;
		}


		public Integer[] getMovie_name() {
			return movie_name;
		}

		public void setMovie_name(Integer[] movie_name) {
			this.movie_name = movie_name;
		}

		public String[] getStart_time() {
			return start_time;
		}




		public void setStart_time(String[] start_time) {
			this.start_time = start_time;
		}




		public String[] getPrice() {
			return price;
		}




		public void setPrice(String[] price) {
			this.price = price;
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
