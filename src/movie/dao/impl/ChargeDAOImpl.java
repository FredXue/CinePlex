package movie.dao.impl;

import movie.dao.BaseDAO;
import movie.dao.ChargeDAO;
import movie.model.Charge;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChargeDAOImpl implements ChargeDAO{
      @Autowired
      private BaseDAO baseDAO;
      
      public Integer save(Charge c){
    	  return baseDAO.save(c);
      }
      
}
