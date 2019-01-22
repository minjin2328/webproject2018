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
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" id="main-stylesheet" data-version="1.1.0"
	href="${pageContext.request.contextPath}/resources/styles/shards-dashboards.1.1.0.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles/extras.1.1.0.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles/style.css">
<script async defer src="https://buttons.github.io/buttons.js"></script>
</head>
<style>
</style>
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
						<li class="nav-item active" style="text-align: center;"><a
							class="nav-link"
							href="${pageContext.request.contextPath}/views/admin/admin_0/admin_0.jsp">
								<span><img class="rounded-circle mr-2"
									src="${pageContext.request.contextPath}/resources/images/avatars/avatar.png"></span>
								<br> admin
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
									href="${pageContext.request.contextPath}/views/adminSuper/adminSuper.jsp"
									style="font-size: 12px; text-align: center;"><i
										class="fa fa-home"></i> 총 관리자</a></li>
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

			<!-- main-navbar -->
			<div class="main-content-container container-fluid px-4">
				<!-- Page Header -->
				<div class="page-header row no-gutters py-4">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">
						<h3 class="page-title">총 관리자 비밀번호 변경</h3>
						<span style="font-size: 13px">내 비밀번호를 변경합니다.</span>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<div class="">
									<h4>
										<strong>비밀번호 변경</strong>
									</h4>

									<button type="button" class="btn btn-default btn-block btnPw"
										data-toggle="modal" data-target="#superadmin_newpwModal">비밀번호
										변경</button>
								</div>

							</div>
						</div>
					</div>
				</div>

				<!-- Page Header -->
				<div class="page-header row no-gutters py-4">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">
						<h3 class="page-title">관리자 계정 관리</h3>
						<span style="font-size: 13px">관리자의 계정을 관리합니다.</span>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<div class="">
									<h4>
										<strong>관리자 계정 목록</strong>
									</h4>
								</div>
								<div class="panel page-header" style="text-align: right;">
									<button type="button" class="btn btn-default btn-xs btnAdd"
										data-toggle="modal" data-target="#addModal">관리자 계정 추가</button>
									<p>
									<div class="table-responsive">
										<table class="table"
											style="text-align: center; font-size: 12px">
											<thead class="bg-light">
												<tr>
													<th>아이디</th>
													<th>이름</th>
													<th>전화번호</th>
													<th>등급</th>
													<th>계정잠금상태</th>
													<th>등록일</th>
													<th>비밀번호변경</th>
													<th>계정잠금</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>admin</td>
													<td>빵빵빵</td>
													<td>010-1234-1234</td>
													<td>superAdmin</td>
													<td>unlocking</td>
													<td>2018-10-10</td>
													<td><button class="btn btn-default btn-xs btnPw"
															data-toggle="modal" data-target="#newpwModal">비밀번호변경</button></td>
													<td><div class="btn-group">
															<button type="button" class="btn btn-default btn-xs"
																disabled="disabled">On</button>
															<button type="button" class="btn btn-default btn-xs"
																disabled="disabled">Off</button>
														</div></td>

												</tr>
												<tr>
													<td>hong</td>
													<td>홍길동</td>
													<td>010-2222-1234</td>
													<td>manager</td>
													<td>locking</td>
													<td>2018-10-10</td>
													<td><button class="btn btn-default btn-xs btnPw"
															data-toggle="modal" data-target="#newpwModal">비밀번호변경</button></td>
													<td><div class="btn-group">
															<button type="button" class="btn btn-default btn-xs">On</button>
															<button type="button" class="btn btn-default btn-xs"
																disabled="disabled">Off</button>
														</div></td>
												</tr>
											</tbody>
										</table>
									</div>
									<br>

									<div class="row">
										<div class="col-md-12">
											<form class="form-inline" method="post">
												<!-- 전체 자료 갯수 -->
												<button type="button" class="btn btn-default btn-md"
													style="height: 40px; margin-right: 10px">
													총 <span class="badge" id="totalcount">2</span>건
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
			<!-- 총관리자 비밀번호변경 모달 -->
			<div id="superadmin_newpwModal" class="modal fade" role="dialog">
				<div class="modal-dialog modal-md">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">총 관리자 비밀번호 변경</h4>
							<button type="button" class="close" data-dismiss="modal">×</button>
						</div>
						<div class="modal-body">
							<h6>내 비밀번호를 변경합니다.</h6>

							<div style="margin-bottom: 10px">
								<span style="font-size: 13px; font-weight: bold;">새 비밀번호</span>
								<div class="input-group">
									<input type="password" class="form-control"
										id="superadmin_newPw1" name="superadmin_newPw1" value=""
										placeholder="새 비밀번호를 입력하세요.">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fas fa-key"></i></span>
									</div>
								</div>
							</div>

							<div style="margin-bottom: 10px">
								<span style="font-size: 13px; font-weight: bold;">비밀번호 확인</span>
								<div class="input-group">
									<input type="password" class="form-control"
										id="superadmin_newPw2" name="superadmin_newPw2" value=""
										placeholder="다시 한 번 입력하세요.">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fas fa-check"></i></span>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<input type="submit" value="SUBMIT" class="btn btn-default">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">CLOSE</button>
						</div>
					</div>
				</div>
			</div>

			<!-- 관리자 비밀번호변경 모달 -->
			<div id="newpwModal" class="modal fade" role="dialog">
				<div class="modal-dialog modal-md">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">관리자 비밀번호 변경</h4>
							<button type="button" class="close" data-dismiss="modal">×</button>
						</div>
						<div class="modal-body">
							<h6>관리자아이디를 확인하고, 새로운 비밀번호를 입력해주세요.</h6>
							<div style="margin-bottom: 10px">
								<span style="font-size: 13px; font-weight: bold;">아이디</span>
								<div class="input-group">
									<input type="text" class="form-control" id="newpw_id_"
										name="newpw_id_" value="" placeholder="admin"
										readonly="readonly">
									<div class="input-group-prepend"></div>
								</div>
							</div>

							<div style="margin-bottom: 10px">
								<span style="font-size: 13px; font-weight: bold;">새 비밀번호</span>
								<div class="input-group">
									<input type="password" class="form-control" id="newpw_newPw1"
										name="newpw_newPw1" value="" placeholder="새 비밀번호를 입력하세요.">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fas fa-key"></i></span>
									</div>
								</div>
							</div>

							<div style="margin-bottom: 10px">
								<span style="font-size: 13px; font-weight: bold;">비밀번호 확인</span>
								<div class="input-group">
									<input type="password" class="form-control" id="newpw_newPw2"
										name="newpw_newPw2" value="" placeholder="다시 한 번 입력하세요.">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fas fa-check"></i></span>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<input type="submit" value="SUBMIT" class="btn btn-default">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">CLOSE</button>
						</div>
					</div>
				</div>
			</div>

			<!-- 관리자계정추가 모달 -->
			<div id="addModal" class="modal fade" role="dialog">
				<div class="modal-dialog modal-md">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">관리자 계정 추가</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<h6>관리자 계정을 추가합니다.</h6>
							<form
								action="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub1/admin_2_1_1.jsp"
								method="POST">
								<div style="margin-bottom: 10px">
									<span style="font-size: 13px; font-weight: bold;">관리자아이디</span>
									<div class="input-group">
										<input type="text" id="add_id_" name="add_id_"
											class="form-control" value="" placeholder="관리자아이디">
									</div>
								</div>

								<div style="margin-bottom: 10px">
									<span style="font-size: 13px; font-weight: bold;">이름</span>
									<div class="input-group">
										<input type="text" id="add_name" name="add_name_"
											class="form-control" value="" placeholder="이름">
									</div>
								</div>

								<div style="margin-bottom: 10px">
									<span style="font-size: 13px; font-weight: bold;">전화번호</span>
									<div class="input-group">
										<input type="text" id="add_phone" name="add_phone"
											class="form-control" value="" placeholder="전화번호">
									</div>
								</div>
								<div style="margin-bottom: 10px">
									<span style="font-size: 13px; font-weight: bold;">패스워드</span>
									<div class="input-group">
										<input type="text" id="add_pw_" name="add_pw_"
											class="form-control" value="" placeholder="패스워드">
									</div>
								</div>

							</form>
						</div>
						<div class="modal-footer">
							<input type="submit" value="SUBMIT" class="btn btn-default">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">CLOSE</button>
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

	<script>
		
	</script>
</body>
</html>