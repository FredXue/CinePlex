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
@Table(name="plans")
public class Plans  implements Serializable {


	@Id
    @GeneratedValue(strategy =GenerationType.AUTO)
    private Integer plans_id;
	
	private Integer hall;
	private Date plans_date;
	private Integer state;
	@OneToMany(mappedBy ="plans",fetch=FetchType.EAGER,cascade={CascadeType.ALL})
	private List<Plan> planss = new ArrayList<Plan>();
	
    public Integer getPlans_id() {
		return plans_id;
	}
	public void setPlan_id(Integer plan_id) {
		this.plans_id = plan_id;
	}
	public Integer getHall() {
		return hall;
	}
	public void setHall(Integer hall) {
		this.hall = hall;
	}
	public Date getPlans_date() {
		return plans_date;
	}
	public void setPlans_date(Date plans_date) {
		this.plans_date = plans_date;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}

	public List<Plan> getPlanss() {
		return planss;
	}
	public void setPlanss(List<Plan> planss) {
		this.planss = planss;
	}

}
