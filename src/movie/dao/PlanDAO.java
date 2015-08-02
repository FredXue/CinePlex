package movie.dao;

import java.sql.Date;
import java.util.List;

import movie.model.Movie;
import movie.model.Plan;
import movie.model.Plans;

public interface PlanDAO {
	    public List<Plan> getAll();
	    public void update(Plan plan);
		public String save(Plan plan);
		public List<Plan> getCheckedPlan(Movie movie,Date date);
		public Plan getPlanById(Integer id);
}
