package movie.dao.impl;

import java.util.List;

import movie.dao.AnswerDAO;
import movie.dao.BaseDAO;
import movie.model.Answer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class AnswerDAOImpl implements AnswerDAO{

	 @Autowired
     private BaseDAO baseDAO;
	 
	 public Integer save(Answer a){
		 return baseDAO.save(a);
	 }

	@Override
	public List<Answer> getAll() {
		// TODO Auto-generated method stub
		return (List<Answer>)baseDAO.getAllList(Answer.class);
	}
}
