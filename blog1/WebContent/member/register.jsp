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
<title>회원 가입</title>
</head>
<body>
	<br>
	<br>
	<div class="container">
		<div class="jumbotron">
			<h1 class="display-4">오묘한맛's 블로그</h1>
			<p class="lead">안녕하세요 오묘한맛의 블로그입니다.</p>
		</div>
		<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<!-- 점보트론 -->
			<div class="jumbotron" style="padding-top: 20px; width: 850px;" >
				<!-- 로그인 정보를 숨기면서 전송post -->
		<h3>회원가입</h3>
		<div>
			<div class="w3-container w3-quarter w3-card-2">
				<div>
					<h5>이메일로 가입하기</h5>
				</div>
				<form action="/blog1/MemberJoin.do" method="post">
					<fieldset>
										<div class="form-group">
					
						<input type="text"   style="width:90%" name="id" id="id" required="" placeholder="아이디" class="form-control" ></div>
											<div class="form-group">
						
						<input type="password"  style="width:90%" name="passwd" id="passwd" required="" placeholder="비밀번호" class="form-control" ></div>
											<div class="form-group">
						
						<input type="password"  style="width:90%" name="passwd2" id="passwd2" requured="" placeholder="비밀번호 확인" class="form-control" ></div>
											<div class="form-group">
						
						<input type="text"  style="width:90%" name="name" id="name" required="" placeholder="이름" class="form-control" ></div>
											<div class="form-group">
						
						<input type="text"  style="width:90%" name="email" id="email" required="" placeholder="이메일" class="form-control" ></div>
											<div class="form-group">
						
						<input type="text"  style="width:90%" name="nickname" id="nickname" required="" placeholder="닉네임" class="form-control" ></div>
					</fieldset>
					<input type="submit" class="btn btn-primary form-control" value="회원 가입">
				</form>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<!-- 애니매이션 담당 JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../assets/dist/js/bootstrap.js"></script>
</body>
</html>