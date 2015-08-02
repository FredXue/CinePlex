package movie.service.impl;

import movie.dao.SaleDAO;
import movie.model.Sale;
import movie.service.SaleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("saleService")
public class SaleServiceImpl implements SaleService {
     @Autowired
     private SaleDAO saleDAO;

	@Override
	public void save(Sale sale) {
		// TODO Auto-generated method stub
		saleDAO.save(sale);
	}
     
     
     
}
