<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script
	src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css" />
<title>Login</title>
</head>
<body>
	<br>
	<br>
	<div class="container">
		<div class="jumbotron">
			<h1 class="display-4">오묘한맛's Blog</h1>
			<p class="lead">오묘한맛의 블로그입니다.</p>
		</div>
		<div class="container">

			<div class="col-lg-4"></div>

			<div class="col-lg-4">

				<!-- 점보트론 -->

				<div class="jumbotron" style="padding-top: 20px; width: 850px;">

					<!-- 로그인 정보를 숨기면서 전송post -->

				<div class="w3-container">
			<form action="/blog1/LoginAction.do" method="post">
			<div class="form-group">
				<input class="form-control" style="width:50%" type="text" name="id" id="id" required="" placeholder="아이디" autofocus>
				</div>
				<div class="form-group">
				<input class="form-control" style="width:50%" type="password" name="passwd" id="passwd" required="" placeholder="비밀번호">
				</div>
				<div>
				<input class="btn btn-primary" type="submit" value="로그인">
				<input class="btn btn-primary" type="button" value="ID/PW 찾기" onclick="location.href=''">
							<a class="float-right" href="/blog1/MemberJoinForm.do">회원가입</a>
</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 애니매이션 담당 JQUERY -->

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<!-- 부트스트랩 JS  -->

	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>



</body>

</html>