package movie.dao;

import java.util.List;

import movie.model.Answer;

public interface AnswerDAO {
	
	public Integer save(Answer a);
	public List<Answer> getAll();

}
