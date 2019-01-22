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
						<li class="nav-item"><a class="nav-link active"
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
						<li class="nav-item"><a class="nav-link"
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
								<li class="nav-item "><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub1/admin_2_1_1.jsp"
									style="font-size: 12px; text-align: center;">기초정보관리</a></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 12px; text-align: center;"><i
										class="fas fa-angle-right"></i></a></li>
								<li class="nav-item"><a class="nav-link active"
									href="${pageContext.request.contextPath}/views/admin/admin_4/admin_sub1/admin_2_4_1.jsp"
									style="font-size: 12px; text-align: center;">교재관리</a></li>

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



			<!-- Users Stats --> <!-- / .main-navbar -->
			<div class="main-content-container container-fluid px-4">
				<div class="page-header row no-gutters py-4">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">
						<span class="text-uppercase page-subtitle"></span>
						<h3 class="page-title">교재관리</h3>
						<span style="font-size: 13px">교재를 조회, 추가, 삭제할 수 있습니다.</span> <br>
						<br>
						<!-- 세부 메뉴 네비게이션 바 -->
						<nav class="navbar navbar-expand bg-light navbar-light navpretty"
							style="width: 300%;">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub1/admin_2_1_1.jsp"
									style="font-size: 13px">과정관리</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub2/admin_2_2_1.jsp">과목관리</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub3/admin_2_3_1.jsp">강의실관리</a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub4/admin_2_4_1.jsp">교재관리</a></li>
							</ul>
						</nav>
					</div>
				</div>


				<div class="row">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<div class="">
								<h4 class="page-title">교재목록</h4>


									<div class="panel page-header" style="text-align: right;">
										<button type="button" class="btn btn-default btn-xs btnAdd"
											data-toggle="modal" data-target="#addModal">교재추가</button>
										<p>
										<div class="card-body p-0 pb-3 text-center">
											<table class="table mb-0"
												style="text-align: center; font-size: 12px">
												<thead class="bg-light">
													<tr>
													<tr>
														<th>교재아이디</th>
														<th>교재명</th>
														<th>ISBN</th>
														<th>수정/삭제</th>
													</tr>
												</thead>
												<tbody>

													<tr>
														<td>B01</td>
														<td><a href="#" data-toggle="popover"
															data-placement="left" data-trigger="hover"
															data-html="true" title="즐거운 Java"
															data-content="<div class='panel page-header' style='text-align: center;'>
                                       <img src='${pageContext.request.contextPath}/resources/images/avatars/image1.png'>
                                       <table class='table' style='text-align: center; font-size: 12px'>
                                       <tr><th class='bg-light'>교재 아이디</th><td>B01</td></tr>
                                       <tr><th class='bg-light'>교재명</th><td>즐거운 Java</td></tr>
                                       <tr><th class='bg-light'>ISBN</th><td>123456</td></tr>
                                       </table></div>">즐거운Java</a></td>
														<td>1234</td>
														<td><div class="btn-group">
																<button type="button"
																	class="btn btn-default btn-xs btnModify"
																	data-toggle="modal" data-target="#modifyModal">수정</button>
																<button type="button"
																	class="btn btn-default btn-xs btnDel"
																	data-toggle="modal" data-target="#deleteModal">삭제</button>
															</div></td>
													</tr>
													<tr>
														<td>B02</td>
														<td><a href="#" data-toggle="popover"
															data-placement="left" data-trigger="hover"
															data-html="true" title="즐거운 Java"
															data-content="<div class='panel page-header' style='text-align: center;'>
                                       <img src='${pageContext.request.contextPath}/resources/images/avatars/image1.png'>
                                       <table class='table' style='text-align: center; font-size: 12px'>
                                       <tr><th class='bg-light'>교재 아이디</th><td>B02</td></tr>
                                       <tr><th class='bg-light'>교재명</th><td>즐거운 Oracle</td></tr>
                                       <tr><th class='bg-light'>ISBN</th><td>123456</td></tr>
                                       </table></div>">즐거운Oracle</a></td>
														<td>1234</td>
														<td><div class="btn-group">
																<button type="button"
																	class="btn btn-default btn-xs btnModify"
																	data-toggle="modal" data-target="#modifyModal">수정</button>
																<button type="button"
																	class="btn btn-default btn-xs btnDel"
																	data-toggle="modal" data-target="#deleteModal">삭제</button>
															</div></td>

													</tr>
													<tr>
														<td>B03</td>
														<td><a href="#" data-toggle="popover"
															data-placement="left" data-trigger="hover"
															data-html="true" title="즐거운 Java"
															data-content="<div class='panel page-header' style='text-align: center;'>
                                       <img src='${pageContext.request.contextPath}/resources/images/avatars/image1.png'>
                                       <table class='table' style='text-align: center; font-size: 12px'>
                                       <tr><th class='bg-light'>교재 아이디</th><td>B01</td></tr>
                                       <tr><th class='bg-light'>교재명</th><td>즐거운 Java</td></tr>
                                       <tr><th class='bg-light'>ISBN</th><td>123456</td></tr>
                                       </table></div>">즐거운Java</a></td>
														<td>1234</td>
														<td><div class="btn-group">
																<button type="button"
																	class="btn btn-default btn-xs btnModify"
																	data-toggle="modal" data-target="#modifyModal">수정</button>
																<button type="button"
																	class="btn btn-default btn-xs btnDel"
																	data-toggle="modal" data-target="#deleteModal">삭제</button>
															</div></td>
													</tr>
													<tr>
														<td>B04</td>
														<td><a href="#" data-toggle="popover"
															data-placement="left" data-trigger="hover"
															data-html="true" title="즐거운 Java"
															data-content="<div class='panel page-header' style='text-align: center;'>
                                       <img src='${pageContext.request.contextPath}/resources/images/avatars/image1.png'>
                                       <table class='table' style='text-align: center; font-size: 12px'>
                                       <tr><th class='bg-light'>교재 아이디</th><td>B01</td></tr>
                                       <tr><th class='bg-light'>교재명</th><td>즐거운 Java</td></tr>
                                       <tr><th class='bg-light'>ISBN</th><td>123456</td></tr>
                                       </table></div>">즐거운Java</a></td>
														<td>1234</td>
														<td><div class="btn-group">
																<button type="button"
																	class="btn btn-default btn-xs btnModify"
																	data-toggle="modal" data-target="#modifyModal">수정</button>
																<button type="button"
																	class="btn btn-default btn-xs btnDel"
																	data-toggle="modal" data-target="#deleteModal">삭제</button>
															</div></td>
													</tr>
													<tr>
														<td>B05</td>
														<td><a href="#" data-toggle="popover"
															data-placement="left" data-trigger="hover"
															data-html="true" title="즐거운 Java"
															data-content="<div class='panel page-header' style='text-align: center;'>
                                       <img src='${pageContext.request.contextPath}/resources/images/avatars/image1.png'>
                                       <table class='table' style='text-align: center; font-size: 12px'>
                                       <tr><th class='bg-light'>교재 아이디</th><td>B05</td></tr>
                                       <tr><th class='bg-light'>교재명</th><td>웹개발</td></tr>
                                       <tr><th class='bg-light'>ISBN</th><td>123456</td></tr>
                                       </table></div>">웹개발</a></td>
														<td>123456</td>
														<td><div class="btn-group">
																<button type="button"
																	class="btn btn-default btn-xs btnModify"
																	data-toggle="modal" data-target="#modifyModal">수정</button>
																<button type="button"
																	class="btn btn-default btn-xs btnDel"
																	data-toggle="modal" data-target="#deleteModal">삭제</button>
															</div></td>
													</tr>
													<tr>
														<td>B06</td>
														<td><a href="#" data-toggle="popover"
															data-placement="left" data-trigger="hover"
															data-html="true" title="즐거운 Java"
															data-content="<div class='panel page-header' style='text-align: center;'>
                                       <img src='${pageContext.request.contextPath}/resources/images/avatars/image1.png'>
                                       <table class='table' style='text-align: center; font-size: 12px'>
                                       <tr><th class='bg-light'>교재 아이디</th><td>B06</td></tr>
                                       <tr><th class='bg-light'>교재명</th><td>Javascript</td></tr>
                                       <tr><th class='bg-light'>ISBN</th><td>123456</td></tr>
                                       </table></div>">Javascript</a></td>
														<td>123456</td>
														<td><div class="btn-group">
																<button type="button"
																	class="btn btn-default btn-xs btnModify"
																	data-toggle="modal" data-target="#modifyModal">수정</button>
																<button type="button"
																	class="btn btn-default btn-xs btnDel"
																	data-toggle="modal" data-target="#deleteModal">삭제</button>
															</div></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<!-- 전체 자료 갯수 -->
											<form class="form-inline" method="post">
												<button type="button" class="btn btn-default btn-md"
													style="height: 40px;">
													총 <span class="badge" id="totalcount">4</span>건
												</button>

											</form>
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
	</div>


	<!-- 교재 수정 모달 -->
	<div id="modifyModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">교재 수정</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<h6>현재 선택한 교재 정보를 수정합니다.</h6>
					<form
						action="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub4/admin_2_4_1.jsp"
						method="POST">
						<div style="margin-bottom: 10px">
							<span style="font-size: 13px; font-weight: bold;">교재아이디</span>
							<div class="input-group">
								<input type="text" id="modify_book_id" name="modify_book_id"
									class="form-control" value="" readonly="readonly"
									placeholder="BOOK_ID">
							</div>
						</div>

						<div style="margin-bottom: 10px">
							<span style="font-size: 13px; font-weight: bold;">교재명</span>
							<div class="input-group">
								<input type="text" id="modify_book_name" name="modify_book_name"
									class="form-control" value="" placeholder="BOOK_NAME">
							</div>
						</div>
						<div style="margin-bottom: 10px">
							<span style="font-size: 13px">ISBN</span>
							<div class="input-group">
								<input type="text" id="modify_isbn" name="modify_isbn" class="form-control"
									value="" placeholder="ISBN">
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<input type="submit" value="SUBMIT" class="btn btn-default">
					<button type="button" class="btn btn-default" data-dismiss="modal">CLOSE</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 교재 삭제 모달 -->
	<div id="deleteModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">교재 삭제</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<h6>현재 선택한 교재 정보를 삭제할까요?</h6>
					<form
						action="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub4/admin_2_4_1.jsp"
						method="POST">
						<div style="margin-bottom: 10px">
							<span style="font-size: 13px; font-weight: bold;">교재아이디</span>
							<div class="input-group">
								<input type="text" id="delete_book_id" name="delete_book_id"
									class="form-control" value="" readonly="readonly"
									placeholder="B01">
							</div>
						</div>

						<div style="margin-bottom: 10px">
							<span style="font-size: 13px; font-weight: bold;">교재명</span>
							<div class="input-group">
								<input type="text" id="delete_book_name" name="delete_book_name"
									class="form-control" value="" readonly="readonly"
									placeholder="즐거운 Java">
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<input type="submit" value="SUBMIT" class="btn btn-default">
					<button type="button" class="btn btn-default" data-dismiss="modal">CLOSE</button>
				</div>
			</div>
		</div>
	</div>


	<!-- 교재추가용 모달 -->
	<div id="addModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">교재 추가</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<h6>현재 선택한 교재 정보를 추가합니다.</h6>
					<form
						action="${pageContext.request.contextPath}/views/admin/admin_2/admin_sub4/admin_2_4_1.jsp"
						method="POST">
						<div style="margin-bottom: 10px">
							<span style="font-size: 13px; font-weight: bold;">교재명</span>
							<div class="input-group">
								<input type="text" id="add_book_name" name="add_book_name"
									class="form-control" value="" placeholder="BOOK_NAME">
							</div>
						</div>
						<div style="margin-bottom: 10px">
							<span style="font-size: 13px">ISBN</span>
							<div class="input-group">
								<input type="text" id="isbn" name="isbn" class="form-control"
									value="" placeholder="ISBN">
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<input type="submit" value="SUBMIT" class="btn btn-default">
					<button type="button" class="btn btn-default" data-dismiss="modal">CLOSE</button>
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
	<script>
		$(document).ready(function() {
			$('[data-toggle="popover"]').popover();
		});
	</script>

</body>
</html>