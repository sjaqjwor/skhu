<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
		<sec:authorize access="hasRole('ROLE_USER') && !hasRole('ROLE_ADMIN')">
		<div id="cont">
			<!-- ********** -->
			<div class="int_top"></div>
			<!-- 왼쪽공백 -->
			<div class="int_left"></div>
			<div class="int_center">
				${introduce}
			</div>
			<!-- 오른쪽공백 -->
			<div class="int_right"></div>
			<!-- ********** -->
		</div>
		</sec:authorize>  
		    
		<sec:authorize access="hasRole('ROLE_ADMIN')">
		<div id="cont">
			<!-- ********** -->
			<div class="int_top"></div>
			<!-- 왼쪽공백 -->
			<div class="int_left"></div>
			<div class="int_center">
				${introduce}
			</div>
			
			<!-- 오른쪽공백 -->
			<div class="int_right"></div>
			<br/>
			<a href="/skhu/introduce/introduce1_edit.do"style="position: relative;left:1200px;" class="btn btn-info">
                <i class="icon-pencil icon-white"></i>수정</a>
			
			<!-- ********** -->
		</div>
		</sec:authorize> 
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