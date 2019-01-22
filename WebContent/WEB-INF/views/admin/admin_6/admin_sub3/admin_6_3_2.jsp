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

<style>
.navpretty {
	background-color: #fff;
	border: none;
	border-radius: .625rem;
	box-shadow: 0 0.46875rem 2.1875rem rgba(90, 97, 105, .1), 0 0.9375rem
		1.40625rem rgba(90, 97, 105, .1), 0 0.25rem 0.53125rem
		rgba(90, 97, 105, .12), 0 0.125rem 0.1875rem rgba(90, 97, 105, .1);
}
</style>

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
							href="${pageContext.request.contextPath}/views/admin/admin_6/admin_sub1/admin_6_1_1.jsp"
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
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/views/admin/admin_3/admin_3_1.jsp">
								<i class="fas fa-chalkboard-teacher" style='font-size: 13px'></i>
								<span>강사 계정 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/views/admin/admin_4/admin_4_1.jsp">
								<i class="fas fa-clipboard-check" style='font-size: 15px'></i> <span>개설
									과정 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/views/admin/admin_5/admin_5_1.jsp">
								<i class="fas fa-clipboard-list" style='font-size: 15px'></i> <span>개설
									과목 관리</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active"
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
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_6/admin_sub1/admin_6_1_1.jsp"
									style="font-size: 12px; text-align: center;">수강생관리</a></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 12px; text-align: center;"><i
										class="fas fa-angle-right"></i></a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_6/admin_sub3/admin_6_3_1.jsp"
									style="font-size: 12px; text-align: center;">중도탈락처리</a></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 12px; text-align: center;"><i
										class="fas fa-angle-right"></i></a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_6/admin_sub2/admin_6_2_2.jsp"
									style="font-size: 12px; text-align: center;">수강생조회</a></li>
							</ul>
						</nav>
					</form>
					<ul class="navbar-nav border-left flex-row">
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
							<h3 class="page-title">수강생 관리</h3>
							<span style="font-size: 13px">각 과정의 수강생을 중도 탈락 처리할 수 있습니다.</span>
						</div>
						<br>

						<!-- 세부 메뉴 네비게이션 바 -->
						<nav class="navbar navbar-expand bg-light navbar-light navpretty"
							style="width: 300%;">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_6/admin_sub1/admin_6_1_1.jsp"
									style="font-size: 13px">수강생목록</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_6/admin_sub2/admin_6_2_1.jsp">과정등록
										및 취소</a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_6/admin_sub3/admin_6_3_1.jsp">중도탈락처리</a></li>
							</ul>
						</nav>

					</div>
				</div>

				<!-- Users Stats -->
				<div class="row mb-4">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4>
									<strong>중도탈락 처리</strong>
								</h4>
								<p>
								<div class="panel p""text-alian:right">
									<div class="table-responsive">
										<table class="table"
											style="text-align: center; vertical-align: middle; font-size: 12px">
											<thead class="bg-light">
												<tr>
													<th style="width: 10%">개설과정<br>아이디
													</th>
													<th style="width: 20%">과정명</th>
													<th style="width: 12%">과정<br>시작일
													</th>
													<th style="width: 12%">과정<br>종료일
													</th>
													<th style="width: 10%">강의실</th>
													<th style="width: 10%">진행<br>상태
													</th>
													<th style="width: 10%">등록<br>인원
													</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>OPC04</td>
													<td>빅데이터시각화 웹어플리케이션 개발자(Java개발)</td>
													<td>2019-01-01</td>
													<td>2019-06-25</td>
													<td>2반</td>
													<td>과정예정</td>
													<td>0/XX</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Users Stats -->
				<div class="row mb-4">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<div>
									<h4>
										<strong>수강생목록</strong>
									</h4>
									<p>
									<div class="panel page-header" style="text-align: right;">
										<div class="table-responsive">
											<table class="table"
												style="text-align: center; vertical-align: middle; font-size: 12px">
												<thead class="bg-light">
													<tr>
														<th>수강생아이디</th>
														<th>수강생명</th>
														<th>전화번호</th>
														<th>등록일</th>
														<th>중도탈락</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>ST001</td>
														<td><a href="#" data-toggle="popover"
															data-placement="right" data-trigger="hover"
															data-html="true" title="김민진"
															data-content="<img src='${pageContext.request.contextPath}/resources/images/avatars/0.jpg'>">김민진</a></td>
														<td>010-1111-1111</td>
														<td>2017-12-05</td>
														<td><button type="button"
																class="btn btn-default btn-xs btnDel"
																data-toggle="modal" data-target="#deleteModal">
																<i class='fas fa-minus-circle' style="width: 20px"></i>
															</button></td>
													</tr>
													<tr>
														<td>ST002</td>
														<td><a href="#" data-toggle="popover"
															data-placement="right" data-trigger="hover"
															data-html="true" title="김똘똘"
															data-content="<img src='${pageContext.request.contextPath}/resources/images/avatars/1.jpg'>">김똘똘</a></td>
														<td>010-1111-1111</td>
														<td>2017-12-06</td>
														<td><button type="button"
																class="btn btn-default btn-xs btnDel"
																data-toggle="modal" data-target="#deleteModal">
																<i class='fas fa-minus-circle' style="width: 20px"></i>
															</button></td>
													</tr>
													<tr>
														<td>ST003</td>
														<td><a href="#" data-toggle="popover"
															data-placement="right" data-trigger="hover"
															data-html="true" title="김매매"
															data-content="<img src='${pageContext.request.contextPath}/resources/images/avatars/2.jpg'>">김매매</a></td>
														<td>010-1111-1111</td>
														<td>2017-12-05</td>
														<td><button type="button"
																class="btn btn-default btn-xs btnDel"
																data-toggle="modal" data-target="#deleteModal">
																<i class='fas fa-minus-circle' style="width: 20px"></i>
															</button></td>
													</tr>
													<tr>
														<td>ST004</td>
														<td><a href="#" data-toggle="popover"
															data-placement="right" data-trigger="hover"
															data-html="true" title="김두루미"
															data-content="<img src='${pageContext.request.contextPath}/resources/images/avatars/3.jpg'>">김두루미</a></td>
														<td>010-1111-1111</td>
														<td>2017-12-05</td>
														<td><button type="button"
																class="btn btn-default btn-xs btnDel"
																data-toggle="modal" data-target="#deleteModal">
																<i class='fas fa-minus-circle' style="width: 20px"></i>
															</button></td>
													</tr>
													<tr>
														<td>ST005</td>
														<td><a href="#" data-toggle="popover"
															data-placement="right" data-trigger="hover"
															data-html="true" title="김철순"
															data-content="<img src='${pageContext.request.contextPath}/resources/images/avatars/4.jpg'>">김철순</a></td>
														<td>010-1111-1111</td>
														<td>2017-12-05</td>
														<td><button type="button"
																class="btn btn-default btn-xs btnDel"
																data-toggle="modal" data-target="#deleteModal">
																<i class='fas fa-minus-circle' style="width: 20px"></i>
															</button></td>
													</tr>
												</tbody>
											</table>
										</div>
										<p>
										<div class="row">
											<div class="col-md-12">
												<form class="form-inline" method="post">
													<!-- 전체 자료 갯수 -->
													<button type="button" class="btn btn-default btn-md"
														style="height: 40px">
														총 <span class="badge" id="totalcount">4</span>건
													</button>
													<!-- 검색 결과 자료 갯수 -->
													<button type="button" class="btn btn-default btn-md"
														style="height: 40px; margin-right: 10px">
														검색 <span class="badge" id="count">0</span>건
													</button>
													<!-- 검색 기준 select -->
													<select class="form-control" id="key" name="key"
														style="width: 140px; height: 40px;">
														<option value="student_id">수강생아이디</option>
														<option value="student_name" style="">수강생명</option>
													</select>
													<!-- 검색 단어 입력 폼 -->
													<input type="text" class="form-control" id="value"
														name="value" style="width: 200px; height: 40px;">
													<!-- 검색 진행 버튼 -->
													<button type="submit" class="btn btn-default"
														id="btnSearch" style="height: 40px; margin-right: 10px">
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
															class="btn btn-default btn-md col-md-4" id="btnNe"
															value="" style="height: 40px;">
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
			</main>
		</div>

		<!-- 수강생 삭제 모달 -->
		<div id="deleteModal" class="modal fade" role="dialog">
			<div class="modal-dialog modal-md">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">수강생 중도탈락</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<h6>수강생 정보를 확인하고, 중도 탈락 날짜를 입력해주세요.</h6>
						<form action="" method="POST">

							<div style="margin-bottom: 10px">
								<span style="font-size: 13px; font-weight: bold;">수강생정보</span>
								<div class="table-responsive">
									<table class="table"
										style="text-align: center; vertical-align: middle; font-size: 12px">
										<tbody>
											<tr>
												<th class="bg-light">수강생아이디</th>
												<td>ST001</td>
											</tr>
											<tr>
												<th class="bg-light">수강생명</th>
												<td><a href="#" data-toggle="popover"
													data-placement="right" data-trigger="hover"
													data-html="true" title="김민진"
													data-content="<img src='${pageContext.request.contextPath}/resources/images/avatars/0.jpg'>">김민진</a></td>
											</tr>
											<tr>
												<th class="bg-light">전화번호</th>
												<td>010-1111-1111</td>
											</tr>
											<tr>
												<th class="bg-light">등록일</th>
												<td>2017-12-05</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div style="margin-bottom: 10px">
								<span style="font-size: 13px; font-weight: bold;">등록일</span>
								<div class="input-group">
									<input type="date" id="stop_date" name="stop_date"
										class="form-control" value="" placeholder="2018-01-01">
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<input type="submit" value="SUBMIT" class="btn btn-default">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
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