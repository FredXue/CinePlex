package movie.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "movie")
public class Movie implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer movie_id;
	private String movie_name;


	private String director;
	private String actor;

	@Column(columnDefinition = "text")
	private String intro;
	private String language;
	// minute
	private Integer duration;
	private String filename;

	private Date on_date;
	private Date off_date;


	@OneToMany(mappedBy ="movie",fetch=FetchType.EAGER,cascade={CascadeType.ALL})
	private List<Plan> plans = new ArrayList<Plan>();
	
	@OneToMany(mappedBy ="movie",fetch=FetchType.EAGER,cascade={CascadeType.ALL})
	private List<Activity> acts = new ArrayList<Activity>();
	
	public List<Activity> getActs() {
		return acts;
	}

	public void setActs(List<Activity> acts) {
		this.acts = acts;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	
	public List<Plan> getPlans() {
		return plans;
	}

	public void setPlans(List<Plan> plans) {
		this.plans = plans;
	}

	public String getFilename() {
		return filename;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Integer getMovie_id() {
		return movie_id;
	}

	public void setMovie_id(Integer movie_id) {
		this.movie_id = movie_id;
	}


	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	public Date getOn_date() {
		return on_date;
	}

	public void setOn_date(Date on_date) {
		this.on_date = on_date;
	}

	public Date getOff_date() {
		return off_date;
	}

	public void setOff_date(Date off_date) {
		this.off_date = off_date;
	}




}
