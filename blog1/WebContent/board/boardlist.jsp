<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v4.1.1">
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
<body>

<title>게시판 - ${ section }</title>
</head>
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

<br>
	<div>
		<div>
		
		</div>
		<div class="w3-main w3-margin-bottom" style="margin-left: 340px; margin-right: 40px; width: 60%;">
			<div class="w3-center w3-text-white w3-round">
				<h3 style="text-transform: uppercase">${ section }</h3>
			</div>
			<div>
				<c:if test="${ id != null }">
					<button type="button" class="btn btn-primary pull-right" onclick="location.href='./BoardWriteForm.do?section=${ section }'">
						<i class="fa fa-pencil"></i> 글 작성
					</button>
				</c:if>
			</div>
			<div class="table table-striped">
				<%-- 검색창 --%>
				<form action="/blog1/BoardList.do" method="get" class="w3-bar-item">
					<div>
						<input type="hidden" name="section" value="${ section }">
						<select name="sel">
							<option value="id">작성자</option>
							<option value="board_subject">제목</option>
						</select>
						<input type="text" name="find" required="">
						<button type="submit" class="btn btn-primary pull-right">
							<i class="fa fa-search w3-large"> 검색 </i>
						</button>
					</div>
				</form>
				<%-- 정렬 방법(추후 구현) --%>
				<div class="w3-bar-item w3-right">
					<c:choose>
						<c:when test="${ sel == null && find == null }">
							<small> <a href="#">최신순</a> <a href="#">조회순</a> <a href="#">추천순</a> <a href="#">댓글순</a>
							</small>
						</c:when>
						<c:otherwise>
							<small> <a href="#">최신순</a> <a href="#">조회순</a> <a href="#">추천순</a> <a href="#">댓글순</a>
							</small>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<%-- 게시물 목록 --%>
			<div>
				<%-- 게시물이 없으면 --%>
				<c:if test="${ count == 0 }">
					<div class="w3-container w3-border">게시물이 없습니다.</div>
				</c:if>
				<%-- 게시물이 있으면 --%>
				<c:if test="${ count > 0 && sel == null && find == null}">
					<c:forEach var="li" items="${ list }">
						<div class="w3-container w3-border w3-hover-border-red" style="margin: 0px">
							#${ li.board_no } <i class="fa fa-user"></i> <a href="#">${ li.id }</a> <br /> 
							<span class="w3-xlarge w3-text-indigo w3-hover-text-white"> 
							<a href="/blog1/BoardContent.do?section=${ section }&num=${ num }&no=${ li.board_no }" style="text-decoration: none;">${ li.board_subject }</a>
							</span>
							<div class="w3-right">
								<span><i class="fa fa-eye"></i>&nbsp; ${ li.readcount }</span>&nbsp; <span><i class="fa fa-calendar"></i>&nbsp; <fmt:formatDate value="${li.write_date}" pattern="yy-MM-dd" /></span>
							</div>
						</div>
					</c:forEach>
				</c:if>
				<%-- 검색하였을 경우 일치하는 조건이 없다면 --%>
				<c:if test="${ fcount == 0 && sel != null && find != null }">
					검색어와 일치하는 게시물이 없습니다.
				</c:if>
				<%-- 검색어와 일치하는 게시글이 있으면 --%>
				<c:if test="${ fcount > 0 && sel != null && find != null}">
					<c:forEach var="li" items="${ flist }">
						<div class="w3-container w3-border w3-hover-border-red" style="margin: 0px">
							#${ li.board_no } <i class="fa fa-user"></i><a href="#">${ li.id }</a> <br /> 
							<span class="w3-xlarge w3-text-indigo w3-hover-text-white"> 
							<a href="#" style="text-decoration: none;">${ li.board_subject }</a>
							</span>
							<div class="w3-right">
								<span><i class="fa fa-eye"></i>&nbsp;  ${ li.readcount }</span>&nbsp;  <span><i class="fa fa-calendar"></i>&nbsp;  <fmt:formatDate value="${li.write_date}" pattern="yy-MM-dd" /></span>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
			
			<div class="w3-center w3-border">
				<div class="w3-bar">
					<%-- 검색하지 않았을 경우 페이징 처리 --%>
					<c:if test="${ pageCount !=0 && sel == null && find == null }">
						<c:if test="${ startPage > 10 }">
							<a href="/blog1/BoardList.do?section=${ section }&num=${ startPage - 10 }" class="w3-bar-item w3-button w3-small">이전</a>
						</c:if>
						<c:forEach var="i" begin="${ startPage }" end="${ endPage }">
							<c:choose>
								<c:when test="${ i == num }">
									<span class="w3-bar-item w3-button w3-small"><b>${ i }</b></span>
								</c:when>
								<c:otherwise>
									<a href="/blog1/BoardList.do?section=${ section }&num=${ i }" class="w3-bar-item w3-button w3-small">${ i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${ pageCount > endPage }">
							<a href="/blog1/BoardList.rcd?section=${ section }&num=${ startPage + 10 }" class="w3-bar-item w3-button w3-small">다음</a>
						</c:if>
					</c:if>
					
					<%-- 검색어가 있을 경우 페이징 처리 --%>
					<c:if test="${ pageCount !=0 && sel != null && find != null }">
						<c:if test="${ startPage > 10 }">
							<a href="/blog1/BoardList.do?section=${ section }&num=${ startPage - 10 }&sel=${ sel }&find=${ find }" class="w3-bar-item w3-button w3-small">이전</a>
						</c:if>
						<c:forEach var="i" begin="${ startPage }" end="${ endPage }">
							<c:choose>
								<c:when test="${ i == num }">
									<span class="w3-bar-item w3-button w3-small"><b>${ i }</b></span>
								</c:when>
								<c:otherwise>
									<a href="/blog1/BoardList.do?section=${ section }&num=${ i }&sel=${ sel }&find=${ find }" class="w3-bar-item w3-button w3-small">${ i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${ pageCount > endPage }">
							<a href="/blog1/BoardList.do?section=${ section }&num=${ startPage + 10 }&sel=${ sel }&find=${ find }" class="w3-bar-item w3-button w3-small">다음</a>
						</c:if>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>