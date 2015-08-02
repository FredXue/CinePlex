package movie.dao.impl;

import java.text.NumberFormat;
import java.util.List;
import java.util.Map;

import movie.dao.BaseDAO;
import movie.dao.MemberDAO;
import movie.model.Member;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	protected BaseDAO baseDAO;
	


	@Override
	public List<Member> findAll() {
		// TODO Auto-generated method stub
		return baseDAO.getAllList(Member.class);		
	}

	@Override
	public Member findByID(String id) {
		// TODO Auto-generated method stub	
		System.out.println("finding.....");
		return (Member)baseDAO.load(Member.class, Integer.valueOf(id));
	}

	@Override
	public String save(Member n_member) {
		// TODO Auto-generated method stub
		NumberFormat formatter  = NumberFormat.getNumberInstance();
		formatter.setMinimumIntegerDigits(7);
		formatter.setGroupingUsed(false);
		String s = formatter.format(baseDAO.save(n_member));
		System.out.println("The format ID id: "+s+".");
		 return  s;
		 
	}
	
	public void update(Member n_member){
		Session session = baseDAO.getSession();
	    session.update(n_member);
	    session.flush();
	    session.clear();
	}
    
}
