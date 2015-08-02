<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ page import="java.util.*" %>    
<%@ page import="movie.model.Movie" %>
    <link href="/Movie/css/activity.css" rel="stylesheet">
</head>
<body>
<%@ include file="member_navbar.jsp" %>
<div class="container">
  <div class="row">
    <div class="col-lg-8 col-lg-offset-2">
      <div class="row" style="border-bottom:solid #ae3910;margin-top:50px;">
      <h2>所有活动</h2>
      </div>
    
        <% List<Activity> act = (List<Activity>)session.getAttribute("act");
        if(act.size()>0){
        	for(Activity a:act){ %>

      <form action="/Movie/answer" onsubmit="return answer()">
      <div class="activity-wrapper" style="border-bottom: solid #ae3910;margin-top:15px;">
          <input class="hidden" name="act_id" value=<%=a.getAct_id()%>>
            <div class="form-group question-wrapper">
                  <div class="row">
               
                     <p class="navbar-text col-xs-2">问题内容：</p>
        
                    <div class="col-xs-8 " style="padding-top:10px">
                     <p class="form-control"><%=a.getQuestion() %></p>
                    </div> 
                  </div>

                  <div class="row">
                    <p class="navbar-text col-xs-2">问题选项：</p>
                    <div class="choice col-xs-3">
                       <input name="answer" type="radio"  value="1" checked/><%=a.getAnswer_a() %>
                       
                     
                    </div>
                     <div class="choice col-xs-3">
                      <input name="answer" type="radio" value="2" /><%=a.getAnswer_b() %>
                      
               
                    </div>
                     <div class="choice col-xs-3">
                      <input name="answer" type="radio" value="3" /><%=a.getAnswer_c() %>                   
                    </div>
                   </div>
                 
                  <input class="btn btn-default" type="submit" value="提交答案">
                </div>

      
         </div>

        </form>
     	   <% }     	
        }else{  
        %>    
        	<h2>尚没有活动可以参加</h2>

     <%  }
%>
   


      <div>
        
      </div>
    </div>
  </div>

</div>



<div class="clearfix"></div>

<%@ include file="footer.jsp" %>

<SCRIPT TYPE="text/javascript">
  function answer(){
     alert("成功参加活动，并获得积分！")；

      return true;
  } 


</SCRIPT>
</body>
</html>