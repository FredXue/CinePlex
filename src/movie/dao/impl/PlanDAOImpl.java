package movie.dao.impl;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import movie.dao.BaseDAO;
import movie.dao.PlanDAO;
import movie.helper.FormatHelper;
import movie.model.Movie;
import movie.model.Plan;
import movie.model.Plans;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlanDAOImpl implements PlanDAO{

	@Autowired 
	private BaseDAO baseDAO;
	
	@Override
	public List<Plan> getAll() {
		// TODO Auto-generated method stub
		List<Plan> ps = (List<Plan>)baseDAO.getAllList(Plan.class);
		return ps;
	}

	@Override
	public void update(Plan plan) {
		// TODO Auto-generated method stub
		Session session = baseDAO.getSession();
	    session.update(plan);
	    session.flush();
	    session.clear();
	}

	@Override
	public String save(Plan plan) {
		// TODO Auto-generated method stub
		baseDAO.save(plan);
		return null;
	}

	
//	public List<Plan> getPlanByPlans(Plans plans) {
//		// TODO Auto-generated method stub
//		List<Plan> ps = (List<Plan>)baseDAO.getAllList(Plan.class);
//		System.out.println("Getting plan....................");
//		List<Plan> result = new ArrayList<Plan>();
//		for(Plan p : ps){
//			if(p.getPlans().equals(plans))  result.add(p);				
//		}
//		return result;
//	}

	@Override
	public List<Plan> getCheckedPlan(Movie movie, Date date) {
		// TODO Auto-generated method stub
		List<Plan> plan = getAll();
		List<Plan> result = new ArrayList<Plan>();
		System.out.println("所有放映计划的数目为："+plan.size());
		for(Plan p : plan ){
			Movie mov = p.getMovie();
			Plans ps = p.getPlans();

			if((mov.getMovie_id()==movie.getMovie_id()) && (FormatHelper.DateToString(ps.getPlans_date()).equals(FormatHelper.DateToString(date))) && (ps.getState()==3)){
				System.out.println("Adding a new Plan");
				result.add(p);
			}
		}
		return result;
	}
	
	
	public Plan getPlanById(Integer id){
		 return (Plan)baseDAO.load(Plan.class, id);
	}

}
