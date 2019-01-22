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
<script src="//code.jquery.com/jquery-3.3.1.js"></script>
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
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/teacher/teacher_1">
								<i class="material-icons">edit</i> <span>개인 정보 확인</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active"
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
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/teacher/teacher_0"
									style="font-size: 12px; text-align: center;"><i
										class="fa fa-home"></i> 강사</a></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 12px; text-align: center;"><i
										class="fas fa-angle-right"></i></a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/teacher/teacher_2_1"
									style="font-size: 12px; text-align: center;">강의 스케줄 조회</a></li>
								<li class="nav-item"><a class="nav-link"
									style="font-size: 12px; text-align: center;"><i
										class="fas fa-angle-right"></i></a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/teacher/teacher_2_2"
									style="font-size: 12px; text-align: center;">과목 및 수강생 목록</a></li>
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
								<a class="dropdown-item" href="user-profile-lite.html"> <i
									class="material-icons">&#xE7FD;</i> Profile
								</a> <a class="dropdown-item" href="components-blog-posts.html">
									<i class="material-icons">vertical_split</i> Blog Posts
								</a> <a class="dropdown-item" href="add-new-post.html"> <i
									class="material-icons">note_add</i> Add New Post
								</a>
								<div class="dropdown-divider"></div>
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
				<div class="page-header row no-gutters py-4" id="unfixed_title">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">
						<h3 class="page-title">강의 스케줄 조회</h3>
						<span style="font-size: 13px">각 과정의 과목과 수강생을 확인 할 수 있습니다.</span>
					</div>
				</div>

				<div class="row mb-4">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4>
									<strong>개설 과정</strong>
								</h4>
								<div class="panel page-header" style="text-align: right;">
									<div class="table-responsive">
										<table class="table" id="courseID"
											style="text-align: center; font-size: 12px">
											<thead class="bg-light">
												<tr>
													<th>개설과정<br>아이디
													</th>
													<th>과정명</th>
													<th>강의실명</th>
													<th>과정<br>시작일
													</th>
													<th>과정<br>종료일
													</th>
													<th>강의<br>상태
													</th>
													<th>수강<br>인원
													</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="c_l" items="${course_list}">
												<tr>
													<td>${c_l.openCourse_id}</td>
													<td>${c_l.course_name}</td>
													<td>${c_l.classRoom_name}</td>
													<td>${c_l.start_openCourse}</td>
													<td>${c_l.end_openCourse}</td>
													<td>${c_l.opencourse}</td>
													<td>${c_l.student_count}</td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>
									<br>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row mb-4">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4>
									<strong>과목 목록</strong>
								</h4>
								<div class="panel page-header" style="text-align: right;">
									<div class="table-responsive">
										<table class="table"
											style="text-align: center; font-size: 12px">
											<thead class="bg-light">
												<tr>
													<th>과목 아이디</th>
													<th>과목명</th>
													<th>과목 시작일</th>
													<th>과목 종료일</th>
													<th>교재</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="s_l" items="${subject_list}">
													<tr>
														<td>${s_l.openSubject_id}</td>
														<td>${s_l.subject_name}</td>
														<td>${s_l.start_openSubject}</td>
														<td>${s_l.end_openSubject}</td>
														<td><a href="#"class="subjectbook-look popover-bold"
															rel="${s_l.isbn}" data-toggle="popover"
															data-placement="left" data-trigger="hover"
															data-html="true" title="${s_l.book_name}" data-content="">${s_l.book_name}</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<br>
									<div class="row">
										<div class="col-md-12">
											<div class="panel page-header" style="text-align: left;">
												<button type="button" class="btn btn-default">
													총 <span class="badge">${subjectCount}</span>건
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4>
									<strong>수강생 목록</strong>
								</h4>
								<div class="panel page-header" style="text-align: right;">
									<div class="table-responsive">
										<table class="table"
											style="text-align: center; font-size: 12px">
											<thead class="bg-light">
												<tr>
													<th>수강생아이디</th>
													<th>수강생명</th>
													<th>전화번호</th>
													<th>등록일</th>
													<th>수료/중도탈락 여부</th>
													<th>수료/중도탈락 날짜</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="s" items="${student_list}">
													<tr>
														<td>${s.student_id}</td>
														<td><a href="#" data-toggle="popover"
															data-placement="right" data-trigger="hover"
															data-html="true" title="${s.student_name}"
															data-content="<img src='${pageContext.request.contextPath}/resources/pictures/${s.student_picture_name}'>">${s.student_name}</a></td>
														<td>${s.student_phone}</td>
														<td>${s.student_regDate}</td>
														<td>${s.completion_status}</td>
														<td><c:if test="${s.completeion_date eq null}">-</c:if><c:if test="${s.completeion_date ne null}">${s.completeion_date}</c:if></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<br>

									<div class="row">
										<div class="col-md-12">
											<form class="form-inline" method="post">
												<!-- 전체 자료 갯수 -->
												<button type="button" class="btn btn-default btn-md"
													style="height: 40px">
													총 <span class="badge" id="totalcount">${totalCount}</span>건
												</button>
												<!-- 검색 결과 자료 갯수 -->
												<button type="button" class="btn btn-default btn-md"
													style="height: 40px; margin-right: 10px">
													총 <span class="badge" id="count">${searchCount}</span>건
												</button>
												<!-- 검색 기준 select -->
												<select class="form-control" id="key" name="key"
													style="width: 150px; height: 40px;">
													<option value="all">전체</option>
													<option value="student_id">수강생아이디</option>
													<option value="student_name">수강생명</option>
													<option value="student_phone">수강생 전화번호</option>
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
														value="${pageNum-1}" style="height: 40px;">
														<span class="glyphicon glyphicon-hand-left"></span> &#60;
													</button>
													<button type="button"
														class="btn btn-default btn-md col-md-4"
														style="text-align: center; height: 40px; margin: 0 auto;">
														${pageNum}</button>
													<button type="button"
														class="btn btn-default btn-md col-md-4" id="btnNe"
														value="${pageNum+1}" style="height: 40px;">
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
		<script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
		<script>
			$(document).ready(function() {
				$('[data-toggle="popover"]').popover();
				
		          $("a[rel]").on("mouseover", function(){
		               var isbn = $(this).attr("rel");
		               
		               var s="a[rel="+isbn+"]";
		               $.ajax({
		                  url: "${pageContext.request.contextPath}/teacher/book/info"
		                  ,data: {isbn:isbn}
		                  ,success: function(data_) {
		                     var array = data_.item;
		                     for (var i = 0; i < array.length; ++i) {
		                            var item = array[i];
		                            var title = item.title;
		                            var publisher = item.publisher;
		                            var author = item.author;
		                            var priceStandard = item.priceStandard;
		                            var coverLargeUrl = item.coverLargeUrl;
		                            console.log(author);
		                        }
		                     var dataContent = "<img src='" + coverLargeUrl + " 'width='160' height='144'><table class='table' style='text-align: center; font-size: 12px'><tr><th class='bg-light'>저자</th><td>"+author+"</td></tr><tr><th class='bg-light'>ISBN</th><td>"+isbn+"</td></tr><tr><th class='bg-light'>가격</th><td>"+priceStandard+"원</td></tr></table>";
								
		                     $(".subjectbook-look").attr("data-content", dataContent);
		               }});
		            });
		          
		          
		        var courseID = $("#courseID").find("td:eq(0)").text();
		          
		        //페이징 액션
		  		//첫 페이지인 경우 btnPre 버튼에 비활성처리
		  		if (${pageNum} == 1) {
		  			$("#btnPre").attr("disabled", "disabled");
		  		}
		  		//Previous 버튼에 대한 액션
		  		$("#btnPre").on("click", function() {
		  			//Next 버튼을 눌렀을 때 가고 싶은 페이지 번호
		  			window.location.assign("${pageContext.request.contextPath}/teacher/teacher_2_2?openCourse_id="+courseID+"&pageNum="+$(this).val());
		  		});
		  		//마지막 페이지인 경우 btnNe 버튼에 비활성처리
		  		if (${pageNum}==${lastPage}) {
		  			$("#btnNe").attr("disabled", "disabled");
		  		}
		  		//Next 버튼에 대한 액션
		  		$("#btnNe").on("click", function() {
		  			//Next 버튼을 눌렀을 때 가고 싶은 페이지 번호
		  			window.location.assign("${pageContext.request.contextPath}/teacher/teacher_2_2?openCourse_id="+courseID+"&pageNum="+$(this).val());
		  		});
		  		
			});
		</script></body>
</html>