<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ page import="movie.model.Movie" %>
<%@ page import="java.util.*" %>

<link href="/Movie/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    

</head>
<body>
<%@ include file="waiter_navbar.jsp" %>

//获取在线电影列表
    <% List<Movie> movies = (List<Movie>)session.getAttribute("movies");
    String options="";
    int length = movies.size();
    if(length>0)
    for(int i=0;i<length;i++){
        options= options+"<option onchange='updateTime()' value =\'"+i+"\'>"+movies.get(i).getMovie_name()+"</option>";
    }

 %>


 <div class="content-section-a" >
     <form action="queryPlans" onsubmit="return checkSubmit()" method="post">
            <div class="plan-filter row" style="margin-top:50px; margin-bottom:20px; border-bottom: 2px solid #eb002a;">
       
             <div class="form-group" style="margin:0">
              <label for="dtp_input1" class="col-xs-1 control-label col-xs-offset-2" style="margin-top:5px">选择影厅：</label>
              <div class="col-xs-2 ">                  
                <select class="form-control" name="hall" id="hall-filter">  
                  <option value ="1">1号厅</option>  
                  <option value ="2">2号厅</option>  
                  <option value="3">3号厅</option>  
     
                </select> 
              </div>
              </div>
               <div class="form-group">
                <label for="dtp_input1" class="col-xs-1 control-label" style="margin-top:5px">选择日期：</label>
                <div class="input-group date form_date col-xs-2" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input1" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text" value="" name="plans_date" id="date-filter"readonly>
                 
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
            </div>
            <div class="form-froup   col-xs-offset-2">
                <span>&nbsp; &nbsp; &nbsp; 状态：</span>
                <span id="plans-state">???</span>
                </div>
            </div>

            <div class="plan-filter row" >
              <div class="col-lg-8 col-lg-offset-2">
      
              <table class="table table-striped hall-table" id="plan_table">
                  <thead>
                    <tr>
                        <th class="hall-movie">放映电影</th>
                        <th class="hall-time-start">开始时间</th>
                        <th class="hall-time-end">预计结束时间</th>
                        <th class="price">价格</th>
                        <th class="delete-head"> 操作 </th>
                    </tr>

                  </thead>
                  <tbody id="tbody">                           
                
                      </tbody>  
                </table>
                
                <div class="row">
                   <a class="btn btn-default col-lg-offset-1" id="add">添加场次 </a>
                  <input type ="submit" class="btn btn-default col-lg-offset-3" id="submit" value="确认提交">
                </div>

     
              </div>  
            </div>
   </form>
          </div>

<%@ include file="footer.jsp" %>


    <script type="text/javascript" src="/Movie/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="/Movie/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>

<script type="text/javascript">
  
  var tdCount=0;
$('#add').bind("click",function(){
  tdCount++;
  var t = document.getElementById('tbody');
      t.innerHTML += "<tr>  <td class='hall-movie'><select class='form-control movie_selector' name='movie_name' onchange='updateDuration()' id='movie-"+tdCount+"'>"+"<%=options%>"+"</select> </td>    <td class='hall-time-start' style='width:200px'> <div class='form-group'> <div class='input-group date form_time col-lg-2' data-date='' data-date-format='hh:ii' data-link-field='dtp_input3' data-link-format='hh:ii'><input class='form-control stime' type='text' style='width:180px' value='' name='start_time'   id='time-"+tdCount+"' readonly><span class='input-group-addon' ><span class='glyphicon glyphicon-time' ></span></span></div></div></td>           <td class='hall-time-end' data-partcode='mtime' style='width:200px'><div class='form-group'><input class='form-control' size='16' type='text' value=''  id='endtime-"+tdCount+"'  readonly></div></td>    <td ><input type='text' class='form-control'size='10' value='80' name='price' id='price-"+tdCount+"' ></td><td ><a class='btn delete' onclick='javascript: $(this).parent().parent().remove();  tdCount--;'>删除</a></td></tr>" ;
});


$('#add').on("click",function(){
      $('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 1,
    minView: 0,
    maxView: 1,
    forceParse: 0
    });

      $('.stime').bind('change',function(){
       var this_id = $(this).attr('id');
       var index= this_id.substring(5,6);
       // var select = "movie-"+index;
       // var m = document.getElementById(select);
       // var index2 = m.selectedIndex;
       // var str = m[index2].text;       
       //  var index3 = str.indexOf("&");
       //  var min = str.substring(index3+1,str.length);
        
       //  var start_time = $(this).val();
       //  var index4 = str.indexOf(":");
       //  var min1 = start_time.substring(0,index4+1);
        
        // alert(min1);
        // var hour = (parseInt(min1)+parseInt(min))%60;
        // var minute = (parseInt(min1)+parseInt(min))/60;
        // alert(hour+"--"+minute);
        // if(minute<10) mm = "0"+minute;
        // else mm = minute;
        
        // if(hour<10) hh = "0"+hour;
        // else hh = hour;
        // var end_time = hh+":"+mm;
        
         var select2 = "endtime-"+index;
         
         var end_time="NaN:NaN"
        document.getElementById(select2).value=end_time;

       });
    });
    
    
</script>
 <script src="/Movie/js/make_plan.js"></script>
</body>
</html>