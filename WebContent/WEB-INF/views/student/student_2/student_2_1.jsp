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

<style>
.badge2 {
	text-color: #000;
}

.nav-item1 {
	text-align: center;
}
</style>
</head>
<body class="h-100">


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
						<li class="nav-item" style="text-align: center;"><a
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
						<li class="nav-item"><a class="nav-link active"
							href="${pageContext.request.contextPath}/views/student/student_2/student_2_1.jsp">
								<i class="material-icons">vertical_split</i> <span>성적 조회</span>
						</a></li>
					</ul>
				</div>
			</aside>
			<!-- End Main Sidebar -->
			<main
				class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-4">
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
									href="${pageContext.request.contextPath}//views/student/student_0/student_0.jsp"
									style="font-size: 12px; text-align: center;"><i
										class="fa fa-home"></i> 수강생</a></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 12px; text-align: center;"><i
										class="fas fa-angle-right"></i></a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}//views/student/student_2/student_2_1.jsp"
									style="font-size: 12px; text-align: center;">성적조회</a></li>
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
										<span class="notification__category">공지사항</span>

									</div>
								</a> <a class="dropdown-item notification__all text-center" href="#">
									더보기 </a>
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
			<!-- / .main-navbar -->
			<div class="main-content-container container-fluid px-4">
				<!-- Page Header -->
				<div class="page-header row no-gutters py-4">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">
						<h3 class="page-title">성적조회</h3>
						<span style="font-size: 13px">과정조회를 통해 성적조회가 가능합니다.</span>
					</div>

				</div>


				<div class="row mb-4">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<div class="">
									<h4 class="page-title">과정목록</h4>

								</div>
								<div class="table-responsive">
									<table class="table"
										style="text-align: center; font-size: 12px">
										<thead class="bg-light">
											<tr>
												<th style="width: 10%">개설과정<br>아이디
												</th>
												<th style="width: 25%">과정명</th>
												<th style="width: 10%">과정시작일</th>
												<th style="width: 10%">과정종료일</th>
												<th style="width: 8%">강의실</th>
												<th style="width: 10%">수료/중도<br>탈락
												</th>
												<th style="width: 10%">수료/중도<br>탈락날짜
												</th>
												<th style="width: 10%">조회</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>OPC01</td>
												<td>클라우드 컴퓨팅 기반의 빅데이터전문가(Java개발)</td>
												<td>2017-01-05</td>
												<td>2017-07-20</td>
												<td>1반</td>
												<td>수료완료</td>
												<td>2017-07-20</td>
												<td>
													<button type="button"
														class="btn btn-default  btn-xs btnView"
														onclick="location.href='${pageContext.request.contextPath}/views/student/student_2/student_2_2.jsp' ">
														<i class="fa fa-search" style="width: 20px"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td>OPC02</td>
												<td>빅데이터시각화 웹어플리케이션개발자(Java개발)</td>
												<td>2018-03-02</td>
												<td>2018-03-02</td>
												<td>3반</td>
												<td>중도탈락</td>
												<td>2018-07-01</td>
												<td>
													<button type="button"
														class="btn btn-default btn-xs btnView"
														onclick="location.href='${pageContext.request.contextPath}/views/student/student_2/student_2_2.jsp' ">
														<i class="fa fa-search" style="width: 20px"></i>
													</button>
												</td>
											</tr>

										</tbody>
									</table>
								</div>

								<div class="row">
									<div class="col-md-12">
										<form class="form-inline" method="post">
											<!-- 전체 자료 갯수 -->
											<button type="button" class="btn btn-default btn-md"
												style="height: 40px">
												총 <span class="badge" id="totalcount">2</span>건
											</button>
											<!-- 검색 결과 자료 갯수 -->
											<button type="button" class="btn btn-default btn-md"
												style="height: 40px; margin-right: 10px">
												검색 <span class="badge" id="count">0</span>건
											</button>


											<select class="form-control" id="key" name="key"
												style="width: 150px; height: 40px;">
												<option value="opencourse_id">과정아이디</option>
												<option value="course_name" style="">과정명</option>
											</select>

											<!-- 검색 단어 입력 폼 -->
											<input type="text" class="form-control" id="value"
												name="value" style="width: 200px; height: 40px;">
											<!-- 검색 진행 버튼 -->
											<button type="submit" class="btn btn-default" id="btnSearch"
												style="height: 40px; margin-right: 10px">
												<i class="fa fa-search "></i>
											</button>
											<!-- 페이징 버튼 -->
											<div class="btn-group">
												<button type="button"
													class="btn btn-default btn-md col-md-4 " id="btnPre"
													value="" style="height: 40px;">
													<span class="glyphicon glyphicon-hand-left"></span> &#60;
												</button>
												<button type="button"
													class="btn btn-default btn-md col-md-4"
													style="text-align: center; height: 40px; margin: 0 auto;">
													1</button>
												<button type="button"
													class="btn btn-default btn-md col-md-4" id="btnNe" value=""
													style="height: 40px;">
													&#62; <span class="glyphicon glyphicon-hand-right"></span>
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

			</div>
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

</body>
</html>