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
							class="nav-link"
							href="${pageContext.request.contextPath}/teacher/teacher_0">
								<span><img class="rounded-circle mr-2"
									src="${pageContext.request.contextPath}/resources/images/avatars/0.jpg"></span>
								<br> ${sessionScope.teacher.teacher_name}
						</a></li>
						<li class="nav-item"><a class="nav-link active"
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
									href="${pageContext.request.contextPath}/teacher/teacher_0"
									style="font-size: 12px; text-align: center;"><i
										class="fa fa-home"></i> 강사</a></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 12px; text-align: center;"><i
										class="fas fa-angle-right"></i></a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/teacher/teacher_1"
									style="font-size: 12px; text-align: center;">개인 정보 확인</a></li>
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
								
								<a class="dropdown-item text-danger" href="${pageContext.request.contextPath}/teacher/logout"> <i
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
				<div class="page-header row no-gutters py-4"></div>



				<div class="row">
					<%-- 성공 실패 메시지 출력 위치 --%>
					<c:if test="${result=='success'}">
						<div class="alert alert-success alert-dismissible fade in"
							style="padding-top: 5px; padding-bottom: 5px; margin-top: 5px; margin-bottom: 5px;">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Success!</strong> 요청한 작업이 처리되었습니다.
						</div>
					</c:if>
					<c:if test="${result=='fail'}">
						<div class="alert alert-danger alert-dismissible fade in"
							style="padding-top: 5px; padding-bottom: 5px; margin-top: 5px; margin-bottom: 5px;">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Fail!</strong> 요청한 작업이 처리되지 못했습니다.
						</div>
					</c:if>
					<div class="col-5" style="text-align: center;">
						<!-- 이미지 -->
						${sessionScope.teacher.teacher_name} 의 개인 정보<br> <span><img
							class="rounded-circle mr-0 mb-2"
							src="${pageContext.request.contextPath}/resources/images/avatars/0.jpg"></span>
						<br>
						<button type="button" class="btn btn-primary btn-xs btnpw"
							data-toggle="modal" data-target="#newpwModal">비밀번호 변경</button>
					</div>
					<div class="col-6 grid-margin stretch-card"
						style="text-align: center;">
						<!-- 수강생, 전화번호, 등록일, 수강횟수 -->
						<div class="card card-small mb-0 ">
							<table class="table" style="text-align: center; font-size: 12px">

								<c:forEach var="t_i" items="${teacher_info}">
									<tr>
										<th class="bg-light">강사명</th>
										<td>${t_i.teacher_name}</td>
									</tr>
									<tr>
										<th class="bg-light">전화번호</th>
										<td>${t_i.teacher_phone}</td>
									</tr>
									<tr>
										<th class="bg-light">등록일</th>
										<td scope="row">${t_i.teacher_regDate}</td>
									</tr>
								</c:forEach>

							</table>
						</div>
					</div>
				</div>

				<div>
					<br>
				</div>

				<div class="row mb-4">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4>
									<strong>강의 가능 과목</strong>
								</h4>
								<br>
								<div class="panel page-header" style="text-align: right;">
									<div class="table-responsive">
										<table class="table"
											style="text-align: center; font-size: 12px">
											<thead class="bg-light">
												<tr>
													<th scope="col" class="border-0">과목아이디</th>
													<th scope="col" class="border-0">과목명</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="s_l" items="${subject_list}">
													<tr>
														<td>${s_l.subject_id}</td>
														<td>${s_l.subject_name}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<br>
									<div class="row">
										<div class="col-md-12">
											<!-- 전체 자료 갯수 -->
											<div class="panel page-header" style="text-align: left;">
												<button type="button" class="btn btn-default">
													총 <span class="badge">${totalCount}</span>건
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 비밀번호 변경 Modal -->
		<div id="newpwModal" class="modal fade" role="dialog">
			<div class="modal-dialog modal-md">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">비밀번호 변경</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div style="margin-bottom: 10px">
							<span style="font-size: 13px; font-weight: bold;">현재 패스워드</span>
							<div class="input-group">
								<input type="password" class="form-control" id="teacher_pw"
									name="teacher_pw" value="" placeholder="현재 패스워드를 입력해 주세요.">
								<div class="input-group-prepend"></div>
							</div>
						</div>
						<div style="margin-bottom: 10px">
							<span style="font-size: 13px; font-weight: bold;">새 패스워드</span>
							<div class="input-group">
								<input type="password" class="form-control" id="teacher_newPw"
									name="teacher_newPw" value="" placeholder="새로운 패스워드를 입력해 주세요.">
								<div class="input-group-prepend"></div>
							</div>
						</div>
						<div style="margin-bottom: 10px">
							<span style="font-size: 13px; font-weight: bold;">새 패스워드
								확인</span>
							<div class="input-group">
								<input type="password" class="form-control" id="teacher_newPw2"
									name="teacher_newPw2" value="" placeholder="다시 한번 입력해 주세요.">
								<div class="input-group-prepend"></div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" id="updateButton" value="SUBMIT" class="btn btn-default">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#updateButton").on("click",function(){
				var teacher_newPw= $("#teacher_newPw").val();
				var teacher_newPw2= $("#teacher_newPw2").val();
				if(teacher_newPw==teacher_newPw2){
					location.assign("${pageContext.request.contextPath}/teacher/teacher_1/update?teacher_pw="+$("#teacher_pw").val()+"&teacher_newPw="+teacher_newPw);
				}else{
					alert("바꿀 비밀번호가 틀렸습니다.");
				}
			});
		});

</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
		
</body>
</html>