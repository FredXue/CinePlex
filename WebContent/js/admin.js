
// 发布电影
function release(){
    var name = document.getElementById("name").value;
    var director = document.getElementById("director").value;
    var actor = document.getElementById("actor").value;
    var intro = document.getElementById("intro").value;
    var language = document.getElementById("language").value;
    var duration = document.getElementById("duration").value;
    var post = document.getElementById("post").value;
    var on_date = document.getElementById("on_date").value;

    var off_date = document.getElementById("off_date").value;

    if(!name || !director || !actor || !intro || !language || !duration || !post || !on_date || !off_date){
    	alert("请将电影信息填写完整！");
    	return false;
    }

    return true;
}

// 批准放映计划
function accept(){

    var date = document.getElementById('date-filter').value;
    var hall = document.getElementById('hall-filter');
    var hallId = hall.selectedIndex+1;

    if(date.value==""){
          alert("请选择有效的场次");
    return;
    }
    
    $.post('/Movie/json/ajaxacceptPlans.action',{'hall':hallId,'plans_date':date},function(){
          alert("批准放映计划成功！");
          window.location.reload();
    });

 }

 function reject(){

    var date = document.getElementById('date-filter').value;
    var hall = document.getElementById('hall-filter');
    var hallId = hall.selectedIndex+1;

    if(date.value==""){
          alert("请选择有效的场次");
    return;
    }
    
    $.post('/Movie/json/ajaxrejectPlans.action',{'hall':hallId,'plans_date':date},function(){
          alert("已否决放映计划= = ");
          window.location.reload();
    });

 }

 function  displayButton(){
  $('#accept').removeClass("hidden");
   $('#reject').removeClass("hidden");
 }

  function  hideButton(){
  $('#accept').addClass("hidden");
   $('#reject').addClass("hidden");
   var tbody = document.getElementById('tbody');
   tbody.innerHTML="";
 }




$('#date-filter').bind('change',function(){
    var plan= document.getElementById('date-filter').value;
    var hall = document.getElementById('hall-filter');
    var hallId = hall.selectedIndex+1;
    
   
    $.ajax({
        type:'post',
        url:'/Movie/json/ajaxqueryPlans.action',
        data:{'hall':hallId,'plans_date':plan},
        dataType:'json',
        success:function(data){
      var t = document.getElementById('tbody');
      var status = data.status;
    	//判断plans的状态   
    if(status==0) {
    	//未提交  可以编辑并提交
       $('#plans-state').html("尚未提交");
        hideButton();
    }else if(status==1){
    	//未批准 重新修改并提交
    	 $('#plans-state').html("您已否定了该计划，等待服务员修改");   
    	  hideButton();	
    	 for(var i=0; i<data.movie.length;i++){
           t.innerHTML += "<td class='hall-movie' style='TEXT-ALIGN:left'>"+data.movie[i]+"</td> <td class='hall-time-start' style='TEXT-ALIGN:left'>"+data.starttime[i]+"</td>";
         }
    }else if(status==2){
    	//已提交,等待批准，只能查看不能添加和提交
       $('#plans-state').html("已提交，请审核该计划");   
       displayButton();    
         for(var i=0; i<data.movie.length;i++){
           t.innerHTML += "<tr><td class='hall-movie' style='TEXT-ALIGN:left'>"+data.movie[i]+"</td> <td class='hall-time-start'  style='TEXT-ALIGN:left'> "+data.starttime[i]+"</td></tr>";       
         }
    }else if(status==3){
    	//已批准
       $('#plans-state').html("您已批准该计划");
        hideButton();
                for(var i=0; i<data.movie.length;i++){
           t.innerHTML += "<td class='hall-movie' style='TEXT-ALIGN:left'>"+data.movie[i]+"</td> <td class='hall-time-start' style='TEXT-ALIGN:left'>"+data.starttime[i]+"</td>";
           }
    }else{
    	alert("数据错误");
    	return;
    }
    },
    error:function (XMLHttpRequest, textStatus, errorThrown) {

           alert(XMLHttpRequest.status);
           alert(XMLHttpRequest.readyState);
           alert(textStatus);
         }
});
 });

	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0,
    });


		

			window.onload = function(){

			$.ajax({
	        	type:"post",
	            url:"/Movie/json/ajaxloadData",
	            dataType:'json',
	            success:function(data){
                var pieData = [{
                          value: data.male,
                          color: "#46BFBD",
                          highlight: "#5AD3D1",
                          label:"男"

                      },
                      {
                        value:data.female,
                        color:"#ec9196",
                        highlight:"#e54950",
                        label:"女"
                      }
                      ];

               var barData = {
                  labels : data.movienames,
                  datasets : [
                    {
                      fillColor : "rgba(151,187,205,0.5)",
                      strokeColor : "rgba(151,187,205,1)",
                      data : data.salesum
                    }
                  ]
                };
               
               ctx= document.getElementById("gender-pie").getContext("2d");
				window.myPie = new Chart(ctx).Pie(pieData);
				

				ctx= document.getElementById("movie-bar").getContext("2d");
				window.myBar = new Chart(ctx).Bar(barData);

	            },
	            error:function (XMLHttpRequest, textStatus, errorThrown) {

	                alert(XMLHttpRequest.status);
	                alert(XMLHttpRequest.readyState);
	                alert(textStatus);
	           }});
			

				
			};

