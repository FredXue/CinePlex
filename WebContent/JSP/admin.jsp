<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>

<link href="/Movie/css/admin.css" rel="stylesheet">
<link href="/Movie/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">


</head>


<body>
<%@ include file="admin_navbar.jsp" %>

         <div class="content-section-a" id="release-movie" style="border-bottom: 2px solid #eb002a;">
          <div class="container">
           <div class="row">
              <div class="col-lg-8 col-lg-offset-2">
              <!-- choose movie row-->
              <h1 class="row" id="info">发布电影</h1>
              <!-- Movie  form -->
              <form id="release-movie" onsubmit="return release()" action="/Movie/admin/release" method="post" enctype="multipart/form-data">

               <div class="info-row row">
                 <label class="info-label col-lg-3 col-lg-offset-2"  >电影名称：</label>
                <input type="text" class="info-item col-lg-3" name="name" id="name" value=""/>
               </div>
                     <div class="info-row row">
                 <label class="info-label col-lg-3 col-lg-offset-2" >导演：</label>
                <input type="text" class="info-item col-lg-3" name="director" id="director" value=""/>
               </div>
                     <div class="info-row row">
                 <label class="info-label col-lg-3 col-lg-offset-2" >演员：</label>
                <input type="text" class="info-item col-lg-3" name="actor" id="actor" value=""/>
               </div>
                     <div class="info-row row">
                 <label class="info-label col-lg-3 col-lg-offset-2" >语言：</label>
                <input type="text" class="info-item col-lg-3" name="language" id="language" value=""/>
               </div>
                     <div class="info-row row">
                 <label class="info-label col-lg-3 col-lg-offset-2">时长：</label>
                <input type="text" class="info-item col-lg-3"  name="duration" id="duration"  value=""/>
               </div>
               <div class="info-row row">
                 <label class="info-label col-lg-3 col-lg-offset-2" >上传海报：</label>
                <input type="file" class="info-item col-lg-4"  name="post" id="post" value=""/>
               </div>
                     <div class="info-row row">
                 <label class="info-label col-lg-3 col-lg-offset-2" >简介：</label>
                <textarea class="info-item col-lg-6" rows="8" cols="70" name="intro" id="intro" value="" ></textarea>
               </div>

               <div class="info-row row">

                 <label for="dtp_input1" class="info-label col-lg-3 col-lg-offset-2 control-label" style="margin-top:5px">上线日期：</label>
                 <div class="input-group date form_date col-lg-3" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input1" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text"  name="on_date" id="on_date" value="" readonly>
                 
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
              
                </div>
                <input type="hidden" id="dtp_input1" value="" /><br/>
              </div>
                     
             <div class="info-row row">
         
                 <label for="dtp_input2" class="info-label col-lg-3 col-lg-offset-2 control-label" style="margin-top:5px">下线日期：</label>
                 <div class="input-group date form_date col-lg-3" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd" >
                    <input class="form-control" size="16" type="text" name="off_date" id="off_date" value="" readonly>
                 
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
             
                </div>
                <input type="hidden" id="dtp_input2" value="" /><br/>
              </div>

                <input class="btn btn-default col-lg-2 col-lg-offset-5" type="submit"  value="发布电影">
              </form>
 

            </div>
          </div>
        </div>
        <!-- /.container -->
         
         </div>
     


          <div class="content-section-a" id="plan-manage" style=" border-bottom: 2px solid #eb002a;">
            <div class="container">
             <h1 class="title" id="info" >管理放映计划</h1>
            <div class="plan-filter row" style="margin-top:50px; margin-bottom:20px; border-bottom: 2px solid #eb002a;">
       
             <div class="form-group" style="margin:0">
              <label for="dtp_input1" class="col-xs-2 control-label col-xs-offset-2" style="margin-top:5px">选择影厅：</label>
              <div class="col-xs-2 ">                  
                <select class="form-control" name="hall" id="hall-filter">  
                  <option value ="1">1号厅</option>  
                  <option value ="2">2号厅</option>  
                  <option value="3">3号厅</option>  
                </select> 
              </div>
              </div>
               <div class="form-group">
                <label for="dtp_input1" class="col-xs-2 control-label" style="margin-top:5px">选择日期：</label>
                <div class="input-group date form_date col-xs-2" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input1" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text" value="" name="plans_date" id="date-filter"readonly>
                 
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
            </div>
            <div class="form-froup ">
                <span>&nbsp; &nbsp; &nbsp; 状态：</span>
                <span id="plans-state">???</span>
            </div>
          </div>

            <div class="plan-filter row" >
              <div class="col-lg-8 col-lg-offset-2">
              <table class="table table-striped hall-table">
                  <thead>
                    <tr>
                        <th class="hall-movie">放映电影</th>
                        <th class="hall-time-end">电影开始时间</th>
                    </tr>

                  </thead>
                  <tbody id="tbody"> 
                   </tbody>  
                </table>

                <div class="row">
                  <button class="btn btn-default col-lg-offset-3 hidden" id="accept" onclick="accept()">批准放映计划</button>
                  <button class="btn btn-default col-lg-offset-1 hidden" id="reject" onclick="reject()">不批准</button>
                </div>
              </div>  
            </div>
          </div>
        </div>

          <div class="content-section-a" id="statistics">
            <div class="container" style=" border-bottom: 2px solid #eb002a;">
              <!-- 会员统计信息 -->
         
                  <h1 class="title">统计信息</h1>
           
              <div class="row" style="margin-top:100px">

                <div class="col-lg-5 col-lg-offset-4">
                <canvas id="gender-pie" width="300" height="300" style="width:300px; height:300px;"></canvas>
                  <h3>Figure1： 会员性别比例</h3>
                </div>
              </div>
              
             <div class="row" style="margin-top:50px">
                   
                <div class="col-lg-5 col-lg-offset-4">
                <canvas id="movie-bar" width="300" height="300" style="width:300px; height:300px;"></canvas>
                  <h3>Figure2： 各上映电影的拍片数柱状图</h3>
                </div>
              </div>
            </div>

          </div>


  


<%@ include file="footer.jsp" %>

<script type="text/javascript" src="/Movie/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="/Movie/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    
    <script src="/Movie/js/Chart.js" type="text/javascript"></script>
    <script src="/Movie/js/admin.js"></script>  
</body>

</html>

