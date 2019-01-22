<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쌍용교육센터</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/logo/sist.jpg" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<!--===============================================================================================-->
<!-- 아이콘 추가 -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="${pageContext.request.contextPath}/resources/images/img-01.png" alt="IMG">
				</div>

				<!-- 
				action="" 생략시 자기 자신
				get="" 생략시 GET 방식
				-->
				
				 <form class="login100-form validate-form"
					action="${pageContext.request.contextPath}/index/login"
							method="POST">
					<span class="login100-form-title"> SIST Login </span>

					<div class="wrap-input100 validate-input"
						style="text-align: center">
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Id is required">
						<span class="login100-form-title"> 로그아웃 되었습니다. </span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
					</div>

					<div class="container-login100-form-btn">
					
						<!-- type="" 속성이 없는 button이 form 안에 있으면 submit 버튼 -->
						<button class="login100-form-btn btnMain" type="button"
						onclick="location.href='${pageContext.request.contextPath}/index'">메인으로 돌아가기</button>
						
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">Copyright &copy; SIST, All rights
							reserved.</span>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="http://www.sist.co.kr/index.do"> SIST Homepage <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form> 
			</div>
		</div>
	</div>


	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>


</body>
</html>