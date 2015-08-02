<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="movie.model.*" %>
<%@include file="header.jsp"%>
   <link rel="stylesheet" type="text/css" href="/Movie/css/buy.css">

    <script src="/Movie/js/buy.js"></script>
</head>


 <%
        Plan plan = (Plan)request.getAttribute("plan");
        Movie movie = plan.getMovie();
        String seats_sold = plan.getSold_seat();
        Integer seat_sold_num = seats_sold.split(";").length-1;
                
    %>
<body onload="loadSeat()">
<%@include file="waiter_navbar.jsp"%>

<div class="container">

   

  <div class="buy-wrapper">
    
      <div class="seat-step">
        <ul>
            <li class="down"><s></s>1.选择影片，场次</li>
            <li class="current">2.选座，支付</li>
            <li class="future">3.支付成功，影院取票观影</li>
        </ul>
      </div>
    <div class="center-wrap seat-wrap">
      <div class="seat-left ">
        <div class="clearfix">
            <div class="J_column">
              <ul style="padding:0px;">
                <label style="position: relative;top: 50px;">1</label>
                <label style="position: relative;top: 50px;">2</label>
                <label style="position: relative;top: 50px;">3</label>
                <label style="position: relative;top: 110px;">4</label>
                <label style="position: relative;top: 110px;">5</label>
                <label style="position: relative;top: 110px;">6</label>
                <label style="position: relative;top: 110px;">7</label>
                <label style="position: relative;top: 110px;">8</label>
                <label style="position: relative;top: 110px;">9</label>
                <label style="position: relative;top: 110px;">10</label>
              </ul>
            </div>
            <!-- 座位表-->
            <div class="seatContainer" style="">
                <div class="seatTitle" style="margin-left: 30px;">
                    <h2>
                     CinePlex影院 1号厅 银幕
                    </h2>
                    <s></s>
                </div>
                <div class="seatChoose J_Boundry">
                    <div class="seat_zuo J_seat_zuo">
                      <table style="width:630px">
                        <tbody>
                          <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
 <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排1座" id="00" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排2座" id="01" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排3座" id="02" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排4座" id="03" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排5座" id="04" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排6座" id="05" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排7座" id="06" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排8座" id="07" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排9座" id="08" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="1排10座" id="09" data-flag="0">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                            <tr>
                               <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>

                            <td style="" class="seat-cell " data-name="2排1座" id="10" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="2排2座" id="11" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="2排3座" id="12" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="2排4座" id="13" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="2排5座" id="14" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="2排6座" id="15" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="2排7座" id="16" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="2排8座" id="17" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="2排9座" id="18" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="2排10座" id="19" data-flag="0">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
 <tr>
                            <td style="" class=""  data-flag="0">&nbsp;</td>
                            <td style="" class=" " data-flag="0">&nbsp;</td>
                            <td style="" class=""  data-flag="0">&nbsp;</td>

                            <td style="" class="seat-cell " data-name="3排1座" id="20" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="3排2座" id="21" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="3排3座" id="22" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="3排4座" id="23" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="3排5座" id="24" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="3排6座" id="25" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="3排7座" id="26" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="3排8座" id="27" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="3排9座" id="28" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="3排10座" id="29" data-flag="0">&nbsp;</td>
                              <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                           <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                            <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>

                            <td style="" class="seat-cell " data-name="4排1座" id="30" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="4排2座" id="31" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="4排3座" id="32" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="4排4座" id="33" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="4排5座" id="34" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="4排6座" id="35" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="4排7座" id="36" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="4排8座" id="37" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="4排9座" id="38" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="4排10座" id="39" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                           <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排1座" id="40" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排2座" id="41" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排3座" id="42" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排4座" id="43" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排5座" id="44" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排6座" id="45" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排7座" id="46" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排8座" id="47" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排9座" id="48" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="5排10座" id="49" data-flag="0">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                           <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="6排1座" id="50" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="6排2座" id="51" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="6排3座" id="52" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="6排4座" id="53" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="6排5座" id="54" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="6排6座" id="55" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="6排7座" id="56" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="6排8座" id="57" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="6排9座" id="58" data-flag="0">&nbsp;</td>
                             <td style="" class="seat-cell " data-name="6排10座" id="59" data-flag="0">&nbsp;</td>
                            
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                            <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>

                            <td style="" class="seat-cell " data-name="7排1座" id="60" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="7排2座" id="61" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="7排3座" id="62" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="7排4座" id="63" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="7排5座" id="64" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="7排6座" id="65" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="7排7座" id="66" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="7排8座" id="67" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="7排9座" id="68" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="7排10座" id="69" data-flag="0">&nbsp;</td>
                                <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                           <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>

                            <td style="" class="seat-cell " data-name="8排1座" id="70" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="8排2座" id="71" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="8排3座" id="72" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="8排4座" id="73" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="8排5座" id="74" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="8排6座" id="75" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="8排7座" id="76" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="8排8座" id="77" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="8排9座" id="78" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="8排10座" id="79" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                           <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="9排1座" id="80" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="9排2座" id="81" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="9排3座" id="82" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="9排4座" id="83" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="9排5座" id="84" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="9排6座" id="85" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="9排7座" id="86" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="9排8座" id="87" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="9排9座" id="88" data-flag="0">&nbsp;</td>
                             <td style="" class="seat-cell " data-name="9排10座" id="89" data-flag="0">&nbsp;</td>
                            
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                           <tr>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>

                            <td style="" class="seat-cell " data-name="10排1座" id="90" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="10排2座" id="91" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="10排3座" id="92" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="10排4座" id="93" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="10排5座" id="94" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="10排6座" id="95" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="10排7座" id="96" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="10排8座" id="97" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="10排9座" id="98" data-flag="0">&nbsp;</td>
                            <td style="" class="seat-cell " data-name="10排10座" id="99" data-flag="0">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                             <td style="" class="seat-block">&nbsp;</td>
                          </tr>
                          </tbody>
                          </table>
                          </div>
                </div>
            </div>
        </div>
        <div class="seatChooseInfor">
            <ul class="clearfix">
                <li><span class="hasSeat"></span>可选座位</li>
                <li><span class="sellSeat"></span>已选座位</li>
                <li><span class="checkSeat"></span>不可选座位</li>
            </ul>
             <p> 本影厅共有座位150个，当前已售<span class="J_sell"><%=seat_sold_num%></span>个</p>
              </div>
        

      </div>
      <div class="seat-right">
        <div class="seatMovie clearfix">
            <div class="picBox">
                <a href="">
          <img src="/Movie/img/post/<%=plan.getMovie().getFilename()%>"></a>
            </div>
            <ul>
                <li><h3 style="margin-top:0px;"><%=plan.getMovie().getMovie_name()%></h3></li>
                <li>语言： <%=plan.getMovie().getLanguage() %> </li>
                <li>版本： 2D </li>
                <li>片长：<%=plan.getMovie().getDuration() %> </li>
                <li>类型：普通  </li> 
           </ul>
        </div>
        <div class="seatContent">
            <ul style="padding-left:5px;">
                <li>
                    <label>影院：</label>
                    <strong>Cineplex</strong>
                </li>
                <li>
                    <label>影厅：</label>
                   <strong><%=plan.getPlans().getHall()%>号厅</strong>
                </li>
                <li>
                    <label>场次：</label>
                    <a href="/Movie" class="changPlace J_show">更换场次</a>
                    <em><%=plan.getPlans().getPlans_date()%>&nbsp;<%=plan.getStart_time()%></em>
                </li>
                <li class="line">
                    <label>座位:</label>
                    <div id="seat_selected"></div>
                    <p class="hidden" id="seat_text">已选择<em class="seat_count">0</em>个座位</p>
                </li>
        <li>
                    <label>价格：</label>
                    <span class="J_originPrice originPrice" data-originprice="3600">¥<%=plan.getPrice()%>  x<i class="seat_count">0</i></span>
                    <span class="offer J_originOffer"></span>
                </li> 
                
                        <li class="total">
                    <label>总计:</label>
                    <div style="display:inline;padding-left:8px;">¥<span  data-price="3600"><%=plan.getPrice()%> x <i class="seat_count">0</i></span>
                    </div>
                </li>
            </ul>
        </div>
        <div class="seatForm">
            <ul style="padding-left:5px;">
                <li>
                    <label>会员卡号：</label>
                    <input type="text" class="" value="" size="15" id="member_id">
                </li>
                <li>
                <label>是否使用现金</label>
                    <input type="checkbox"  id="isCash">
                </li>
            </ul>
             
            <ul style="padding-left:5px;">
                <li>
              <a  class="btn" onclick="sellTicket(<%=plan.getPlan_id()%>)">确认信息，下单并支付</a>
                </li>
            </ul>
        </div>
        
      </div>
      </div>


  </div>
  <!-- end of container -->
</div>


<div class="clearfix"></div>

<%@ include file="footer.jsp" %>


   <script src="/Movie/js/buy.js"></script>
   <script type="text/javascript">

   function loadSeat(){
     s="<%=seats_sold%>";
     var seat = s.split(";");
     var id;
     for(var i=0;i<seat.length;i++){
    	 id = "#"+seat[i];
    	 $(id).addClass("seat-sold");
     }
     

  }
   </script>
</body>
</html>