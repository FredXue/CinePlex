package movie.dao.impl;

import java.util.List;

import movie.dao.ActivityDAO;
import movie.dao.BaseDAO;
import movie.model.Activity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ActivityDAOImpl implements ActivityDAO{

	 @Autowired
     private BaseDAO baseDAO;
	 
	 public Integer save(Activity a){
		 return baseDAO.save(a);
	 }

	@Override
	public List<Activity> getAll() {
		// TODO Auto-generated method stub
		return (List<Activity>)baseDAO.getAllList(Activity.class);
	}
	public Activity getById(Integer id){
		return  (Activity)baseDAO.load(Activity.class, id);
	   
	}
}
