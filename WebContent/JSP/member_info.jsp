   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>    
<%@ page import="movie.model.Movie" %>
   <%@ include file="header.jsp"%>
   <link href="/Movie/css/member_info.css" rel="stylesheet">
 </head>
   <body>
   <%@ include file="member_navbar.jsp" %>
   
   
   <% user= (Member)session.getAttribute("user"); %>
<div class="content-section-a" id="member_info">
 <div class="container">
           <div class="row">
              <div class="col-lg-8 col-lg-offset-2">
              <!-- choose movie row-->
              <h1 class="row" id="info">个人信息</h1>
          <div class="info-row row">
              <label class="info-label col-lg-3 col-lg-offset-2" id="name">会员姓名：</label>
              <div class="info-item col-lg-3"><%= user.getM_name() %></div>
           </div>

           <div class="info-row row">
              <label class="info-label col-lg-3 col-lg-offset-2" id="id">会员ID：</label>
              <div class="info-item col-lg-3"><%= user.getM_id() %></div>
           </div>

            <div class="info-row row">
              <label class="info-label col-lg-3 col-lg-offset-2" id="bankcard">银行卡号:</label>
              <div class="info-item col-lg-6"><%=user.getBank_card() %>
           </div>
          </div>
          
           <div class="info-row row">
              <label class="info-label col-lg-3 col-lg-offset-2" id="balance">账户余额：</label>
              <div class="info-item col-lg-6"><%= user.getBalance() %><a id="" onclick="showCharge()" style="font-size:15px;margin-left:30px">现在充值!</a></div>
           </div>
           <div id="charge" class="info-row row hidden">
                <form action="/Movie/charge" onsubmit="return charge()">
                    <span>充值金额：</span>
                    <input type="text"  class="form-control" id="amount" name="amount" value="0">
                    <button type="submit">确认充值</button>
                </form>
           </div>
           <div class="info-row row">
              <label class="info-label col-lg-3 col-lg-offset-2" id="credit">积分：</label>
              <div class="info-item col-lg-6"><%= user.getCredit() %><a href="/Movie/changeToBal" style="font-size:15px;margin-left:30px">兑换为余额</a></div>
              
           </div>
           <div class="info-row row">
              <label class="info-label col-lg-3 col-lg-offset-2" id="rank">级别：</label>
              <div class="info-item col-lg-3"><%= user.getRank() %></div>
           </div>
           <div class="info-row row">
              <label class="info-label col-lg-3 col-lg-offset-2" id="signup-date">会员激活日期：</label>
              <div class="info-item col-lg-3"><%if(user.getAct_time()==null){ %>尚未激活，充值200元以上激活。<%}else{ %><%=user.getAct_time()%> 
              <%} %></div>
           </div>
            <div class="info-row row">          
              <div class="info-item col-lg-3 col-lg-offset-2" id="cancel-member"><a href="/Movie/cancelMember">注销会员资格</a></div>

           </div>
 

            </div>
          </div>
        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->
    
    <div class="container">
  <div class="row">
    <div class="col-lg-8 col-lg-offset-2">
        <h2>消费记录</h2>
       <table class="table table-striped sale-table">
                  <thead>
                    <tr>
                        <th class="movie-name">观看电影</th>
                        <th class="sale-sum">消费金额</th>
                        <th class="sale-time">消费时间</th>
                    </tr>
                  </thead>
                  <tbody id="tbody">
   <% for(Sale s :user.getSales()){ %>
                    <tr>
                      <td> <%=s.getPlan().getMovie().getMovie_name()%> </td>
                       <td> <%=s.getSum() %> </td>
                      <td><%=s.getSale_time() %></td>
                    </tr>
                    
              <%} %>
                  </tbody>

      </table>
   </div>
  </div>


    <div class="row">

       <div class="col-lg-8 col-lg-offset-2">
 
        <h2>充值记录</h2>


        <table class="table table-striped sale-table">
                  <thead>
                    <tr>
                        <th class="charge-sum">充值金额</th>
                        <th class="charge-time">充值时间</th>
                    </tr>
                  </thead>
                  <tbody id="tbody">
<% for(Charge c :user.getCharges()){ %>
                    <tr>
                     <td> <%=c.getAmount() %></td>
                     <td> <%=c.getCharge_time() %></td>
                   
                    </tr>
                    
                    <%} %>
                  </tbody>

      </table>
      </div>
      
  </div>


</div>

   <%@ include file="footer.jsp" %>

<script src="/Movie/js/member_info.js"></script>


</body>

</html>
