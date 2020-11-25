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
		<h3>정보수정</h3>
		<div class="w3-container">
			<form action="/blog1/MemberUpdate.do" method="post">
				<div class="form-group">
					<div class="w3-col" style="width:70px">
						아이디 : 
					</div>
    				<div class="form-group">
						<input type="text" value="${ member.id }" disabled="disabled" class="form-control">
    				</div>
				</div>
				<input type="hidden" name="id" value="${ member.id }">
				<div class="form-group">
					<div class="w3-col" style="width:70px">
						이름 : 
					</div>
    				<div class="form-group">
						<input type="text" name="name" value="${ member.name }" required="required" class="form-control">
    				</div>
				</div>
				<div class="form-group">
					<div class="w3-col" style="width:70px">
						닉네임 : 
					</div>
    				<div class="form-group">
						<input type="text" name="nickname" value="${ member.nickname }" required="required" class="form-control">
    				</div>
				</div>
				<div class="form-group">
					<div class="w3-col" style="width:70px">
						이메일 : 
					</div>
    				<div class="form-group">
						<input type="text" name="email" value="${ member.email }" required="required" class="form-control">
    				</div>
				</div>
				<div>
				<input type="submit" value="수정" class="btn btn-primary form-control">
				</div>
				<div>
				<input type="button" value="비밀번호 변경" onclick="location.href='/expro/PasswdChangeForm.do'" class="btn btn-primary form-control">
				</div>
				<div>
				<input type="button" value="탈퇴" onclick="location.href='/expro/WithdrawalForm.do'" class="btn btn-primary form-control">
			</div>
			</form>
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