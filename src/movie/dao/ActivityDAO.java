package movie.dao;

import java.util.List;

import movie.model.Activity;

public interface ActivityDAO {
	
	public Integer save(Activity a);
	public List<Activity> getAll();
	public Activity getById(Integer id);

}
