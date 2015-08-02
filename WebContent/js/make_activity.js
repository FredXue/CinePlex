function checkQuestion(){
	var movieIndex;
	var box = document.getElementsByName("movie");
           for(var i=0;i<box.length;i++){
                    if(box[i].checked){
                        movieIndex = box[i].value;
                        break;
                    }
                }
    var question = document.getElementById("question").value;
    var choicea = document.getElementById("choice_a").value;
    var choiceb = document.getElementById("choice_b").value;
    var choicec = document.getElementById("choice_c").value;

	if(!movieIndex || !question || !choicec || !choiceb || !choicea){
        alert("请将问题信息填写完整！");
        return false;
	}

	return true;

}