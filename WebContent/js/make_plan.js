
 
 
 function  hideAdd(){
	 $('#add').hide();
   $('#submit').hide();
 }

 function checkSubmit(){

    var td = document.getElementById('time-1');
    var date = document.getElementById('date-filter');
    if(date.value==""){
          alert("请将场次信息填写完整");
    return false;
    }
    if(td==null ){
    alert("请至少添加一个场次！");
    return false;
    }
    if(td.value==""){
    alert("请将场次信息填写完整！");
    return false;
    }

    alert("放映计划提交成功！");
    return true;

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
   
      var status = data.status;
    	//判断plans的状态   
    if(status==0) {
    	//未提交  可以编辑并提交
       $('#plans-state').html("尚未提交");
    }else if(status==1){
    	//未批准 重新修改并提交
    	 $('#plans-state').html("未批准，请重新编辑并提交");

    	
    }else if(status==2){
    	//已提交,等待批准，只能查看不能添加和提交
       $('#plans-state').html("已提交，等待批准。。");
    	hideAdd();
        for(var i=0; i<data.movie.length;i++){
            alert(data.movie[i]);
        }
    }else if(status==3){
    	//已批准
       $('#plans-state').html("已批准");
        hideAdd();
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


    










