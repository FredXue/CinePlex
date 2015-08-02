<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ page import="java.util.*" %>    
<%@ page import="movie.model.Movie" %>
   <link rel="stylesheet" type="text/css" href="/Movie/css/make_activity.css">

</head>
<body>
<%@ include file="waiter_navbar.jsp"%>


 <div class="container">
           <div class="row" style="margin-top:50px">
             <div class="col-xs-8 col-xs-offset-2">
              <h3 > 制订活动</h3>
              <form class="form-activity form-froup" onsubmit="return checkQuestion()" action="makeActivity" method="post">
                <div class="question-wrapper">
                  <div class="row">
               
                     <p class="navbar-text col-xs-2">问题内容：</p>
        
                   <div class="col-xs-8 " style="padding-top:10px">
                     <input type="text" class="form-control"  placeholder="请在这里输入问题" id="question" name="question">
                    </div>
                  </div>
                  <div class="row">
                    <p class="navbar-text col-xs-2">问题选项：</p>
                    <div class="choice col-xs-3">
                      <p >A:
                      <input type="text" class="form-control" id="choice_a" name="choice_a" ></p>
                    </div>
                     <div class="choice col-xs-3">
                      <p>B:
                      <input type="text" class="form-control" id="choice_b" name="choice_b"></p>
                    </div>
                     <div class="choice col-xs-3">
                      <p>C:
                      <input type="text" class="form-control" id="choice_c" name="choice_c"></p>
                    </div>
                  

                  
                      <p class="navbar-text col-xs-2">匹配电影：</p>

                      <%  List<Movie> movies = (List<Movie>)session.getAttribute("movies");   
                         for(int i =0;i<movies.size();i++){
                      %>
                      <label class="col-xs-2 movie-choice"><input name="movie" type="radio"  value="<%=i%>" <% if(i==0){%> checked <%}%>/><%=movies.get(i).getMovie_name()%></label> 
                        <%
                          }
                        %>
                    </div>
                  <div class="clearfix"></div>
                  <input class="btn btn-default col-xs-offset-3" type="submit" value="提交活动">
                </div>
              </form>
               
             </div>
           </div>
         </div>


<%@ include file="footer.jsp"%>

<script type="text/javascript" src="/Movie/js/make_activity.js"></script>
</body>
</html>