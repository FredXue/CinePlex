<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@ include file="header.jsp"%>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">CinePlex-Admin</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav navbar-right">
       <li><a href="/Movie/manager" >影院营业信息</a></li>
       <li><a href="/Movie/manager2" >经理营业报告</a></li>
       <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">你好，<strong>董事</strong> <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">个人信息</a></li>
          <li class="divider"></li>
          <li><a href="/Movie/">登出</a></li>
        </ul>
      </li>
    </ul>
    <!-- 
    <form class="navbar-form navbar-right" role="search">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
    -->
  </div><!-- /.navbar-collapse -->
  </nav>

   <div class="container" style="margin-top:50px">
   <h1 style="margin-left:100px">影院营业基本信息</h1>
     <div class="row">
       <div class="col-lg-offset-3 col-lg-6">
         <h3>影院主营业务收入走势</h3>
        <canvas id="figure1"  style="width:400px; height:300px;"></canvas>
      <h3>Figure1：月度收入折线图</h3>



       </div>
     </div>
     <div class="row">
       <div class="col-lg-offset-3 col-lg-6">
         <h3>影院净利润走势</h3>

      <canvas id="figure2"  style="width:400px; height:300px;"></canvas>
      <h3>Figure2：月度净利润折线图</h3>


       </div>
     </div>
     <div class="row">
       <div class="col-lg-offset-3 col-lg-6">
         <h3>影院支出走势</h3>
     <canvas id="figure3"  style="width:400px; height:300px;"></canvas>
      <h3>Figure3：月度支出折线图</h3>



       </div>
     </div>
   </div>

   <%@ include file="footer.jsp" %>
 
    <script src="/Movie/js/Chart.js" type="text/javascript"></script>
    <script >
  window.onload = function(){
var data1 = {
  labels : ["过去6月","过去5月","过去4月","过去3月","过去2月","上一月","本月"],
  datasets : [
    {
     fillColor : "rgba(151,187,205,0.5)",
      strokeColor : "rgba(151,187,205,1)",
      pointColor : "rgba(151,187,205,1)",
      pointStrokeColor : "#fff",
      data : [0,0,0,4900,43000,4900,48000]
    }
  ]
}
var data2 = {
  labels : ["过去6月","过去5月","过去4月","过去3月","过去2月","上一月","本月"],
  datasets : [
    {
     fillColor : "rgba(151,187,205,0.5)",
      strokeColor : "rgba(151,187,205,1)",
      pointColor : "rgba(151,187,205,1)",
      pointStrokeColor : "#fff",
      data : [0,0,0,900,3000,900,8000]
    }
  ]
}
var data3 = {
  labels : ["过去6月","过去5月","过去4月","过去3月","过去2月","上一月","本月"],
  datasets : [
    {
     fillColor : "rgba(151,187,205,0.5)",
      strokeColor : "rgba(151,187,205,1)",
      pointColor : "rgba(151,187,205,1)",
      pointStrokeColor : "#fff",
      data : [0,0,0,4000,3000,5000,6000]
    }
  ]
}
var ctx = document.getElementById("figure1").getContext("2d");
 new Chart(ctx).Line(data1);

ctx = document.getElementById("figure2").getContext("2d");
 new Chart(ctx).Line(data2);
ctx = document.getElementById("figure3").getContext("2d");
 new Chart(ctx).Line(data3);
}
    </script>  
</body>

</html>