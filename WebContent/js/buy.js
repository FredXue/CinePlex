var seatCount=0;
var seat=  new Array();



$(".seat-cell").bind("click",function(){
	
Array.prototype.remove = function(dx) 
{ 
    if(isNaN(dx)||dx>this.length){return false;} 
    this.splice(dx,1); 
} 

	if (!$(this).hasClass('seat-sold')) {
		if($(this).hasClass('seat-checked')){
             $(this).removeClass('seat-checked');
             seatCount--;
             id= $(this).attr('id');
             id2 = "#s-"+id;
             $(id2).remove();
             for(var i=0;i<seat.length;i++){
                 if(seat[i]==id) seat.remove(i);
             }
             $('.seat_count').html(seatCount);
             
		}else{
 			 $(this).addClass('seat-checked');
		     seatCount++;
		     name = $(this).data("name");
		     id= $(this).attr('id');
		     var s = document.getElementById('seat_selected');
		     s.innerHTML += "<span id='s-"+id+"''>"+name+"&nbsp;</span>";
		     seat.push(id);

              $('.seat_count').html(seatCount);
		}
        	
     }
});


function buyTicket(planID){
   if(seatCount==0){
   	alert("请至少选择一个座位！")
   	return false;
   }
   var seat_str = seat.join(";");
    $.ajax({
        type:'post',
        url:'/Movie/json/ajaxbuyTicket.action',
        data:{'planID':planID,'seatCount':seatCount,'seat':seat_str},
        dataType:'json',
        success:function(data){
          alert(data.result);
          window.location.href="/Movie";
      },
    error:function (XMLHttpRequest, textStatus, errorThrown) {

           alert(XMLHttpRequest.status);
           alert(XMLHttpRequest.readyState);
           alert(textStatus);
         }
});

}

