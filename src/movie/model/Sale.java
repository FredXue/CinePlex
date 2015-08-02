package movie.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="sale")
public class Sale  implements Serializable {
	@Id
    @GeneratedValue(strategy =GenerationType.AUTO)
    private Integer sale_id;
	
	@ManyToOne(fetch=FetchType.EAGER,cascade ={ CascadeType.ALL})
    @JoinColumn(name= "m_id")
	private Member member;
	
	@ManyToOne(fetch=FetchType.EAGER,cascade ={ CascadeType.ALL})
    @JoinColumn(name= "plan_id")
	private Plan plan;
	
	private Integer num;
	private Integer sum;
	private Integer isCash;
	private Timestamp sale_time;
	
	public Integer getSum() {
		return sum;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	public Integer getSale_id() {
		return sale_id;
	}
	public void setSale_id(Integer sale_id) {
		this.sale_id = sale_id;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Plan getPlan() {
		return plan;
	}
	public void setPlan(Plan plan) {
		this.plan = plan;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Integer getIsCash() {
		return isCash;
	}
	public void setIsCash(Integer isCash) {
		this.isCash = isCash;
	}
	public Timestamp getSale_time() {
		return sale_time;
	}
	public void setSale_time(Timestamp sale_time) {
		this.sale_time = sale_time;
	}
	
}
