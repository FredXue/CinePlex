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
@Table(name="charge")
public class Charge  implements Serializable{
	@Id
    @GeneratedValue(strategy =GenerationType.AUTO)
    private Integer charge_id;
	
	private Integer amount;
	private Timestamp charge_time;
	@ManyToOne(fetch= FetchType.EAGER, cascade={CascadeType.ALL})
	@JoinColumn(name= "m_id")
	private Member member;
	
	public Integer getCharge_id() {
		return charge_id;
	}
	public void setCharge_id(Integer charge_id) {
		this.charge_id = charge_id;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Timestamp getCharge_time() {
		return charge_time;
	}
	public void setCharge_time(Timestamp charge_time) {
		this.charge_time = charge_time;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
}
