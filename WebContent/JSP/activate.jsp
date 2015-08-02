  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="header.jsp"%>
 
 </head>  
   <body>
   <%@ include file="member_navbar.jsp" %>
   <% String newid = (String)request.getAttribute("new_id");%>
    <div class="container" style="margin-top:50px">
       <div class="row">
       <h1 class="col-offset-3">您的会员ID是<%= newid%>!</h1>
     
       <p>一次充值200元即可激活白金会员资格，800元可激活黄金会员资格，2000元可激活钻石会员资格！</p>
       <a href="/Movie/?login=true" class="col-offset-3">立即登录并充值！</a>

       </div>
    </div>
   <%@ include file="footer.jsp" %>
   </body>
