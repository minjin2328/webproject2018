<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%-- JSTL 설정을 위해서 jstl-1.2.jar 필요  --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" id="main-stylesheet" data-version="1.1.0"
   href="${pageContext.request.contextPath}/resources/styles/shards-dashboards.1.1.0.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/styles/extras.1.1.0.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/styles/style.css">
<!-- util.js 라이브러리 연결 -->
<script src="${pageContext.request.contextPath}/resources/scripts/util.js"></script>
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
   $(document).ready(function() {
	   
      var progressbar = $('#progress_bar');
      max = progressbar.attr('max');
      time = (1000 / max) * 5;
      value = progressbar.val();

      var loading = function() {
         value += 1;
         addValue = progressbar.val(value);

         $('.progress-value').html(value + '%');
         var $ppc = $('.progress-pie-chart'), deg = 360 * value / 100;
         if (value > 50) {
            $ppc.addClass('gt-50');
         }

         $('.ppc-progress-fill').css('transform', 'rotate(' + deg + 'deg)');
         $('.ppc-percents span').html(value + '%');

         if (value == max) {
            clearInterval(animate);
         }
      };

      var animate = setInterval(function() {
         loading();
      }, time);

 	 var end_opencourse = $("tbody").eq(0).find("td:eq(4)").text();
 	 // util.js
 	 $("#date").text(dDay(end_opencourse));
 	 

	});
</script>
<style type="text/css">

/* 링크에서 밑줄 없애기 */
a.no-uline {
   text-decoration: none
}

/* 마우스 지나갈 때만 삭제 + 강제로 없애기 */
a.noul:hover {
   text-decoration: none !important
}

/* Pie Chart */
.progress-pie-chart {
   width: 200px;
   height: 200px;
   border-radius: 50%;
   background-color: #E5E5E5;
   position: relative;
}

.progress-pie-chart.gt-50 {
   background-color: #81CE97;
}

.ppc-progress {
   content: "";
   position: absolute;
   border-radius: 50%;
   left: calc(50% - 100px);
   top: calc(50% - 100px);
   width: 200px;
   height: 200px;
   clip: rect(0, 200px, 200px, 100px);
}

.ppc-progress .ppc-progress-fill {
   content: "";
   position: absolute;
   border-radius: 50%;
   left: calc(50% - 100px);
   top: calc(50% - 100px);
   width: 200px;
   height: 200px;
   clip: rect(0, 100px, 200px, 0);
   background: #81CE97;
   transform: rotate(60deg);
}

.gt-50 .ppc-progress {
   clip: rect(0, 100px, 200px, 0);
}

.gt-50 .ppc-progress .ppc-progress-fill {
   clip: rect(0, 200px, 200px, 100px);
   background: #E5E5E5;
}

.ppc-percents {
   content: "";
   position: absolute;
   border-radius: 50%;
   left: calc(50% - 173.91304px/ 2);
   top: calc(50% - 173.91304px/ 2);
   width: 173.91304px;
   height: 173.91304px;
   background: #fff;
   text-align: center;
   display: table;
}

.ppc-percents span {
   display: block;
   font-size: 2.6em;
   font-weight: bold;
   color: #81CE97;
}

.pcc-percents-wrapper {
   display: table-cell;
   vertical-align: middle;
}

.progress-pie-chart {
   margin: 50px auto 0;
}
</style>

</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<!-- Main Sidebar -->
			<aside class="main-sidebar col-12 col-lg-1 col-lg-2 px-0">
				<div class="main-navbar">
					<nav
						class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
						<a class="navbar-brand w-100 mr-0"
							href="${pageContext.request.contextPath}/views/teacher/teacher_0/teacher_0.jsp"
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
						<li class="nav-item" style="text-align: center;"><a
							class="nav-link active"
							href="${pageContext.request.contextPath}/teacher/teacher_0">
								<span><img class="rounded-circle mr-2"
									src="${pageContext.request.contextPath}/resources/images/avatars/0.jpg"></span>
								<br>${sessionScope.teacher.teacher_name}
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/teacher/teacher_1">
								<i class="material-icons">edit</i> <span>개인 정보 확인</span>
						</a></li>
						<li class="nav-item"><a class="nav-link "
							href="${pageContext.request.contextPath}/teacher/teacher_2_1">
								<i class="material-icons">vertical_split</i> <span>강의 스케줄
									조회</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/teacher/teacher_3_1">
								<i class="material-icons">note_add</i> <span>시험 및 배점 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/teacher/teacher_4_1">
								<i class="material-icons">view_module</i> <span>성적 관리</span>
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
									href="${pageContext.request.contextPath}/teacher/teacher_0"
									style="font-size: 12px; text-align: center;"><i
										class="fa fa-home"></i> 강사</a></li>
							</ul>
						</nav>
					</form>
					<ul class="navbar-nav border-left flex-row ">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-nowrap px-3"
							data-toggle="dropdown" href="#" role="button"
							aria-haspopup="true" aria-expanded="false"> <img
								class="user-avatar rounded-circle mr-2"
								src="${pageContext.request.contextPath}/resources/images/avatars/0.jpg"
								alt="User Avatar"> <span class="d-none d-md-inline-block">${sessionScope.teacher.teacher_name}</span>
						</a>
							<div class="dropdown-menu dropdown-menu-small">
								<a class="dropdown-item text-danger"
									href="${pageContext.request.contextPath}/teacher/logout"> <i
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
						<span class="text-uppercase page-subtitle">성적관리 시스템</span>
						<h3 class="page-title">Teacher</h3>
					</div>
				</div>
				<div class="row mb-4">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4>
									<strong>과정 진행율</strong>
								</h4>
								<p>
								<div class="table-responsive">
									<table class="table"
										style="text-align: center; font-size: 12px">
										<thead>
											<tr class="bg-light">
												<th class="center" style="width: 25%">과정아이디</th>
												<th class="center" style="width: 25%">과정명</th>
												<th class="center" style="width: 25%">과목명</th>
												<th class="center" style="width: 25%">수강기간</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<c:forEach var="l" items="${list}">
													<td>${l.openCourse_id}</td>
													<td>${l.course_name}</td>
													<td>${l.subject_name}</td>
													<td>${l.period}</td>
													<td style="display: none">${l.end_openCourse}</td>
												</c:forEach>
											</tr>

										</tbody>
										<thead>
											<tr style="text-align: center;" class="bg-light">
												<th colspan="2">과정 진행 현황</th>
												<th colspan="2">수강률</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="2">
													<div class="bar_container mb-5">
														<div id="main_container">
															<div id="pbar" class="progress-pie-chart"
																data-percent="0">
																<div class="ppc-progress">
																	<div class="ppc-progress-fill"></div>
																</div>
																<div class="ppc-percents">
																	<div class="pcc-percents-wrapper">
																		<span>%</span>
																	</div>
																</div>
															</div>
															<progress style="display: none" id="progress_bar"
																value="0" max="${course_date}"></progress>
															<div style="text-align: center; padding-top: 10px">
																<h6>
																	<span id="date"></span>
																</h6>
															</div>
														</div>
													</div>
												</td>
												<td colspan="2">
													<div id="piechart">
														<c:forEach var="c_s" items="${completion_status}">
															<input type="hidden" id="completion_status1"
																name="completion_status1" value="${c_s.completion_status1}">
															<input type="hidden" id="completion_status2"
																name="completion_status2" value="${c_s.completion_status2}">
														</c:forEach>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
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
	<script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
	<!-- 원형 차트 -->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
     
      function drawChart() {

    	var completion_status1 = $("#piechart").find("input:eq(0)").val();
    	var completion_status2 = $("#piechart").find("input:eq(1)").val();
    	console.log(completion_status1);
    	console.log(completion_status2);
    	  
        var options = {
          title: ' '
        };
        
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['수강중', completion_status1],
        ]);
        
        var chart1 = new google.visualization.PieChart(document.getElementById('piechart'));
         
        chart1.draw(data, options);
      }
 
    </script>
</body>
</html>