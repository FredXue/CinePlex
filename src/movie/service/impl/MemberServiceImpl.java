package movie.service.impl;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import movie.dao.ChargeDAO;
import movie.dao.MemberDAO;
import movie.model.Activity;
import movie.model.Answer;
import movie.model.Charge;
import movie.model.Member;
import movie.model.Movie;
import movie.model.Sale;
import movie.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	    @Autowired
        private MemberDAO memberDAO;
	    @Autowired
        private ChargeDAO chargeDAO;
	    
        
        public Member login(String id,String password){
        	Member m = memberDAO.findByID(id);
        	if(m!=null)
        	    if(m.getPassword().equals(password)){return m;}
        	return null;
        }

		@Override
		public String register(String name, String password, Boolean gender,
				Integer age, String bank_card) {
			// TODO Auto-generated method stub
			
			Member new_member = new Member();
			new_member.setM_name(name);
			new_member.setGender(gender);
			new_member.setPassword(password);
			new_member.setAge(age);
			new_member.setBank_card(bank_card);
            new_member.setBalance(0);
            new_member.setCredit(0);
            new_member.setRank(0);
            new_member.setState(0);
			return memberDAO.save(new_member);
			
			
		}

		@Override
		public void update(Member m) {
			// TODO Auto-generated method stub
			memberDAO.update(m);
		}

		@Override
		public void charge(Member m, int amount) {
			// TODO Auto-generated method stub
			if(amount>=200 && amount<800){
				m.setRank(1);
				m.setState(1);
				m.setAct_time(new Date(new java.util.Date().getTime()));
			}else if(amount >=800 && amount < 2000){
				m.setRank(2);
				m.setState(1);
				m.setAct_time(new Date(new java.util.Date().getTime()));
			}else if(amount>2000){
				m.setRank(3);
				m.setState(1);
				m.setAct_time(new Date(new java.util.Date().getTime()));
			}
			m.setBalance(m.getBalance()+amount);
			Charge c = new Charge();
			c.setAmount(amount);
			c.setMember(m);
			c.setCharge_time(new Timestamp(new java.util.Date().getTime()));
			chargeDAO.save(c);
			memberDAO.update(m);
		}

		@Override
		public List<Movie> getWatchedMovie(Member m) {
			// TODO Auto-generated method stub
			List<Movie> result = new ArrayList<Movie>();
			List<Sale> sales = m.getSales();
			if(sales.size()>0){
				for(Sale s : sales){
					Movie mo = s.getPlan().getMovie();
					if(!result.contains(mo))
					             result.add(mo);
					
				}
				System.out.println("返回了看过的电影"+result.size());
				return result;
			}
			return result;
		}

		@Override
		public List<Activity> getAnsweredAct(Member m) {
			// TODO Auto-generated method stub
			List<Activity> result = new ArrayList<Activity>();
			for(Answer a :m.getAnswers()){
				result.add(a.getAct());
			}
			return result;
		}
		
		
		public void change(Member m){
			m.setBalance(m.getBalance()+m.getCredit());
			m.setCredit(0);
			memberDAO.update(m);
		}

		@Override
		public Integer[] getMale() {
			// TODO Auto-generated method stub
		    List<Member> members =  memberDAO.findAll();
		    Integer all = members.size();
		    Integer male=0;
		    for(Member m: members){
		    	if(m.getGender()) male++;
		    }
		    Integer female=all-male;
		    
		    Integer[] result = new Integer[2];
		    result[0] = male;
		    result[1] = female;
			return result;
		}

		@Override
		public List<Member> getAll() {
			// TODO Auto-generated method stub
			return memberDAO.findAll();
		}

		@Override
		public void cancel(Member m) {
			// TODO Auto-generated method stub
			m.setState(3);
			memberDAO.update(m);
			
		}

		
}
