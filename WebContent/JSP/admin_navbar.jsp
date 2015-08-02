<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
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
      <li><a href="/Movie/finance" >财务</a></li>
      <li><a href="/Movie/human" >人力资源</a></li>
      <li><a href="#" class="scroll-link" data-id="release-movie">发布电影</a></li>
      <li><a href="#" class="scroll-link" data-id="plan-manage">管理放映计划</a></li>
      <li><a href="#" class="scroll-link" data-id="statistics">统计信息</a></li>
       <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">你好，<strong>管理员</strong> <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="/Movie/admin">个人信息</a></li>
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
