<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>


<body>
<%@ include file="admin_navbar.jsp" %>
<div class="container" style="margin-top:50px">

	<div class="row">
			<h1 style="margin-left:100px">影院财务状况</h1>
		<div class="col-lg-offset-2 col-lg-7">
			<span>本月收支表</span>
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>日期</th>
						<th>内容摘要</th>
						<th>收入/支出（元）</th>
						<th>结余</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2015-6-24</td>
						<td>水电费支出</td>
						<td>-2000</td>
						<td></td>
					</tr>
					<tr>
						<td>2015-6-24</td>
						<td>食品收入</td>
						<td>800</td>
						<td></td>
					</tr>
					<tr>
						<td>2015-6-24</td>
						<td>税务</td>
						<td>-400</td>
						<td></td>
					</tr>
				</tbody>

			</table>
		</div>

	</div>

	<div class="row">
			<h1 style="margin-left:100px">详细收支</h1>
		<div class="col-lg-offset-3 col-lg-5">

			<canvas id="movie-income" width="300" height="300" style="width:600px; height:300px;"></canvas>
			<h3>Figure1：各影片收入</h3>

		</div>

	</div>
</div>

<%@ include file="footer.jsp" %>

<script src="/Movie/js/Chart.js" type="text/javascript"></script>
<script src="/Movie/js/admin_plus.js"></script>

</body>

</html>