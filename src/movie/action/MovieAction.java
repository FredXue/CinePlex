package movie.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;

import movie.model.Movie;
import movie.service.MovieService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieAction {
        @Autowired
        private MovieService movieService;
		
        private String name;
        private String director;
        private String actor;
        private String language;
        private Integer duration;
        private File post;
        private String postContentType;
        private String postFileName;
        private String intro;
        private String on_date;
        private String off_date;
    	private final String postDir="D:\\eclipse\\workspace\\j2ee\\Movie\\WebContent\\img\\post\\";

        
        
        
        
        public String execute(){
        	
        	System.out.println("Saving  a  new Movie-------------------------------");
            System.out.println(postFileName);	
        	try{
        		if(post==null)
        	         System.out.println("文件为空");	
        	FileInputStream fis = new FileInputStream(post);
        	File fileLocation = new File(postDir);
        	
        	if(!fileLocation.exists())   fileLocation.mkdir();
        	
        	
        	//更换文件名？
        	StringBuffer newFileName = new StringBuffer(this.getPostFileName());
//        	int index = newFileName.indexOf(".");
//        	newFileName.delete(0, index);
//        	newFileName.insert(0, name);
//        	System.out.println("The post file name is ........."+newFileName);
        	
        	
        	File upload = new File(postDir,newFileName.toString());
        	FileOutputStream fos = new FileOutputStream(upload);
        	byte[] buffer = new byte[1024*1024];
        	int length;
        	while((length=fis.read(buffer))>0){
        		fos.write(buffer, 0, length);
        	}
        	fis.close();
        	fos.close();
        	movieService.saveMovie(name, director, actor, intro, language, duration, on_date, off_date,newFileName.toString()); 
        	
        	}catch(Exception e){
        		e.printStackTrace();
        	}
        	return "success";
        }

		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
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
		public File getPost() {
			return post;
		}
		public void setPost(File post) {
			this.post = post;
		}
		public String getPostContentType() {
			return postContentType;
		}
		public void setPostContentType(String postContentType) {
			this.postContentType = postContentType;
		}
		public String getPostFileName() {
			return postFileName;
		}
		public void setPostFileName(String postFileName) {
			this.postFileName = postFileName;
		}
		public String getIntro() {
			return intro;
		}
		public void setIntro(String intro) {
			this.intro = intro;
		}
		public String getOn_date() {
			return on_date;
		}
		public void setOn_date(String on_date) {
			this.on_date = on_date;
		}
		public String getOff_date() {
			return off_date;
		}
		public void setOff_date(String off_date) {
			this.off_date = off_date;
		}
        
}
