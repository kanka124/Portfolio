<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<meta name="generator" content="Jekyll v4.1.1">
<title>글 작성 - ${ param.section }</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<%-- summernote 라이브러리 추가 --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>

<title>오묘한맛's 블로그</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/album/">

<!-- Bootstrap core CSS -->
<link href="./assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="./css/album.css" rel="stylesheet">
</head>
<script>
	<%-- form의 textarea에 summernote 적용 --%>
	$(document).ready(function() {
		$('#content').summernote({
			height: 700,
			fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
			fontNamesIgnoreCheck : [ '맑은고딕' ],
			focus: true
		});
	});
</script>

<body>
<%
	//로긴 한사람이면 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
	
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>

	<header>
		<div class="collapse bg-dark" id="navbarHeader">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-7 py-4">
						<h4 class="text-white">오묘한맛'Blog</h4>
						<p class="text-muted">안녕하세요 오묘한맛's 블로그입니다. 제 블로그에 방문해주셔서
							감사합니다. 게임,스포츠,포트폴리오를 정리한 저의 블로그입니다.</p>
					</div>
					<div class="col-sm-4 offset-md-1 py-4">
						<h4 class="text-white">메뉴</h4>
						<ul class="list-unstyled">
							<li><a href="/blog1/BoardList.do?section=menu1" class="text-white">개인적인 생각</a></li>
							<li><a href="/blog1/BoardList.do?section=menu2" class="text-white">게임 게시판</a></li>
							<li><a href="/blog1/BoardList.do?section=menu3" class="text-white">스포츠 게시판</a></li>
							<li><a href="/blog1/BoardList.do?section=menu4" class="text-white">맛집 후기 게시판</a></li>
							<li><a href="/blog1/BoardList.do?section=menu5" class="text-white">포트 폴리오</a></li>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container d-flex justify-content-between">
				<a href="#" class="navbar-brand d-flex align-items-center"> 
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="none" stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2" aria-hidden="true"
						class="mr-2" viewBox="0 0 24 24" focusable="false">
						<path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z" />
						<circle cx="12" cy="13" r="4" /></svg> <strong>오묘한맛's Blog</strong>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navbarHeader" aria-expanded="false"
					aria-label="Toggle navigation"
					onclick="location='/blog1/LoginForm.do'">로그인</button>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navbarHeader" aria-expanded="false"
					aria-label="Toggle navigation" onclick="location='/blog1/MemberUpdateForm.do'">회원정보</button>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navbarHeader" aria-expanded="false"
					aria-label="Toggle navigation" onclick="location='/blog1/LogOut.do'">로그아웃</button>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarHeader" aria-controls="navbarHeader"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
		</div>
	</header>

	<div>
		<div>
		</div>
		<div class="w3-margin-top w3-main" style="margin-left: 340px; margin-right: 40px; width: 60%;">
			<form action="/blog1/BoardUpdate.do" method="post">
				<div class="w3-center w3-text-white w3-round">
					<h3 style="text-transform: uppercase">${ param.section }</h3>
				</div>
				<div class="w3-margin-bottom w3-border">
					<input type="text" name="board_subject" class="w3-input w3-border w3-white" autofocus placeholder="subject" value="${ content.board_subject }">
				</div>
				<div>
					<textarea name="board_content" id="content">${ content.board_content }</textarea>
				</div>
				<div align="center">
					<input type="hidden" name="board_no" value="${ content.board_no }">
					<input type="hidden" name="num" value="${ param.num }">
					<input type="hidden" name="section" value="${ param.section }">
					<input type="submit" value="확인" class="w3-button w3-white w3-round-small"> &nbsp;
					<input type="button" value="취소" class="w3-button w3-white w3-round-small" onclick="history.go(-1)">
				</div>
			</form>
		</div>
	</div>
</body>
</html>