package movie.service.impl;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import movie.dao.MovieDAO;
import movie.model.Movie;
import movie.service.MovieService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("movieService")
public class MovieServiceImpl implements MovieService{
	
	@Autowired
	private MovieDAO movieDAO;
	
	 public void saveMovie(String name, String director, String actor, String intro, String language,Integer duration,String on_date, String off_date,String filename){
		 Date onDate = null;
		 Date offDate = null;
		 try{
			
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			 onDate = new Date(sdf.parse(on_date).getTime());
			 offDate = new Date(sdf.parse(off_date).getTime());
		 }catch (ParseException e){
			 e.printStackTrace();
		 }
		 Movie newMovie = new Movie();
		 newMovie.setActor(actor);
		 newMovie.setDirector(director);
		 newMovie.setIntro(intro);
		 newMovie.setLanguage(language);
		 newMovie.setMovie_name(name);
		 newMovie.setDuration(duration);
		 newMovie.setOn_date(onDate);
		 newMovie.setOff_date(offDate);
		 newMovie.setFilename(filename);
		 
		 
		 movieDAO.save(newMovie);
		 
		 System.out.println(onDate+"-----------saving time-----"+offDate);
	 }

	@Override
	public List<Movie> getOnlineMovie() {
		// TODO Auto-generated method stub
		return  movieDAO.findAllOnline();
	}

	@Override
	public List<String> getOnlineName() {
		// TODO Auto-generated method stub
    	ArrayList<String> movies = new ArrayList<String>();
    	
    	for(Movie m:getOnlineMovie()){
    		movies.add(m.getMovie_name());
    	}
    	return movies;
	}

	@Override
	public Movie getByName(String name) {
		// TODO Auto-generated method stub

    	for(Movie m:getOnlineMovie()){
    	 if(m.getMovie_name().equals(name)) return m;
    	}
		return null;
	}
}
