//Get the context of the canvas element we want to select

	window.onload = function(){
 var movie_data = {
	labels : ["木星上行","教父","哈哈","杀破狼2","泰坦尼克号"],
	datasets : [
		{
			fillColor : "rgba(99,120,200,1)",
			strokeColor : "rgba(220,220,220,1)",
			data : [800,1000,200,1000,900]
		}
		
	]
}

var ctx = document.getElementById("movie-income").getContext("2d");
 new Chart(ctx).Bar(movie_data);


}