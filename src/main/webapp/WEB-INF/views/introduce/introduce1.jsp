<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/introduce.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<title>학교소개</title>

</head>
<body>

	<div id="page-wrapper">
	
	<c:import url="../menu.jsp"/>
	
		<section id="banner"> </section>

		<!-- Highlights -->
		<div id="cont">
			<!-- ********** -->
			<div class="int_top"></div>
			<!-- 왼쪽공백 -->
			<div class="int_left"></div>
			<div class="int_center">
				<dt style="font-size:25px">사업 안내</dt><br/>
				<dt>1. 인문공부 연 2회(3월, 9월) 실시</dt>
				<dd>1) CEO와 함께하는 ’인문 공부’ 입문과정(기업인, 전문직 종사자 대상)</dd>
				<dd>2) CEO와 함께하는 ’인문 공부’ 심화과정(입문과정 졸업생 대상)</dd>
				<dt>2. 인문학 특강</dt>
				<dd>- 사회와의 소통과 성찰을 목표로 월 1회 인문공부 동문을 중심으로 진행</dd>
				<dd>- 졸업생 대상 하계, 동계 특강</dd>
				<dt>3. 기업체 인문학 컨설팅 운영</dt>
				<br/><br/>
				<dt style="font-size:25px">조직 안내</dt><br/>
				<dt><사무국></dt>
				<dd>- 원  장 : 김창남 02-2610-4339</dd>
				<dd>- 부원장 : 임정아 02-2610-4810 / vision@skhu.ac.kr</dd>
				<dd>- 직  원 : 유수정 02-2610-4317 / human4317@daum.net</dd>
				<dt><담임교수></dt>
				<dd>- 박경태 성공회대학교 사회과학부 교수</dd>
				<dt><기획위원></dt>
				<dd>- 정윤수 한신대학교 정조교양대학 교수</dd><br/><br/>
				<dt style="font-size:25px">오시는길</dt>
				<p class="map"><img src="${pageContext.request.contextPath}/resources/images/map.png" style="width:400px;height:270px;"/></p>
				<dd>- 주소 : 서울시 구로구 연동로 320 성공회대학교 구두인관 1층 (우08359)</dd>
				<dd>- 전화 : 02-2610-4317 / 팩스 : 02-2610-4737</dd>
				<dd>- 오시는 길 : 1호선 온수역 1번 출구(도보 10분), 7호선 온수역 2번 출구(도보 10분)</dd>
			</div>
			<!-- 오른쪽공백 -->
			<div class="int_right"></div>
			<!-- ********** -->
		</div>

		<!-- Footer -->
		<div id="footer">

			<!-- Icons -->
			<ul class="icons">
				
			</ul>

			<!-- Copyright -->
			<div class="copyright">
				<ul class="menu">
					<li>&copy; Untitled. All rights reserved</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>

		</div>
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