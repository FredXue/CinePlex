package movie.service.impl;

import java.sql.Date;
import java.util.List;

import movie.dao.PlanDAO;
import movie.dao.PlansDAO;
import movie.model.Movie;
import movie.model.Plan;
import movie.model.Plans;
import movie.service.PlanService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("planService")
public class PlanServiceImpl implements PlanService{
     @Autowired
     private PlansDAO plansDAO;
     @Autowired 
     private PlanDAO planDAO;

	@Override
	public Plans getPlans(Integer hall, Date date) {
		// TODO Auto-generated method stub
		return plansDAO.queryPlans(hall, date);
	}

	@Override
	public void deletePlans(Integer hall, Date date) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void submitPlans(Plans ps) {
		// TODO Auto-generated method stub
		plansDAO.save(ps);
		
	}

	@Override
	public void checkPlans(Integer hall, Date date) {
		// TODO Auto-generated method stub
		Plans newPlan  = plansDAO.queryPlans(hall, date);
		newPlan.setState(3);
		System.out.println("Have set State!");
		plansDAO.update(newPlan);
		System.out.println("Have save State!");
	}
	
	public void rejectPlans(Integer hall, Date date){
		Plans newPlan  = plansDAO.queryPlans(hall, date);
		newPlan.setState(1);
		plansDAO.update(newPlan);
	}

//	
//	public List<Plan> getPlan(Plans p) {
//		// TODO Auto-generated method stub
//		
//		return planDAO.getPlanByPlans(p);
//	}

	@Override
	public List<Plan> getAllPlan() {
		// TODO Auto-generated method stub
		return planDAO.getAll();
	}

	@Override
	public List<Plan> queryCheckedPlan(Movie m, Date date) {
		// TODO Auto-generated method stub
		
		 return planDAO.getCheckedPlan(m,date);
	
	}

	@Override
	public Plan getPlanById(Integer id) {
		// TODO Auto-generated method stub
		
		return planDAO.getPlanById(id);
		
	}

	@Override
	public void update(Plan plan) {
		// TODO Auto-generated method stub
		planDAO.update(plan);
	}

}
