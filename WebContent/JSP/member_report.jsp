<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <%@ include file="header.jsp"%>
 </head>
 
 
   <body>
   <%@ include file="member_navbar.jsp" %>
   
  <div class="container" style="margin-top:50px">
     <form>
    <div class="row">

      <div class="col-lg-offset-2 col-lg-8">
        <h3>意见反馈</h3>
        
        <textarea  class="form-control" rows="18">
        

        </textarea>
  
      </div>
      
    </div>
    <div class="row" style="margin-top:30px">
      <div  class="col-lg-offset-5 col-lg-5" >
         <button type="submit" class="btn btn-default" onclick="javascript:window.reload;">提交反馈</button>
      </div>
    </div>
      </form>



</div>

   <%@ include file="footer.jsp" %>
   
</body>

</html>
