package movie.dao;

import java.sql.Date;

import movie.model.Plans;

public interface PlansDAO {
	public Plans queryPlans(Integer hall,Date date);
	public void deletePlans(Integer hall,Date date);
	public void update(Plans ps);
	public void save(Plans ps);
}
