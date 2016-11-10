<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/user.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<title>성공회대 총동문회</title>
</head>
<body>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><p id="logo">함께 맞는 비</p></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current"><a href="#"><image class="center-block img-circle img-thumbnail img-responsive" style="width:25px;height:25px;" src="${pageContext.request.contextPath}/resources/images/person.jpg">&nbsp;&nbsp;&nbsp;신성철(7기)</a></li>
								<li id="first"><a>홈</a></li>
								<li>
									<a href="#">총동문회</a>
									<ul>
										<li><a href="#">기수별 동문명단</a></li>
										<li><a href="#">동문회 임원명단</a></li>
										<li><a href="#">즐겨찾기</a></li>
									</ul>
								</li>
								<li>
									<a href="#">안내</a>
									<ul>
										<li><a href="#">학교소개</a></li>
										<li><a href="#">총동문회 회칙</a></li>
										<li><a href="#">역대 총장님</a></li>
										<li><a href="#">역대 동문회장</a></li>
									</ul>
								</li>
								<li>
									<a href="#">커뮤니티</a>
									<ul>
										<li><a href="#">공지사항</a></li>
										<li><a href="#">자유게시판</a></li>
										<li><a href="#">동문광고</a></li>
									</ul>
								</li>  
							</ul>
						</nav>

				</div>
<section class="userEdit">


	<div class="container">
	<div class="subhead">
			<div class="box highlight">
					<div class="boad">
						<h3 >회원정보 수정</h3>
					<div id="write"><script>fk()</script></div>
				</div>
			</div>
	    <hr style="	height: 5px; background-color: #b7822b;">
	    
	   </div>
	   <form class="form-horizontal">
	   
	   
	  <div id="image_box" class="col-md-3">	  
		   <div class="image_set">
	       	 <image class="center-block img-circle img-thumbnail img-responsive" style="display:block; width:200px;height:200px;" src="${pageContext.request.contextPath}/resources/images/person.jpg">
	       	 
	        <button id="imageButton" class="btn btn-success">사진 업로드</button>
	      </div>
	  </div>
	 <div class="col-md-9 personal-info">
		
	  
	  	<div class="subbody" >
			
	  <fieldset>
	    
	    <div class="control-group">
	      <!-- Username -->
	      <label class="control-label">이름</label>
	      <div class="controls">
	        <input type="text" value="신성철" class="input-xlarge" style="height:25px;">
	      </div>
	    </div>
	 
	    <div class="control-group">
	      <!-- E-mail -->
	      <label class="control-label">기수</label>
	      <div class="controls">
	        <input type="text" value="7기" class="input-xlarge" style="height:25px;">
	      </div>
	    </div>
	    
	    <div class="control-group">
	      <!-- E-mail -->
	      <label class="control-label" for="name">소속지위</label>
	      <div class="controls">
	        <input type="text" value="학생" class="input-xlarge" style="height:25px;">
	      </div>
	    </div>
	    
	    <div class="control-group">
	      <!-- E-mail -->
	      <label class="control-label">휴대전화</label>
	      <div class="controls">
	        <input type="text" value="010-3506-3470" class="input-xlarge" style="height:25px;">
	      </div>
	    </div>
	 
	    <div class="control-group">
	      <!-- Password-->
	      <label class="control-label">이메일</label>
	      <div class="controls">
	        <input type="text" value="sungchul33@naver.com" class="input-xlarge" >
	      </div>
	    </div>
	     <div class="control-group">
	      <!-- Button -->
	      <div class="controls">
	        <button id="saveButton" class="btn btn-primary">저장</button>
	      </div>
	    </div>
	    
 
  	
  </fieldset>

		  	
  	</div> 
  	
  	<hr style="	height: 5px; background-color: #b7822b;">
  	</div>
  	</form>
</div>

    </section>
	


			<!-- Footer -->
				<div id="footer">

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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