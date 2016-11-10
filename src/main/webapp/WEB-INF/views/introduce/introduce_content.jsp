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
				<li><a href="#"><image class="center-block img-circle img-thumbnail img-responsive" style="width:25px;height:25px;" src="${pageContext.request.contextPath}/resources/images/person.jpg">&nbsp;&nbsp;&nbsp;신성철(7기)</a></li>
				<li id="first"><a href="main.jsp">홈</a></li>
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
				<li>
					<a href="#">커뮤니티</a>
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
						<h3>동문회칙</h3>
						<div id="write"></div>
					</div>
				</div>
				</section>

				<section class="board">
				<h1>
					<table class="box highlight" id="board_1">
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td>제목</td>
							<td colspan="4">제 4장 재정</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td>관리자</td>
							<td>작성일</td>
							<td>16.9.22</td>
						</tr>
						<tr>
							<td>첨부파일</td>
						</tr>
						<tr>
							<td colspan='4'
								style='padding-top: 20px; height: 200px; word-break: break-all;font-size : 14px;'>
								제19조(구분) 본회의 재정은 회원회비, 찬조금, 사업수입, 기타수입으로 구분한다.</br>
								제20조(회비) 본회의 회비는 해당 임기중 임원회(또는 운영위)에서 결정한다.</br>
								제21조(찬조) 본회는 회비 이외에 찬조금을 받을 수 있다.</br>
								제22조(사업수익) 본회는 수익사업을 통한 사업수입을 적립할 수 있다.</br>
								제23조(회계연도) 본회의 회계연도는 매년 총회연도에서 다음해 총회 전일까지로 한다.</br>
							</td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>


					</table>
					<div id="pa1">
						<ul>
							<li><input type="image" src="${pageContext.request.contextPath}/resources/images/list.jpg" style="border-radius: 3px"></li>
							<li><input type="image" src="${pageContext.request.contextPath}/resources/images/delete.jpg" style="border-radius: 3px"></li>
						</ul>
					</div>
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