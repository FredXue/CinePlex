<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

</head>


<body>
<%@ include file="admin_navbar.jsp" %>
<div class="container" style="margin-top:50px">

	<div class="row">
		<h1 style="margin-left:100px">雇员信息</h1>
		<div class="col-lg-offset-2 col-lg-7">
			<span>雇员信息表</span>
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>姓名</th>
						<th>性别</th>
						<th>薪资</th>
						<th>职位</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>王大</td>
						<td>男</td>
						<td>2000</td>
						<td>柜台服务</td>
					</tr>
						<tr>
						<td>王二</td>
						<td>女</td>
						<td>4000</td>
						<td>柜台服务</td>
					</tr>
						<tr>
						<td>王三</td>
						<td>女</td>
						<td>6000</td>
						<td>前台经理</td>
					</tr>
				</tbody>

			</table>
		</div>

	</div>
	<div class="row">
			<h1 style="margin-left:100px">雇员业绩</h1>
		<div class="col-lg-offset-3 col-lg-5">

			<canvas id="employee" width="300" height="300" style="width:300px; height:300px;"></canvas>
			<h3>Figure1：雇员本月销售业绩</h3>

		</div>

	</div>
</div>



<%@ include file="footer.jsp" %>

    
    <script src="/Movie/js/Chart.js" type="text/javascript"></script>
    <script >
	window.onload = function(){
 var employee_data = {
	labels : ["王大","王二","王三"],
	datasets : [
		{
			fillColor : "rgba(99,120,200,1)",
			strokeColor : "rgba(220,220,220,1)",
			data : [800,1000,1800]
		}
		
	]
}

var ctx2 = document.getElementById("employee").getContext("2d");
 new Chart(ctx2).Bar(employee_data);

}
    </script>  
</body>

</html>