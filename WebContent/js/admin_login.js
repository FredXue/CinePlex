function p_login(){
	var type ="";
	var box = document.getElementsByName("type");
           for(var i=0;i<box.length;i++){
                    if(box[i].checked){
                        type = box[i].value;
                        break;
                    }
                }
    var id = document.getElementById("id").value;
    var password = document.getElementById("password").value;
    
    if(!id || !password){
        $("#error").removeClass("hidden");
        document.getElementById("error").innerHTML="请将信息填写完整!";
        
    }else {
        $.ajax({
        	type:"post",
            url:"admin_login",
            data:{'type':type,
            	  'id':id,
                  'password':password},
            success:function(data){
                if(data=="admin") window.location.href="/Movie/admin";
                if(data=="waiter") window.location.href="/Movie/waiter";
                 if(data=="manager") window.location.href="/Movie/manager";
                if(data=="error"){
                	  $("#error").removeClass("hidden");
                      document.getElementById("error").innerHTML="用户名或密码错误！";
                }}});
    }
}