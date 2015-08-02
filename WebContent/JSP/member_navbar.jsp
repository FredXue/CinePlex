<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="movie.model.*" %>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">CinePlex</a>
  </div>
     <% Member user = (Member)session.getAttribute("user");
	 Boolean isLogin = false;
            if(user!=null)  isLogin = true;
            %>
  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav navbar-right">
      <li><a href="/Movie"  >主页</a></li>
      <li><a href="/Movie" >选座购票</a></li>
      <li><a href="/Movie/joinActivity">参加活动</a></li>
      <li><a href="/Movie/member_report">反馈</a></li>
      <%if(user==null) { %>
      <li><a style="cursor:pointer;" id="loginpopup">登录 / 注册</a></li>
      <%}else{ %>
      <li class="dropdown">
        <a href="" class="dropdown-toggle" data-toggle="dropdown">你好，<strong><%= user.getM_name()%></strong> <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="memberInfo">会员信息</a></li>
          <li><a href="#">购票</a></li>
          <li class="divider"></li>
          <li><a href="logout">登出</a></li>
        </ul>
      </li>
      
      <%} %>
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
  <!-- Code for Login / Signup Popup -->
  <!-- Modal Log in -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	  <div class="modal-dialog" style="margin-top: 150px;">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel1">登录CinePlex</h4>
	      </div>
        <form >
	      <div class="modal-body" id="login_details">   
          <span style="font-weight:bold;">会员ID</span><br />
          <input type="text" placeholder="" id="id" name="id" /><br /></br>
          <span style="font-weight:bold;" >密码</span><br />
          <input type="password" placeholder="Password" id="password" name="password" /><br />
           <p id="error" class="hidden" style="color:red"></p>
           <input type="button" class="btn btn-success" onclick="login()" value="登录" />
          </div>
        </form>
        <div class="modal-footer" >    
         <span class="fp-link"> <a href="#">忘记密码？</a></span>
         </br></br>
         <span> 还不是会员？</span>
         <span id="signup-link" style="cursor:pointer;" class="text-info">现在注册！</span>
        </div>
	     
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
 <!--Modal Login Ends -->
 <!-- Modal Sign-up Starts -->
	<div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
	  <div class="modal-dialog" style="margin-top: 100px;">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel2">注册CinePlex</h4>
	      </div>
	      <div class="modal-body" id="signup_details">
          <form  action="register" onsubmit="return register()" method="post">
	        <span >姓名</span>
	        <input type="text" placeholder="Full Name" id="r_name" name="r_name"/> </br>
	        <span >年龄</span>
	        <input type="text" placeholder="age" id="r_age" name="r_age" /></br>
          <span>性别</span>
          <input type="radio"  name="r_gender" value="0" >男   
          <input type="radio"  name="r_gender" value="1">女</br>
          <span >银行卡号</span>
          <input type="text" placeholder="bank-card"  id="r_bankcard" name="r_bankcard"/> </br>
          	        <span >请输入密码</span>
	        <input type="password" placeholder="Password"  id="r_password" name="r_password" /></br>
	        <span >再次输入密码</span>
	        <input type="password" placeholder=k"Re-type Password"   id="re_password" name="re_password"/>
            <p id="r_error" class="hidden" style="color:red"></p>
            <input style="float:left" type="submit" class="btn btn-success" value="确认注册" /> 
          </form>
	      </div>
	      
	      <div class="modal-footer" >		
	       <span>&nbsp;&nbsp;&nbsp; 已经是会员？ </span><span id="login-link" class="text-info" style="cursor:pointer;">  现在登录！  </span> 
		 </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
  <!-- Modal Sign up ends! -->
  <!-- End code for Login / Signup Popup -->
