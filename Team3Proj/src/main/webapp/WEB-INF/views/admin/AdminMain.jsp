<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- admin_main -->

<!-- 파이 차트 -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['비건',     11],
          ['락토',      2],
          ['오보',  2],
          ['페스코', 2],
        ]);

        var options = {
          title: ''
        };
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
        window.addEventListener('resize',drawChart,false);//사이즈 동적으로 변화
      }
    </script>

<!-- 검색어 트렌드 확인 -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
          ['2004/05',  165,      938,         522,             998,           450,      614.6],
          ['2005/06',  135,      1120,        599,             1268,          288,      682],
          ['2006/07',  157,      1167,        587,             807,           397,      623],
          ['2007/08',  139,      1110,        615,             968,           215,      609.4],
          ['2008/09',  136,      691,         629,             1026,          366,      569.6]
        ]);

        var options = {
          title : 'Monthly Coffee Production by Country',
          vAxis: {title: 'Cups'},
          hAxis: {title: 'Month'},
          seriesType: 'bars',
          series: {5: {type: 'line'}}
        };

        var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
        chart.draw(data, options);
        window.addEventListener('resize',drawChart,false);//사이즈 동적으로 변화
      }
    </script>




<nav class="navbar navbar-default navbar-fixed">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navigation-example-2">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Dashboard</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-left">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-dashboard"></i>
						<p class="hidden-lg hidden-md">Dashboard</p>
				</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-globe"></i> <b
						class="caret hidden-lg hidden-md"></b>
						<p class="hidden-lg hidden-md">
							5 Notifications <b class="caret"></b>
						</p>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">Notification 1</a></li>
						<li><a href="#">Notification 2</a></li>
						<li><a href="#">Notification 3</a></li>
						<li><a href="#">Notification 4</a></li>
						<li><a href="#">Another notification</a></li>
					</ul></li>
				<li><a href=""> <i class="fa fa-search"></i>
						<p class="hidden-lg hidden-md">Search</p>
				</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="">
						<p>Account</p>
				</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">
						<p>
							Dropdown <b class="caret"></b>
						</p>

				</a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul></li>
				<li><a href="#">
						<p>Log out</p>
				</a></li>
				<li class="separator hidden-lg"></li>
			</ul>
		</div>
	</div>
</nav>


<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
				<div class="card">

					<div class="header">
						<h4 class="title">회원 레벨별 분포</h4>
						<p class="category">차트가 그냥 이미지여서 google chart이용으로 동적으로 변경하기</p>
					</div>
					<div class="content">
						<!-- 구글 차트로 대신함 -->
						<div id="piechart"></div>

						<div class="footer">
							<!-- 
							<div class="legend">
								<i class="fa fa-circle text-info"></i> 비건 <i
									class="fa fa-circle text-danger"></i> 락토 <i
									class="fa fa-circle text-warning"></i> 오보 <i
									class="fa fa-circle text-success"></i> 페스코
							</div>
							 -->
							<hr>
							<div class="stats">
								<i class="fa fa-clock-o"></i> Campaign sent 2 days ago
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-8">
				<div class="card">
					<div class="header">
						<h4 class="title">방문자 & 게시글</h4>
						<p class="category">24 Hours performance</p>
					</div>
					<div class="content">
						<div id="chartHours" class="ct-chart"></div>
						<div class="footer">
							<div class="legend">
								<i class="fa fa-circle text-info"></i> 방문자 <i
									class="fa fa-circle text-danger"></i> 인스타 <i
									class="fa fa-circle text-warning"></i> 레시피
							</div>
							<hr>
							<div class="stats">
								<i class="fa fa-history"></i> Updated 3 minutes ago
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-6">
				<div class="card ">
					<div class="header">
						<h4 class="title">핵심 키워드별 검색어 통계</h4>
						<p class="category">철분, 칼슘, 엽산, 비타민 B12 등의 부족</p>
					</div>
					<div class="content">
					<!-- 키워드 검색 -->
						<div id="chart_div" ></div>
						<div class="footer">
							<!--  							
							<div class="legend">
								<i class="fa fa-circle text-info"></i> 채식 까페 <i
									class="fa fa-circle text-danger"></i> 채식 레시피
							</div>
							-->
							<hr>
							<div class="stats">
								<i class="fa fa-check"></i> Data information certified
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card ">
					<div class="header">
						<h4 class="title">Tasks</h4>
						<p class="category">Backend development</p>
					</div>
					<div class="content">
						<div class="table-full-width">
							<table class="table">
								<tbody>
									<tr>
										<td>
											<div class="checkbox">
												<input id="checkbox1" type="checkbox"> <label
													for="checkbox1"></label>
											</div>
										</td>
										<td>Sign contract for "What are conference organizers
											afraid of?"</td>
										<td class="td-actions text-right">
											<button type="button" rel="tooltip" title="Edit Task"
												class="btn btn-info btn-simple btn-xs">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" rel="tooltip" title="Remove"
												class="btn btn-danger btn-simple btn-xs">
												<i class="fa fa-times"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>
											<div class="checkbox">
												<input id="checkbox2" type="checkbox" checked> <label
													for="checkbox2"></label>
											</div>
										</td>
										<td>Lines From Great Russian Literature? Or E-mails From
											My Boss?</td>
										<td class="td-actions text-right">
											<button type="button" rel="tooltip" title="Edit Task"
												class="btn btn-info btn-simple btn-xs">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" rel="tooltip" title="Remove"
												class="btn btn-danger btn-simple btn-xs">
												<i class="fa fa-times"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>
											<div class="checkbox">
												<input id="checkbox3" type="checkbox"> <label
													for="checkbox3"></label>
											</div>
										</td>
										<td>Flooded: One year later, assessing what was lost and
											what was found when a ravaging rain swept through metro
											Detroit</td>
										<td class="td-actions text-right">
											<button type="button" rel="tooltip" title="Edit Task"
												class="btn btn-info btn-simple btn-xs">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" rel="tooltip" title="Remove"
												class="btn btn-danger btn-simple btn-xs">
												<i class="fa fa-times"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>
											<div class="checkbox">
												<input id="checkbox4" type="checkbox" checked> <label
													for="checkbox4"></label>
											</div>
										</td>
										<td>Create 4 Invisible User Experiences you Never Knew
											About</td>
										<td class="td-actions text-right">
											<button type="button" rel="tooltip" title="Edit Task"
												class="btn btn-info btn-simple btn-xs">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" rel="tooltip" title="Remove"
												class="btn btn-danger btn-simple btn-xs">
												<i class="fa fa-times"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>
											<div class="checkbox">
												<input id="checkbox5" type="checkbox"> <label
													for="checkbox5"></label>
											</div>
										</td>
										<td>Read "Following makes Medium better"</td>
										<td class="td-actions text-right">
											<button type="button" rel="tooltip" title="Edit Task"
												class="btn btn-info btn-simple btn-xs">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" rel="tooltip" title="Remove"
												class="btn btn-danger btn-simple btn-xs">
												<i class="fa fa-times"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>
											<div class="checkbox">
												<input id="checkbox6" type="checkbox" checked> <label
													for="checkbox6"></label>
											</div>
										</td>
										<td>Unfollow 5 enemies from twitter</td>
										<td class="td-actions text-right">
											<button type="button" rel="tooltip" title="Edit Task"
												class="btn btn-info btn-simple btn-xs">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" rel="tooltip" title="Remove"
												class="btn btn-danger btn-simple btn-xs">
												<i class="fa fa-times"></i>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="footer">
							<hr>
							<div class="stats">
								<i class="fa fa-history"></i> Updated 3 minutes ago
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



