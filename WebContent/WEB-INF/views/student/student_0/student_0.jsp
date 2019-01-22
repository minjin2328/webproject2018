<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	$(document).ready(function() {
		$(".btnpw").on("click", function() {

		});

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
<script>
document.write('<st'+'yle>');
document.write('td {font-size:12px; font-family:굴림; text-decoration:none; }');
document.write('A:link,A:active,A:visited{text-decoration:none;font-size:12PX;color:#333333;}');
document.write('A:hover {text-decoration:none; color:ff9900}');
document.write('font { font-size: 9pt; }');
document.write('.cnj_input {position:relative;}');
document.write('.cnj_input2 {border-width:1; border-color:rgb(204,204,204); border-style:solid;}');
document.write('.cnj_input3 { border-width:1; border-style:solid; border-color:#000000; color:#0084D4; background-color:white;text-align:right;}');
document.write('.cnj_input4 { scrollbar-face-color: #FFCC33;scrollbar-shadow-color: #ffffff;scrollbar-highlight-color: #F3f3f3;scrollbar-3dlight-color: #ffffff;scrollbar-darkshadow-color: #F3f3f3;scrollbar-track-color: #ffffff;scrollbar-arrow-color: #f9f9f9; }');
document.write('</st'+'yle>');

var monthName=new Array("1월","2월","3월","4월","5월","6월","7월",
"8월","9월","10월","11월","12월")
/*
var monthName=new Array("January","February","March","April","May","June","July",
"August","September","October","November","December")
*/
var monthDays=new Array(31,28,31,30,31,30,31,31,30,31,30,31)
var now=new Date;
var nowd=now.getDate();
var nowm=now.getMonth();
var nowy=now.getFullYear();
function showCalendar(day,month,year) {
if ((year%4==0||year%100==0)&&(year%400==0)) monthDays[1]=29; else monthDays[1]=28 //leap year test
var firstDay=new Date(year,month,1).getDay()
var cnj_str="<table border=0 cellpadding=10 cellspacing=1 align=center bgcolor=#CCCCCC>"
cnj_str+="<tr bgcolor=white><td colspan=7>"
cnj_str+="<table border=0 cellpadding=0 cellspacing=0 align=center width=100%>"
cnj_str+="<td><a href='javascript:;' onClick='nowm--; if (nowm<0) { nowy--; nowm=11; } showCalendar(nowd,nowm,nowy)' title='이전 월'> <<</a></td>"
cnj_str+="<td align=center>"+nowy+"년 "+monthName[month].toUpperCase()+" </td>"
cnj_str+="<td align=right><a href='javascript:;' onClick='nowm++; if (nowm>11) { nowy++; nowm=0; } showCalendar(nowd,nowm,nowy)' title='다음 월'> >></a></td>"
cnj_str+="</tr></table>"
cnj_str+="</td></tr>"
cnj_str+="<tr align=center bgcolor='#ccddff'>"
cnj_str+="<th><font color='#ff6666'>일</font></th>"
cnj_str+="<th><font color='black'>월</font></th>"
cnj_str+="<th><font color='black'>화</font></th>"
cnj_str+="<th><font color='black'>수</font></th>"
cnj_str+="<th><font color='black'>목</font></th>"
cnj_str+="<th><font color='black'>금</font></th>"
cnj_str+="<th><font color='#4d88ff'>토</font></th>" 
cnj_str+="</tr>"

var dayCount=1

cnj_str+="<tr bgcolor=white>"

for (var i=0;i<firstDay;i++) cnj_str+="<td> " //공백
for (var i=0;i<monthDays[month];i++) {
if(dayCount==nowd) {
cnj_str+="<td align=center bgcolor='#ccddff'><b>" // 오늘 날짜일때 배경색 지정,글자 진하게
} else {
cnj_str+="<td align=center>" // 오늘 날짜가 아닐때 배경색 지정
}

//cnj_str+="<a href=http://www.홈페이지.com/link"+dayCount+".html target=_blank>" // 링크설정
cnj_str+=dayCount++ // 날짜
cnj_str+="</a>"

if(dayCount==nowd) {
cnj_str+="</b>" // 오늘 날짜일때 글자 진하게
} else {
cnj_str+="" // 오늘 날짜가 글자 진하게 안함
}

if ((i+firstDay+1)%7==0&&(dayCount<monthDays[month]+1)) cnj_str+="<tr bgcolor=white>"
}
var totCells=firstDay+monthDays[month]
for (var i=0;i<(totCells>28?(totCells>35?42:35):28)-totCells;i++) cnj_str+="<td> "
cnj_str+="</table><BR>"
calendar.innerHTML=cnj_str
}
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
<body onLoad="showCalendar(nowd,nowm,nowy)" class="h-100">


	<div class="container-fluid">
		<div class="row">
			<!-- Main Sidebar -->
			<aside class="main-sidebar col-12 col-lg-1 col-lg-2 px-0">
				<div class="main-navbar">
					<nav
						class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
						<a class="navbar-brand w-100 mr-0"
							href="${pageContext.request.contextPath}/views/student/student_0/student_0.jsp"
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
							href="${pageContext.request.contextPath}/views/student/student_0/student_0.jsp">
								<span><img class="rounded-circle mr-2"
									src="${pageContext.request.contextPath}/resources/images/avatars/3.jpg"></span>
								<br> 김민진
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/views/student/student_1/student_1.jsp">
								<i class="material-icons">edit</i> <span>개인 정보 확인</span>
						</a></li>
						<li class="nav-item"><a class="nav-link "
							href="${pageContext.request.contextPath}/views/student/student_2/student_2_1.jsp">
								<i class="material-icons">vertical_split</i> <span>성적 조회</span>
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
									href="${pageContext.request.contextPath}/views/student/student_0/student_0.jsp"
									style="font-size: 12px; text-align: center;"><i
										class="fa fa-home"></i> 수강생</a></li>

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
								src="${pageContext.request.contextPath}/resources/images/avatars/3.jpg"
								alt="User Avatar"> <span class="d-none d-md-inline-block">김민진</span>
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

			<div class="main-content-container container-fluid px-4">
				<!-- Page Header -->
				<div class="page-header row no-gutters py-4">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">
						<span class="text-uppercase page-subtitle">성적관리 시스템</span>
						<h3 class="page-title">Student</h3>
					</div>
				</div>

				<div class="row mb-4">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">

								<h4>
									<strong>과정 진행률</strong>
								</h4>
								<p>
								<div class="table-responsive">
									<table class="table"
										style="text-align: center; font-size: 12px">
										<thead>
											<tr class="bg-light">
												<th class="center" style="width: 25%">개설과정<br> 아이디
												</th>
												<th class="center" style="width: 25%">과정명</th>
												<th class="center" style="width: 25%">과목명</th>
												<th class="center" style="width: 25%">개설과정 기간</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>OPC01</td>
												<td>클라우드 컴퓨팅 기반의<br> 빅데이터전문가(Java개발)
												</td>
												<td>Java, Oracle, Python</td>
												<td>2018-06-25~ 2019-01-17</td>
											</tr>
										</tbody>
										<thead>
											<tr style="text-align: center;" class="bg-light">
												<th colspan="2">진행 현황</th>
												<th colspan="2">월간 달력</th>
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
																value="0" max="60"></progress>
															<div style="text-align: center; padding-top: 10px">
																<h6>D-100</h6>
															</div>
														</div>
													</div>
												</td>
												<td colspan="2">
													<div class="card-body py-0 h-100">
														<span id="calendar" class="cnj_input"></span>
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

</body>
</html>