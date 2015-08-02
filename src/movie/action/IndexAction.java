package movie.action;

import movie.service.MovieService;
import movie.service.PlanService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class IndexAction extends BaseAction{

	@Autowired
	private MovieService movieService;
    
	@SuppressWarnings("unchecked")
	public String execute(){
		session.put("movies", movieService.getOnlineMovie());
		System.out.println("OnLine Movie size:"+movieService.getOnlineMovie().size());
		return SUCCESS;
	}
}
