<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />

<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<title>성공회대 총동문회</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
	$(function() {
		$("#p2").click(function() {
			location.href = "../introduce/introduce_content.jsp"

		});
	});
</script>
<script>
	var fk = function() {
		var ac = "";
		if (matchMedia("screen and (max-width: 840px)").matches) {
			ac = "+"
			$("#write")
					.html("<img src=${pageContext.request.contextPath}/resources/images/pencil.png style=height:30px>");
		} else {
			ac = "글쓰기"
			$("#write").html("<input type=image src=${pageContext.request.contextPath}/resources/images/write.jpg>");
		}
	}
</script>
<script>
	$(function() {
		$("#write").click(function() {
			location.href = "../introduce/introduce_write.jsp"
		});

	});
</script>
</head>
<body>
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Logo -->
			<h1>
				<p id="logo">인문학습원</p>
			</h1>

			<!-- Nav -->
			<nav id="nav">
			<ul>
				<li><a href="#"><image class="center-block img-circle img-thumbnail img-responsive"	style="width:25px;height:25px;" src="${pageContext.request.contextPath}/resources/images/person.jpg">&nbsp;&nbsp;&nbsp;신성철(7기)</a></li>
				<li id="first"><a href="../main.jsp">홈</a></li>
				<li><a href="#">총동문회</a>
					<ul>
						<li><a href="#">기수별 동문명단</a></li>
						<li><a href="#">동문회 임원명단</a></li>
						<li><a href="#">즐겨찾기</a></li>
					</ul></li>
				<li class="current"><a href="#">안내</a>
					<ul>
						<li><a href="../introduce/introduce1.jsp">인문학습원 소개</a></li>
						<li><a href="../introduce/introduce2.jsp">전,현 원장 인삿말</a></li>
						<li><a href="../introduce/introduce3.jsp">역대 총장님</a></li>
						<li><a href="../introduce/introduce4.jsp">총동문회 회칙</a></li>
					</ul></li>
				<li><a href="#">커뮤니티</a>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">자유게시판</a></li>
						<li><a href="#">동문광고</a></li>
					</ul></li>
			</ul>
			</nav>

		</div>

		<section id="banner"> </section>

		<!-- Highlights -->
		<section class="wrapper style1">
		<div class="container">
			<div class="row 200%">
				<section class="board">

				<div class="box highlight">
					<div class="boad">
						<div class="col-lg-12">
							<h3 class="page-header">동문회칙</h3>
						</div>
						<div id="write">
							<script>
								fk()
							</script>
						</div>
					</div>
				</div>

				</section>

				<section class="board"">
				<h1>
					<table class="box highlight" id="board_">
					
						<tr>
							<td colspan="5"></td>
						</tr>
						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>작성자</td>
							<td>작성일</td>
							<td>조회수</td>
						</tr>
						<tr id="p2">
							<td>4</td>
							<td>제 4장 재정</td>
							<td>관리자</td>
							<td>16.9.22</td>
							<td>12</td>
						</tr>
						<tr>
							<td>3</td>
							<td>제 3장 회의</td>
							<td>관리자</td>
							<td>16.9.21</td>
							<td>21</td>
						</tr>
						<tr>
							<td>2</td>
							<td>제 2장 회원 및 임원</td>
							<td>관리자</td>
							<td>16.9.20</td>
							<td>131</td>
						</tr>
						<tr>
							<td>1</td>
							<td>제 1장 총칙</td>
							<td>관리자</td>
							<td>16.9.19</td>
							<td>229</td>
						</tr>

					</table>
					<div id="pa">
						<ul>
							<li>1</li>

						</ul>
					</div>
					<form id="search">
						<select id="myselect">
							<option>제목</option>
							<option>글쓴이</option>
							<option>조화수</option>
						</select> <input type="text" value="" /> <input type="image"
							src="${pageContext.request.contextPath}/resources/images/search.jpg" id="my">
					</form>
				</section>


			</div>

		</div>

		</section>

	</div>

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
</body>
</html>