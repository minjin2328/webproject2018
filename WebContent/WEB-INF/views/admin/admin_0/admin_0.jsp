<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- JSTL 설정을 위해서 jstl-1.2.jar 필요  --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Calendar"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>쌍용교육센터</title>
<meta name="description" content="쌍용교육센터 성적관리시스템 v6.0">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/images/logo/sist.jpg" />
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" id="main-stylesheet" data-version="1.1.0"
	href="${pageContext.request.contextPath}/resources/styles/shards-dashboards.1.1.0.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles/extras.1.1.0.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles/style.css">

<script async defer src="https://buttons.github.io/buttons.js"></script>


<!-- 아이콘 추가 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

</head>

<body onLoad="showCalendar(nowd,nowm,nowy)" class="h-100">

	<div class="container-fluid">
		<div class="row">
			<!-- Main Sidebar -->
			<aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0">
				<div class="main-navbar">
					<nav
						class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
						<a class="navbar-brand w-100 mr-0"
							href="${pageContext.request.contextPath}/views/admin/admin_0/admin_0.jsp"
							style="line-height: 25px">
							<div class="d-table m-auto"
								style="margin-left: 1px; margin-right: 1px;">
								<img id="main-logo" class="d-inline-block align-top mr-1"
									style="max-width: 100%;"
									src="${pageContext.request.contextPath}/resources/images/logo/sist_logo.png"
									alt="sist_logo.png">
							</div>
						</a> <a class="toggle-sidebar d-sm-inline d-md-none d-lg-none"> <i
							class="material-icons">&#xE5C4;</i>
						</a>
					</nav>
				</div>
				<form action="#"
					class="main-sidebar__search w-100 border-right d-sm-flex d-md-none d-lg-none">
					<div class="input-group input-group-seamless ml-3">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<i class="fas fa-search"></i>
							</div>
						</div>
						<input class="navbar-search form-control" type="text"
							placeholder="Search for something..." aria-label="Search">
					</div>

				</form>
				<div class="nav-wrapper">
					<ul class="nav flex-column">
						<li class="nav-item active" style="text-align: center;"><a
							class="nav-link"
							href="${pageContext.request.contextPath}/admin/admin_0"> <span><img
									class="rounded-circle mr-2"
									src="${pageContext.request.contextPath}/resources/images/avatars/avatar.png"></span>
								<br> admin
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/admin/admin_1_1"> <i
								class="material-icons">search</i> <span>관리자 정보 확인</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/admin/admin_2_1"> <i
								class="material-icons">vertical_split</i> <span>기초 정보 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/admin/admin_3_1"> <i
								class="fas fa-chalkboard-teacher" style='font-size: 13px'></i> <span>강사
									계정 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/admin/admin_4_1"> <i
								class="fas fa-clipboard-check" style='font-size: 15px'></i> <span>개설
									과정 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/admin/admin_5_1"> <i
								class="fas fa-clipboard-list" style='font-size: 15px'></i> <span>개설
									과목 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/admin/admin_6_1_1"> <i
								class="material-icons">person</i> <span>수강생 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/admin/admin_7_1_1">
								<i class="fas fa-book-reader" style='font-size: 13px'></i> <span>성적
									조회</span>
						</a></li>
					</ul>
				</div>
			</aside>
			<!-- End Main Sidebar -->
			<main
				class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
			<div class="main-navbar sticky-top bg-white">
				<!-- Main Navbar -->
				<nav
					class="navbar align-items-stretch navbar-light flex-md-nowrap p-0">
					<form action="#"
						class="main-navbar__search w-100 d-none d-md-flex d-lg-flex">
						<nav class="navbar navbar-expand bg-light navbar-light"
							style="width: 300%;">
							<ul class="navbar-nav">
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_0/admin_0.jsp"
									style="font-size: 12px; text-align: center;"><i
										class="fa fa-home"></i> 관리자</a></li>
							</ul>
						</nav>
					</form>
					<ul class="navbar-nav border-left flex-row ">
						<li class="nav-item border-right dropdown notifications"><a
							class="nav-link nav-link-icon text-center" href="#" role="button"
							id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
								<div class="nav-link-icon__wrapper">
									<i class="material-icons">&#xE7F4;</i> <span
										class="badge badge-pill badge-danger">2</span>
								</div>
						</a>
							<div class="dropdown-menu dropdown-menu-small"
								aria-labelledby="dropdownMenuLink">
								<a class="dropdown-item" href="#">
									<div class="notification__icon-wrapper">
										<div class="notification__icon">
											<i class="material-icons">&#xE6E1;</i>
										</div>
									</div>
									<div class="notification__content">
										<span class="notification__category">Analytics</span>

									</div>
								</a> <a class="dropdown-item" href="#">
									<div class="notification__icon-wrapper">
										<div class="notification__icon">
											<i class="material-icons">&#xE8D1;</i>
										</div>
									</div>
									<div class="notification__content">
										<span class="notification__category">Sales</span>

									</div>
								</a> <a class="dropdown-item notification__all text-center" href="#">
									View all Notifications </a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-nowrap px-3"
							data-toggle="dropdown" href="#" role="button"
							aria-haspopup="true" aria-expanded="false"> <img
								class="user-avatar rounded-circle mr-2"
								src="${pageContext.request.contextPath}/resources/images/avatars/avatar.png"
								alt="User Avatar"> <span class="d-none d-md-inline-block">admin</span>
						</a>
							<div class="dropdown-menu dropdown-menu-small">
								<a class="dropdown-item text-danger" href="#"> <i
									class="material-icons text-danger">&#xE879;</i> Logout
								</a>
							</div></li>
					</ul>
					<nav class="nav">
						<a href="#"
							class="nav-link nav-link-icon toggle-sidebar d-md-inline d-lg-none text-center border-left"
							data-toggle="collapse" data-target=".header-navbar"
							aria-expanded="false" aria-controls="header-navbar"> <i
							class="material-icons">&#xE5D2;</i>
						</a>
					</nav>
				</nav>
			</div>

			<!-- / .main-navbar -->
			<div class="main-content-container container-fluid px-4">
				<!-- Page Header -->
				<div class="page-header row no-gutters py-4">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">

						<div class="">
							<h3 class="page-title">강의실 별 진행률</h3>
							<span style="font-size: 13px">관리자 'admin'님 안녕하세요.</span>
						</div>
						<br>

					</div>
				</div>

				<!-- Users Stats -->
				<div class="row">

					<div class="col-lg-4 col-md-6 col-sm-12 mb-4">
						<div class="card card-small">
							<div class="card-body">
								<div class="card-header border-bottom" style="padding: 3%">
									<h5 class="m-0"
										style="font-weight: bold; padding-top: 7px; padding-bottom: 7px;">1반</h5>
								</div>
								<div class="stats ">

									<div>
										<i class="fas fa-clipboard-check"></i> <span
											style="font-size: 13px">클라우드 컴퓨팅 기반의 빅데이터 전문가(Java개발)</span>
									</div>
									<div>
										<i class="fas fa-clipboard-check"></i> 2018/04/25 ~ 2019/03/01
									</div>
								</div>
								<div class="progress">
									<div
										class="progress-bar progress-bar-striped progress-bar-animated active"
										role="progressbar" aria-valuenow="75" aria-valuemin="0"
										aria-valuemax="100" style="width: 75%">75%</div>
								</div>
								<div id="piechart"></div>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6    col-sm-12 mb-4">
						<div class="card card-small">
							<div class="card-body">
								<div class="card-header border-bottom" style="padding: 3%">
									<h5 class="m-0"
										style="font-weight: bold; padding-top: 7px; padding-bottom: 7px;">2반</h5>
								</div>
								<div class="stats">
									<div>
										<i class="fas fa-clipboard-check"></i> <span
											style="font-size: 13px">빅데이터시각화 웹어플리케이션개발자(Java개발)</span>
									</div>
									<div>
										<i class="fas fa-clipboard-check"></i> 2018/07/01 ~ 2019/04/15
									</div>
								</div>
								<div class="progress">
									<div
										class="progress-bar progress-bar-striped progress-bar-animated active"
										role="progressbar" aria-valuenow="65" aria-valuemin="0"
										aria-valuemax="100" style="width: 65%">65%</div>
								</div>
								<div id="piechart2"></div>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6    col-sm-12 mb-4">
						<div class="card card-small">
							<div class="card-body">
								<div class="card-header border-bottom" style="padding: 3%">
									<h5 class="m-0"
										style="font-weight: bold; padding-top: 7px; padding-bottom: 7px;">3반</h5>
								</div>
								<div class="stats">
									<div>
										<i class="fas fa-clipboard-check"></i> <span
											style="font-size: 13px">Java & Python 응용SW실무개발자 양성 과정</span>
									</div>
									<div>
										<i class="fas fa-clipboard-check"></i> 2018/06/25 ~ 2019/01/17
									</div>
								</div>
								<div class="progress">
									<div
										class="progress-bar progress-bar-striped progress-bar-animated active"
										role="progressbar" aria-valuenow="88" aria-valuemin="0"
										aria-valuemax="100" style="width: 88%">88%</div>
								</div>
								<div id="piechart3"></div>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6    col-sm-12 mb-4">
						<div class="card card-small">
							<div class="card-body">
								<div class="card-header border-bottom" style="padding: 3%">
									<h5 class="m-0"
										style="font-weight: bold; padding-top: 7px; padding-bottom: 7px;">4반</h5>
								</div>
								<div class="stats">
									<div>
										<i class="fas fa-clipboard-check"></i> <span
											style="font-size: 13px">클라우드 컴퓨팅 기반의 빅데이터 전문가(Java개발)</span>
									</div>
									<div>
										<i class="fas fa-clipboard-check"></i> 2018/06/25 ~ 2019/03/01
									</div>
								</div>
								<div class="progress">
									<div
										class="progress-bar progress-bar-striped progress-bar-animated active"
										role="progressbar" aria-valuenow="78" aria-valuemin="0"
										aria-valuemax="100" style="width: 78%">78%</div>
								</div>
								<div id="piechart4"></div>
							</div>
						</div>
					</div>


					<div class="col-lg-4 col-md-6    col-sm-12 mb-4">
						<div class="card card-small">
							<div class="card-body">
								<div class="card-header border-bottom" style="padding: 3%">
									<h5 class="m-0"
										style="font-weight: bold; padding-top: 7px; padding-bottom: 7px;">5반</h5>
								</div>
								<div class="stats">
									<div>
										<i class="fas fa-clipboard-check"></i> <span
											style="font-size: 13px">시큐어 코딩&웹 애플리케이션 응용SW개발자</span>
									</div>
									<div>
										<i class="fas fa-clipboard-check"></i> 2018/11/01 ~ 2019/06/01
									</div>
								</div>
								<div class="progress">
									<div
										class="progress-bar progress-bar-striped progress-bar-animated active"
										role="progressbar" aria-valuenow="29" aria-valuemin="0"
										aria-valuemax="100" style="width: 29%">29%</div>
								</div>
								<div id="piechart5"></div>
							</div>
						</div>
					</div>


					<div class="col-lg-4 col-md-6    col-sm-12 mb-4">
						<div class="card card-small">
							<div class="card-body">
								<div class="card-header border-bottom" style="padding: 3%">
									<h5 class="m-0"
										style="font-weight: bold; padding-top: 7px; padding-bottom: 7px;">6반</h5>
								</div>
								<div class="stats">
									<div>
										<i class="fas fa-clipboard-check"></i> <span
											style="font-size: 13px">프로페셔널한 퍼블리셔가 되기 위한 기초 및 심화과정</span>
									</div>
									<div>
										<i class="fas fa-clipboard-check"></i> 2018/10/25 ~ 2019/02/20
									</div>
								</div>
								<div class="progress">
									<div
										class="progress-bar progress-bar-striped progress-bar-animated active"
										role="progressbar" aria-valuenow="53" aria-valuemin="0"
										aria-valuemax="100" style="width: 53%">53%</div>
								</div>
								<div id="piechart6"></div>
							</div>
						</div>
					</div>



				</div>
			</div>
			</main>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>

	<!-- 원형 차트 -->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {
			'packages' : [ 'corechart' ]
		});
		google.charts.setOnLoadCallback(drawChart);

		function drawChart() {

			var options = {
				title : '수강률'
			};

			var data1 = google.visualization
					.arrayToDataTable([ [ 'Task', 'Hours per Day' ],
							[ '수강중', 18 ], [ '중도탈락', 2 ] ]);

			var data2 = google.visualization
					.arrayToDataTable([ [ 'Task', 'Hours per Day' ],
							[ '수강중', 19 ], [ '중도탈락', 4 ] ]);

			var data3 = google.visualization
					.arrayToDataTable([ [ 'Task', 'Hours per Day' ],
							[ '수강중', 25 ], [ '중도탈락', 1 ] ]);

			var data4 = google.visualization
					.arrayToDataTable([ [ 'Task', 'Hours per Day' ],
							[ '수강중', 20 ], [ '중도탈락', 2 ] ]);

			var data5 = google.visualization
					.arrayToDataTable([ [ 'Task', 'Hours per Day' ],
							[ '수강중', 30 ], [ '중도탈락', 3 ] ]);

			var data6 = google.visualization
					.arrayToDataTable([ [ 'Task', 'Hours per Day' ],
							[ '수강중', 27 ], [ '중도탈락', 5 ] ]);

			var chart1 = new google.visualization.PieChart(document
					.getElementById('piechart'));
			var chart2 = new google.visualization.PieChart(document
					.getElementById('piechart2'));
			var chart3 = new google.visualization.PieChart(document
					.getElementById('piechart3'));
			var chart4 = new google.visualization.PieChart(document
					.getElementById('piechart4'));
			var chart5 = new google.visualization.PieChart(document
					.getElementById('piechart5'));
			var chart6 = new google.visualization.PieChart(document
					.getElementById('piechart6'));

			chart1.draw(data1, options);
			chart2.draw(data2, options);
			chart3.draw(data3, options);
			chart4.draw(data4, options);
			chart5.draw(data5, options);
			chart6.draw(data6, options);

		}
	</script>
</body>
</html>