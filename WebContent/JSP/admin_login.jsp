<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!-- Bootstrap core CSS -->
    <link href="/Movie/css/bootstrap.css" rel="stylesheet">

    <!-- Custom Google Web Font -->
    <link href="/Movie/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href='/Movie/css/foo.css' rel='stylesheet' type='text/css'>

 <link href="/Movie/css/custom.css" rel="stylesheet">
<script src="/Movie/js/admin_login.js" type="text/javascript"></script>
</head>
<body>
     <div class="container">
     	<div class="row">
     		<div class="col-lg-3 col-lg-offset-5">
                <h3>CinePlex后台管理系统</h3>
     			<form  method="post">
     			   <div class="form-group">
     				<span style="font-weight:bold;">账号</span><br />
			          <input type="text" class="form-control" placeholder="" id="id" name="id" /><br /></br>
                    </div>
                  <div class="form-group">
			          <span style="font-weight:bold;" >密码</span><br />
			          <input type="password"class="form-control" placeholder="Password" id="password" name="password" /><br />
			           <p id="error" class="hidden" style="color:red"></p>
                  </div>
			           <input type="button" class="btn btn-success" onclick="p_login()" value="登录" />
     			</form>
     		</div>
     	</div>
     </div>
</body>
</html>