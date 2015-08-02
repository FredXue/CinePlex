package movie.dao.impl;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import movie.dao.BaseDAO;
import movie.dao.MovieDAO;
import movie.model.Movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDAOImpl implements MovieDAO{
    @Autowired
    private BaseDAO baseDAO;
    
	@Override
	public List<Movie> findAllOnline() {
		// TODO Auto-generated method stub
		Date now  = new Date(new java.util.Date().getTime());
		
		List<Movie> allMovies = findAll();
	    List<Movie> onMovies = new ArrayList<Movie>();
	     
	    for(Movie m : allMovies){
			if(m.getOn_date().compareTo(now)<=0 && m.getOff_date().compareTo(now)>=0)
				onMovies.add(m);
		}
	
		return onMovies;
	}

	@Override
	public List<Movie> findAll() {
		// TODO Auto-generated method stub
       return baseDAO.getAllList(Movie.class);

	}

	@Override
	public String save(Movie m) {
		// TODO Auto-generated method stub
		baseDAO.save(m);
		return null;
	}

}
