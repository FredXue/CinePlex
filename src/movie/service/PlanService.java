package movie.service;

import java.sql.Date;
import java.util.List;

import movie.model.Movie;
import movie.model.Plan;
import movie.model.Plans;

public interface PlanService {
     public Plans getPlans(Integer hall,Date date);

     public List<Plan> getAllPlan();
     public void checkPlans(Integer hall,Date date);
     public void deletePlans(Integer hall,Date date);
     public void submitPlans(Plans ps);
     public void rejectPlans(Integer hall, Date date);
     public List<Plan> queryCheckedPlan(Movie m,Date date);
     public Plan getPlanById(Integer id);
     public void update(Plan plan);
}
