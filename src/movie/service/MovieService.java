package movie.service;

import java.util.List;

import movie.model.Movie;

public interface MovieService {
	
   public void saveMovie(String name, String director, String actor, String intro, String language,Integer duration,String on_date, String off_date,String filename);
   public List<Movie> getOnlineMovie();
   public List<String> getOnlineName();
   public Movie getByName(String name);

}
