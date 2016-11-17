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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/smarterditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/smarterditor/js/init.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/smarterditor/js/init.js" type="text/javascript"></script>
<title>학교소개</title>
<style>
textarea { width: 948px; height: 898px;background-color:transparent; }
</style>
</head>
<body>
<form method="post">
	<div id="page-wrapper">
	
	<c:import url="../menu.jsp"/>
	
		<section id="banner"> </section>
	
		<!-- Highlights -->
		<div id="cont">
			<!-- ********** -->
			
			<div class="int_top"></div>
			<!-- 왼쪽공백 -->
			<div class="int_left"></div>
			<div class="int_center" style="padding: 0;">
			
			<textarea rows="10" hegiht="898px" name="i_text" class ="smarteditor2"id="body"></textarea>
			</div>
			
			<!-- 오른쪽공백 -->
			<div class="int_right"></div>
			<br/>
			<button type="submit" class="btn btn-primary"style="position: relative;left:1200px;">
            <i class="icon-ok icon-white"></i>저장</button>
			
			
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
</form>
</body>
</html>
