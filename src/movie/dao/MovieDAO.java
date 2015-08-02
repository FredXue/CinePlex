package movie.dao;

import java.util.List;

import movie.model.Movie;

public interface MovieDAO {
	public List<Movie> findAllOnline();
	public List<Movie> findAll();
    public String save(Movie m);
}
