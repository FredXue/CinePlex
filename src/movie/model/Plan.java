package movie.model;


import java.io.Serializable;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="plan")
public class Plan  implements Serializable {
	@Id
    @GeneratedValue(strategy =GenerationType.AUTO)
    private Integer plan_id;

	private String start_time;
	private Integer price;
	private String sold_seat;
	
	@ManyToOne(fetch= FetchType.EAGER, cascade={CascadeType.ALL})
	@JoinColumn(name= "movie_id")
	private Movie movie;
	
	@ManyToOne(fetch= FetchType.EAGER, cascade={CascadeType.ALL})
	@JoinColumn(name= "plans_id")
	private Plans plans;
	
	
	@OneToMany(mappedBy = "plan")
	private List<Sale> sales = new ArrayList<Sale>();
	public Integer getPlan_id() {
		return plan_id;
	}


	public void setPlan_id(Integer plan_id) {
		this.plan_id = plan_id;
	}




	public String getStart_time() {
		return start_time;
	}


	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}


	public Integer getPrice() {
		return price;
	}


	public void setPrice(Integer price) {
		this.price = price;
	}



	public String getSold_seat() {
		return sold_seat;
	}


	public void setSold_seat(String sold_seat) {
		this.sold_seat = sold_seat;
	}


	public Movie getMovie() {
		return movie;
	}


	public void setMovie(Movie movie) {
		this.movie = movie;
	}


	public Plans getPlans() {
		return plans;
	}


	public void setPlans(Plans plans) {
		this.plans = plans;
	}


	public List<Sale> getSales() {
		return sales;
	}


	public void setSales(List<Sale> sales) {
		this.sales = sales;
	}



	
	
}
