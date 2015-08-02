function showCharge(){
	$('#charge').toggleClass('hidden');

}


function charge(){
    var a = document.getElementById('amount').value;
    if(a<50){
    	alert("至少充值50元！ 一次性充值200方可激活会员！");
    	return false;
    }
   return true;
}