 function register(){
			var name = document.getElementById("r_name").value;
            var gender ="";
			var box = document.getElementsByName("r_gender");
                for(var i=0;i<box.length;i++){
                    if(box[i].checked){
                        gender = box[i].value;
                        break;
                    }
                }
            var age = document.getElementById("r_age").value;
            var bank = document.getElementById("r_bankcard").value;
            var pass_1 = document.getElementById("r_password").value;
            var pass_2 = document.getElementById("re_password").value;
    
            if(!name || !gender || !age || !bank || !pass_1 || !pass_2){
 			    							
 				$("#r_error").removeClass("hidden");
 				document.getElementById("r_error").innerHTML="请将信息填写完整!";

                return false;
            }else if (pass_2!=pass_1){
            	 	
            	$("#r_error").removeClass("hidden");
 				document.getElementById("r_error").innerHTML="两次密码输入不一致!";
                return false;
            }
            return true;
	 	}


function login(){
    var id = document.getElementById("id").value;
    var password = document.getElementById("password").value;
    
    if(!id || !password){
        $("#error").removeClass("hidden");
        document.getElementById("error").innerHTML="请将信息填写完整!";
        
    }else {
        $.ajax({
        	type:"post",
            url:"login",
            data:{'id':id,
                  'password':password},
            success:function(){window.location.href="/Movie";},
            error:function(){
                $("#error").removeClass("hidden");
                document.getElementById("error").innerHTML="用户名或密码错误！";
        }});
    }
  
}




	 