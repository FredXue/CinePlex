package movie.model;

import java.io.Serializable;

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
@Table(name="answer")
public class Answer  implements Serializable {
	@Id
	@GeneratedValue(strategy =GenerationType.AUTO)
	private Integer answer_id;

	@ManyToOne(fetch= FetchType.EAGER, cascade={CascadeType.ALL})
	@JoinColumn(name="act_id")
	private Activity act;
	@ManyToOne(fetch= FetchType.EAGER, cascade={CascadeType.ALL})
	@JoinColumn(name="m_id")
	private Member member;
	
	private Integer answer;

	public Integer getAnswer_id() {
		return answer_id;
	}
	
	public void setAnswer_id(Integer answer_id) {
		this.answer_id = answer_id;
	}
	public Activity getAct() {
		return act;
	}

	public void setAct(Activity act) {
		this.act = act;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Integer getAnswer() {
		return answer;
	}

	public void setAnswer(Integer answer) {
		this.answer = answer;
	}
	
	
	
}
