<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
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
  
    <div class="row">
      <div class="col-lg-offset-2 col-lg-8">
        <h3>本月经理营业报告</h3>
        <textarea  class="form-control" rows="25">
          这里是经理营业报告；
           这里是经理营业报告；
            这里是经理营业报告；
             这里是经理营业报告；
              这里是经理营业报告；

        </textarea>
      </div>
      
    </div>



</div>



  
<%@ include file="footer.jsp" %>


    
    <script src="/Movie/js/Chart.js" type="text/javascript"></script>
    <script src="/Movie/js/admin.js"></script>  
</body>

</html>