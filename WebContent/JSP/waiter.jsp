<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ page import="java.util.*" %>    
<%@ page import="movie.model.Movie" %>
<%@ page import="java.text.SimpleDateFormat" %>
</head>
<body>
<%@ include file="waiter_navbar.jsp" %>

<div class="content-section-a" id="select">

        <div class="container">
           <div class="row">
           	  <div class="col-lg-8 col-lg-offset-2">
	            <!-- choose movie row-->
	            <div class="row movie-select">
                   <ul class="filter-select">
                   	  <li>              
                   	     		 
                   	  <div class="select-tags">
                   	   <label>选择影片:&nbsp;&nbsp;&nbsp;</label> 
          <%
           List<Movie> movies = (List<Movie>)session.getAttribute("movies");   
		       SimpleDateFormat df = new SimpleDateFormat("MM-dd");
			     String today =df.format(new Date())+"(今天)";
			     Calendar c = Calendar.getInstance();
		        c.add(Calendar.DAY_OF_MONTH, 1);
		      String tomorrow = df.format(c.getTime()) +"(明天)";				  
               int length = movies.size();
              for(int i=0;i<length;i++){
         %>
          <p> <input type="radio" value=<%=i%> name="movie-filter" onclick="showPlan()" > <%=movies.get(i).getMovie_name()%></p>
           <%        }
       
           %>
                   	  </div>
                      </li>

                     <li>
                      
					  <div class="select-tags">
					  <label>选择时间:&nbsp;&nbsp;&nbsp;</label>
                   	   <p> <input type="radio" value="0" name="date-filter" onclick="showPlan()"  checked> <%=today%></p>
                   	   <p> <input type="radio" value="1" name="date-filter" onclick="showPlan()" > <%=tomorrow%></p>
                   	  </div>
                   	  </li>
                  </ul>
  	            </div>

	            <div class="row">
	            	<table class="table table-striped hall-table">
                  <thead>
                    <tr>
                        <th class="hall-time">放映时间</th>
                        <th class="hall-name">放映厅</th>
                        <th class="hall-price">现价（元）</th>
                        <th class="hall-buy">售票</th>
                    </tr>
                  </thead>
                  <tbody id="tbody">
                              
                  </tbody>  
                </table>
                <h2 id="isPlan" class="hidden" style="color:#ae3910; TEXT-ALIGN:center;" >当天该电影没有放映计划！</h2>
	            </div>
	          </div>
          </div>
        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

<%@ include file="footer.jsp" %>

<script type="text/javascript">
  
function showPlan(){
 var box1 = document.getElementsByName("movie-filter");
 var box2 = document.getElementsByName("date-filter");
 var movieIndex;
 var dateIndex;
           for(var i=0;i<box1.length;i++){
                    if(box1[i].checked){
                          movieIndex= box1[i].value;
                        break;
                    }
                }
          for(var i=0;i<box2.length;i++){
            if(box2[i].checked){
                  dateIndex = box2[i].value;
                break;
            }
        }

      $.ajax({
        type:'post',
        url:'/Movie/json/ajaxfindPlan.action',
        data:{'movieIndex':movieIndex,'dateIndex':dateIndex},
        dataType:'json',
        success:function(data){
      var t = document.getElementById('tbody');
        if(data.plan_id.length>0) {
            $('#isPlan').addClass('hidden'); 
           
            for(var i= 0; i<data.plan_id.length;i++){
                  t.innerHTML += "<tr><td class='hall-time'><em class='bold'>"+data.start_time_2[i]+"</em></td><td class='hall-name'>"+data.hall_2[i]+"号厅</td><td class='hall-price' ><em class='now'>"+data.price_2[i]+"</em></td><td class='hall-buy'><form action='goSell' ><input type='text' class='hidden' name='plan_id' value="+data.plan_id[i]+"><button class='btn seat-btn' type='submit' >售票</button></form></td></tr>";
            }
        }else{
           t.innerHTML="";
           $('#isPlan').removeClass('hidden');
        }
      },

        error:function (XMLHttpRequest, textStatus, errorThrown) {

           alert(XMLHttpRequest.status);
           alert(XMLHttpRequest.readyState);
           alert(textStatus);
         }
      });
      
}

</script>
</body>
</html>