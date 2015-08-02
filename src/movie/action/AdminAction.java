package movie.action;

import java.io.IOException;
import java.io.PrintWriter;

import movie.service.MovieService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminAction extends BaseAction {
	@Autowired
	private MovieService movieService;

	private String id;
	private String password;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws IOException {

		PrintWriter out = response.getWriter();
		String result = "error";

		if (id.equals("admin") && password.equals("123456"))
			result = "admin";

		if (id.equals("manager") && password.equals("123456"))
			result = "manager";

		if (id.equals("waiter") && password.equals("123456"))
			result = "waiter";
		// if((!result.equals("error")) && (!session.containsKey("movies")))
		// session.put("movies", movieService.getOnlineName());
		out.write(result);
		out.close();
		return SUCCESS;
	}

}
