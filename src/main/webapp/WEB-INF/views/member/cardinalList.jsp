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
	<!--[if lte IE 8]><link rel="stylesheet" href="../assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="../assets/css/ie9.css" /><![endif]-->
	
	<!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/round-about.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
    <link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<title>성공회대 총동문회</title>
<style>
.center-block {
    display: inline-block;
    margin-right: auto;
    margin-left: auto;
}
.img-thumbnail {
padding:0;
}

#nav > ul > li.current {
		font-weight: 600;
}

		#nav > ul > li.current:before {
			-moz-transform: rotateZ(45deg);
			-webkit-transform: rotateZ(45deg);
			-ms-transform: rotateZ(45deg);
			transform: rotateZ(45deg);
			width: 0.75em;
			height: 0.75em;
			content: '';
			display: block;
			position: absolute;
			bottom: -0.7em;
			left: 50%;
			margin-left: -0.375em;
			background-color: #b7822b;
			background-image: url("${pageContext.request.contextPath}/resources/images/bg01.png");
		}

		#nav > ul > li.current a {
			color: #fff;
		}

</style>
</head>

<body>
		<div id="page-wrapper">

	<c:import url="../menu.jsp"/>				
	
				<section id="banner">
				</section>

			<!-- Highlights -->
				<section class="wrapper style1">
					<div class="container">
						<div class="container main">
				
        

        <!-- Team Members Row -->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">&nbsp기수별 동문 명단</h3>
									<form class="searchForm" style="margin-left: 12px; margin-top: -15px">
										<input type="text" class="searchMem" id="search" style="width:250px;height:25px;">
										</input>
										<button type="submit" class="btn btn-small search" style="width:50px; margin-bottom:10px">검색</button>
									</form>
                
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h3>정보석
                    <small>백수</small>
                </h3>
                <p>술과 당구를 좋아하는 백수..<br/>에서 조금씩 사람이 되어가는중</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h3>이준우
                    <small>팀장</small>
                </h3>
                <p>팀장답게 팀원중에 가장 아재요..</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h3>홍길동
                    <small>Job Title</small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h3>이승기
                    <small>css마스터</small>
                </h3>
                <p>이번 플젝의 html-css를 책임지고 있는 능력자 <strike>롤쟁이</strike></p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h3>신성철
                    <small>편돌이</small>
                </h3>
                <p>주말에 편의점에서 놀면서 시급 만원씩 챙겨감<br/>깡패세요?</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
                <h3>홍길동
                    <small>Job Title</small>
                </h3>
                <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
            </div>
        </div>

        <hr>

        <!-- Footer -->
        
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Boseok</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        
        </div>
</div>
					 
					 
					
					</div>
				</section>
			<!-- Footer -->
			<%--
				<div id="footer">

					<!-- Icons -->
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
							<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>

				</div>
			 --%>
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