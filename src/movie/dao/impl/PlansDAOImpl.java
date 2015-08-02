package movie.dao.impl;

import java.sql.Date;
import java.util.List;

import movie.dao.BaseDAO;
import movie.dao.PlansDAO;
import movie.model.Plans;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class PlansDAOImpl implements PlansDAO {
  
	@Autowired
	private BaseDAO baseDAO;
	
	@SuppressWarnings("unchecked")
	public Plans queryPlans(Integer hall,Date date){
          String hql="from Plans where hall='"+hall+"' and plans_date='"+date+"'";
          Session session = baseDAO.getSession();
          List<Plans> listp = session.createQuery(hql).list();
          if(listp.size()>0){ 	   
        		System.out.println("查询到一个放映计划");
                return listp.get(0);
          }else{
        		System.out.println("当天该厅尚没有制订放映计划！");
          }
          session.flush();
          session.clear();
          

	  return null;
   }

	@Override
	public void deletePlans(Integer hall, Date date) {
		// TODO Auto-generated method stub
		Plans p =queryPlans(hall,date);
		if(p!=null)
		baseDAO.delete(p);
	}

	@Override
	public void update(Plans ps) {
		// TODO Auto-generated method stub
		Session session = baseDAO.getSession();
	    session.update(ps);
	    session.flush();
	    session.clear();
	 
	}
	
	@Override
	public void save(Plans ps) {
		// TODO Auto-generated method stub
		baseDAO.save(ps);
		
	}
}
