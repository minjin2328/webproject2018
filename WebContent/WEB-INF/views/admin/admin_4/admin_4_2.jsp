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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" id="main-stylesheet" data-version="1.1.0"
	href="${pageContext.request.contextPath}/resources/styles/shards-dashboards.1.1.0.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles/extras.1.1.0.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles/style.css">



<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- 아이콘 추가 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
</head>
<body class="h-100">


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
						<li class="nav-item" style="text-align: center;"><a
							class="nav-link"
							href="${pageContext.request.contextPath}/views/admin/admin_0/admin_0.jsp">
								<span><img class="rounded-circle mr-2"
									src="${pageContext.request.contextPath}/resources/images/avatars/avatar.png"></span>
								<br> admin
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/views/admin/admin_1/admin_1.jsp">
								<i class="material-icons">search</i> <span>관리자 정보 확인</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub1/admin_2_1_1.jsp">
								<i class="material-icons">vertical_split</i> <span>기초 정보
									관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link "
							href="${pageContext.request.contextPath}/views/admin/admin_3/admin_3_1.jsp">
								<i class="fas fa-chalkboard-teacher" style='font-size: 13px'></i>
								<span>강사 계정 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="${pageContext.request.contextPath}/views/admin/admin_4/admin_4_1.jsp">
								<i class="fas fa-clipboard-check" style='font-size: 15px'></i> <span>개설
									과정 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link "
							href="${pageContext.request.contextPath}/views/admin/admin_5/admin_5_1.jsp">
								<i class="fas fa-clipboard-list" style='font-size: 15px'></i> <span>개설
									과목 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link "
							href="${pageContext.request.contextPath}/views/admin/admin_6/admin_sub1/admin_6_1_1.jsp">
								<i class="material-icons">person</i> <span>수강생 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/views/admin/admin_7/admin_sub1/admin_7_1_1.jsp">
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
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_0/admin_0.jsp"
									style="font-size: 12px; text-align: center;"><i
										class="fa fa-home"></i> 관리자</a></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 12px; text-align: center;"><i
										class="fas fa-angle-right"></i></a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_4/admin_4_1.jsp"
									style="font-size: 12px; text-align: center;">개설과정관리</a></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 12px; text-align: center;"><i
										class="fas fa-angle-right"></i></a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_4/admin_4_2.jsp"
									style="font-size: 12px; text-align: center;">개설과정별 과목조회</a></li>
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
										<p>
											Your website’s active users count increased by <span
												class="text-success text-semibold">28%</span> in the last
											week. Great job!
										</p>
									</div>
								</a> <a class="dropdown-item" href="#">
									<div class="notification__icon-wrapper">
										<div class="notification__icon">
											<i class="material-icons">&#xE8D1;</i>
										</div>
									</div>
									<div class="notification__content">
										<span class="notification__category">Sales</span>
										<p>
											Last week your store’s sales count decreased by <span
												class="text-danger text-semibold">5.52%</span>. It could
											have been worse!
										</p>
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
							<h3 class="page-title">개설 과정 관리</h3>
							<span style="font-size: 13px">개설 과정을 조회, 추가, 삭제를 할 수 있습니다.</span>
						</div>
					</div>
				</div>

				<div id="fixed_table">

					<!-- Users Stats -->
					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">

									<h4>
										<strong>개설과정</strong>
									</h4>
									<p>
									<div class="table-responsive">
										<table class="table"
											style="text-align: center; font-size: 12px">
											<thead class="bg-light">
												<tr>
													<th scope="col">개설과정<br>아이디
													</th>
													<th scope="col">과정명</th>
													<th scope="col">과정<br>시작일
													</th>
													<th scope="col">과정<br>종료일
													</th>
													<th scope="col">강의실</th>
													<th scope="col">진행<br>상태
													</th>
													<th scope="col">등록<br>인원
													</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>OPC01</td>
													<td>클라우드 컴퓨팅 기반의 <br> 빅데이터전문가(Java개발)
													</td>
													<td>2017-01-05</td>
													<td>2017-07-20</td>
													<td>1반</td>
													<td>과정완료</td>
													<td>20</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<!-- Users Stats -->
					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4>
										<strong>개설과목목록</strong>
									</h4>
									<p>
									<div class="table-responsive">
										<table class="table"
											style="text-align: center; font-size: 12px">
											<thead class="bg-light">
												<tr>
													<th scope="col">개설과목번호</th>
													<th scope="col">과목명</th>
													<th scope="col">과목 시작일</th>
													<th scope="col">과목 종료일</th>
													<th scope="col">교재명</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>OPS04</td>

													<td>Oracle</td>
													<td>2018-03-02</td>
													<td>2018-05-18</td>
													<td><a href="#" data-toggle="popover"
														data-placement="left" data-trigger="hover"
														data-html="true" title="즐거운 Java"
														data-content="<div class='panel page-header' style='text-align: center;'>
                                       <img src='${pageContext.request.contextPath}/resources/images/books/java.jpg'>
                                       <table class='table' style='text-align: center; font-size: 12px'>
                                       <tr><th class='bg-light'>교재 아이디</th><td>B01</td></tr>
                                       <tr><th class='bg-light'>교재명</th><td>즐거운 Java</td></tr>
                                       <tr><th class='bg-light'>ISBN</th><td>123456</td></tr>
                                       </table></div>">즐거운Java</a></td>
												</tr>

												<tr>
													<td>OPS05</td>
													<td>Python</td>
													<td>2018-05-19</td>
													<td>2018-06-20</td>
													<td><a href="#" data-toggle="popover"
														data-placement="left" data-trigger="hover"
														data-html="true" title="즐거운 Java"
														data-content="<div class='panel page-header' style='text-align: center;'>
                                       <img src='${pageContext.request.contextPath}/resources/images/books/python.jpg'>
                                       <table class='table' style='text-align: center; font-size: 12px'>
                                       <tr><th class='bg-light'>교재 아이디</th><td>B02</td></tr>
                                       <tr><th class='bg-light'>교재명</th><td>놀라운 Python</td></tr>
                                       <tr><th class='bg-light'>ISBN</th><td>123456</td></tr>
                                       </table></div>">놀라운
															Python</a></td>
												</tr>
												<tr>
													<td>OPS06</td>
													<td>MySQL</td>
													<td>2018-06-21</td>
													<td>2018-08-25</td>
													<td>-</td>
												</tr>

											</tbody>
										</table>
									</div>

									<div class="panel page-header" style="text-align: left;">
										<button type="button" class="btn btn-default">
											총 <span class="badge">3</span>건
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</main>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
	<script>
		$(document).ready(function() {

			$('[data-toggle="popover"]').popover();
		});
	</script>
</body>
</html>