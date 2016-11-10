<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/register.css" />
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<title>성공회대 총동문회</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="me.js"></script>
</head>
<body>
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Logo -->
			<h1>
				<p id="logo">함께 맞는 비</p>
			</h1>

			<!-- Nav -->
			 <!-- Nav -->
         <nav id="nav">
         <ul>
            <li><a href="#"><image class="center-block img-circle img-thumbnail img-responsive" style="width:25px;height:25px;" src="${pageContext.request.contextPath}/resources/images/person.jpg">&nbsp;&nbsp;&nbsp;관리자</a></li>
            <li id="first" class="current"><a href="main.jsp">홈</a></li>
            <li><a href="#">총동문회</a>
               <ul>
                  <li><a href="#">기수별 동문명단</a></li>
                  <li><a href="#">동문회 임원명단</a></li>
                  <li><a href="#">즐겨찾기</a></li>
               </ul></li>
            <li><a href="#">안내</a>
               <ul>
                  <li><a href="#">학교소개</a></li>
                  <li><a href="#">총동문회 회칙</a></li>
                  <li><a href="#">역대 총장님</a></li>
                  <li><a href="#">역대 동문회장</a></li>
               </ul></li>
            <li><a href="#">커뮤니티</a>
               <ul>
                  <li><a href="#">공지사항</a></li>
                  <li><a href="#">자유게시판</a></li>
                  <li><a href="#">동문광고</a></li>
               </ul></li>
            <li><a href="#">업무<span id="reqBadge" class="badge">3</span></a>
              <ul>
                <li><a href="#">쪽지함<span id="reqBadge" class="badge">2</span></a></li>
                <li><a href="#">회원등록</a></li>
                <li><a href="#">아이디변경<span id="reqBadge" class="badge">1</span></a></li>
              </ul></li>
         </ul>
         </nav>

		</div>
		<section class="wrapper style1">
		<div class="container">
		<div class="demo" style="display:none;">
		    <div class="login">
		      <div class="login__form">
		      <input type="checkbox" style="margin-left:10%;">문자메시지
		      <input type="checkbox">메일
		        <div class="login__row">
		          
		          <textarea rows="10" cols="100" style="width:80%;margin-left:65px; background-color:white"></textarea>
		        </div>
		        <button type="button" class="login__submit">확인</button>
		      </div>
		    </div>
		      <div class="app__logout" style="display:none;">
		      </div>
		    </div>
			<div class="row 200%" >
			<form method="post" action="fileUpload.do"
						enctype="multipart/form-data" class="mes1">
							<input type="checkbox" style="margin-left:14px;-webkit-transform: scale(1.2);">
							<span>전체</span>
							<select>
								<option>7기</option>
								<option>기수</option>
								<option>임원직</option>
								
							</select>
							<input type="text" style="width:155px; height:30px;"/>
							
				<section class="message">
				
				<div class="box highlight">
					

						
						
							<table>
							
								<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person.jpg"></td>
									<td>7기 신성철</td>
									<td>회장</td>
									
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person10.jpg"></td>
									<td>7기 김만기</td>
									<td>부회장</td>
									
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person11.jpg"></td>
									<td>7기 원일준</td>
									<td>일반</td>
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person12.jpg"></td>
									<td>7기 이준우</td>
									<td>일반</td>
									
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person13.jpg"></td>
									<td>7기 강철진</td>
									<td>일반</td>
									
								</tr>
								
							</table>
						

					
				</div>
				
				</section>
				 <button class="bt2"><i class="fa fa-arrow-right"></i></button>
				

				</form>
				<form class="me3">
					<input type="checkbox" style="margin-left:14px;margin-bottom:11px;-webkit-transform: scale(1.2);">
							<span>전체</span>
					<section class="message1">
					
					<div class="box">
						<table class="re2">
							<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person.jpg"></td>
									<td>7기 신성철</td>
									<td>회장</td>
									
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person10.jpg"></td>
									<td>7기 김만기</td>
									<td>부회장</td>
									
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person11.jpg"></td>
									<td>7기 원일준</td>
									<td>일반</td>
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person12.jpg"></td>
									<td>7기 이준우</td>
									<td>일반</td>
									
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td><image class="center-block img-circle img-thumbnail img-responsive" style="width:60px;height:60px;" src="${pageContext.request.contextPath}/resources/images/person13.jpg"></td>
									<td>7기 강철진</td>
									<td>일반</td>
									
								</tr>
								

						</table>
					</div>

					</section>
					<div class="re1">
					<input type="button" style="background-color:white
					;border:1px solid #ccc9c9; font-size:2px;color:black;" value="삭제" >
					<input type="button" class="f2"style="background-color:white
					;border:1px solid #ccc9c9; font-size:2px;color:black;" value="보내기" >
					
					
					</div>
				</form>




			</div>
		</div>
	
		</section>



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