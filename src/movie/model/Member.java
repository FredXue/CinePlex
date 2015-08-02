package movie.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="member")
public class Member implements Serializable {
       

	   @Id
       @GeneratedValue(strategy =GenerationType.AUTO)
       private Integer m_id;
       
       private String m_name;
       private Boolean gender;
       private Integer age;
       private Integer balance;
       private Integer state;
       private Integer rank;
       private Integer credit;
       private String bank_card;
	   private Date act_time;
       private Date pause_time;
       private String password;
       
	   @OneToMany(mappedBy ="member" ,fetch=FetchType.EAGER,cascade={CascadeType.ALL})
       private List<Sale> sales=new ArrayList<Sale>();
       @OneToMany(mappedBy ="member" ,fetch=FetchType.EAGER,cascade={CascadeType.ALL})
       private List<Charge> charges = new ArrayList<Charge>();
       @OneToMany(mappedBy ="member" ,fetch=FetchType.EAGER,cascade={CascadeType.ALL})
       private List<Answer> answers = new ArrayList<Answer>();
       
       public Date getPause_time() {
    	   return pause_time;
       }
       public void setPause_time(Date pause_time) {
    	   this.pause_time = pause_time;
       }
       public String getPassword() {
    	   return password;
       }
       public void setPassword(String password) {
    	   this.password = password;
       }

       public Integer getM_id() {
		return m_id;
	}
	public void setM_id(Integer m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Integer getBalance() {
		return balance;
	}
	public void setBalance(Integer balance) {
		this.balance = balance;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Integer getRank() {
		return rank;
	}
	public void setRank(Integer rank) {
		this.rank = rank;
	}
	public Integer getCredit() {
		return credit;
	}
	public void setCredit(Integer credit) {
		this.credit = credit;
	}
	public String getBank_card() {
		return bank_card;
	}
	public void setBank_card(String bank_card) {
		this.bank_card = bank_card;
	}
	public Date getAct_time() {
		return act_time;
	}
	public void setAct_time(Date act_time) {
		this.act_time = act_time;
	}
	public List<Sale> getSales() {
		return sales;
	}
	public void setSales(List<Sale> sales) {
		this.sales = sales;
	}
	public List<Charge> getCharges() {
		return charges;
	}
	public void setCharges(List<Charge> charges) {
		this.charges = charges;
	}
	public List<Answer> getAnswers() {
		return answers;
	}
	public void setAnswers(List<Answer> answers) {
		this.answers = answers;
	}

       

	
}
