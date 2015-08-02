package movie.dao.impl;

import java.util.List;

import movie.dao.BaseDAO;
import movie.dao.SaleDAO;
import movie.model.Member;
import movie.model.Sale;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class SaleDAOImpl implements SaleDAO {
    @Autowired
    private BaseDAO baseDAO;

	@Override
	public void save(Sale sale) {
		// TODO Auto-generated method stub
		baseDAO.save(sale);
	}

	@Override
	public void update(Sale sale) {
		// TODO Auto-generated method stub
		Session session = baseDAO.getSession();
	    session.update(sale);
	    session.flush();
	    session.clear();
	}


    
}
