<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>성공회대 총동문회</title>
	<meta charset="UTF-8" />
	
	<!--[if lte IE 8]><script src="res/index_assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/index_assets/css/main.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="/res/index_assets/css/ie8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="/res/index_assets/css/ie9.css" /><![endif]-->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/index_assets/js/index.js"></script>
	</head>
	<body class="loading">
	
		<div id="wrapper">
			<div id="bg"></div>
			<div id="overlay"></div>
			<div id="main">

				<!-- Header -->
					<sec:authorize access="isAnonymous()">
					<c:if test="${ param.error == null }">
					<header id="header">
					
						<h1 id="title">성공회대학교 총동창회</h1>
						
						<nav>
							<ul>
								<li><a href="#" id="f1"></a></li>
								<li><a href="#" id="f2"></a></li>
								<li><a href="#" id="f3"></a></li>
								<li><a href="#" id="f4"></a></li>
								
							</ul>
						</nav>
					</header>
				   </c:if>
				   </sec:authorize>
		
			</div>
		</div>
		
		
		<!--login-->
		  <div class="demo" style="display:none;">
		    <div class="login" >
		      <div class="login__check"></div>
		      <form class="login__form">
		        <div class="login__row">
		          <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
		            <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
		          </svg>
		         
		          <input type="text" class="login__input name" name="loginId" placeholder="휴대폰번호"/>
		        </div>
		        <div class="login__row">
		          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
		            <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
		          </svg>
		          <input type="password" class="login__input pass" name="password" placeholder="비밀번호"/>
		        </div>
		        <div class="ke" style="color:red; font-size:14px; margin-top:12px; visibility:hidden">아이디 또는 비밀번호를 다시 확인하세요.</div>
					 <div class="ke" style="color:red; font-size:14px; visibility:hidden">등록되지 않은 아이디이거나, 아이디 또는 비밀번호를 잘못 입력하셨습니다</div>
		        <button type="button" class="login__submit" id="log">로그인</button>
		        <button type="button" class="login__submit" id="close">닫기</button>
		        
		      </form>
		    </div>
		      <div class="app__logout" style="display:none;">
		        <svg class="app__logout-icon svg-icon" viewBox="0 0 20 20">
		          <path d="M6,3 a8,8 0 1,0 8,0 M10,0 10,12"/>
		        </svg>
		      </div>
		    </div>
		
		      <div class="app__logout" style="display:none;">
		        <svg class="app__logout-icon svg-icon" viewBox="0 0 20 20">
		          <path d="M6,3 a8,8 0 1,0 8,0 M10,0 10,12"/>
		        </svg>
		      </div>
		    </div>
		
		
		 <div class="demo_" style="display:none;">
		    <div class="login" >
		      <div class="login__check" style="top:12rem;!important"></div>
		      <form class="login__form" method="POST" action="confirm_password.do"
		       style="top:40% !important;">
		        <div class="login__row">
		          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
		            <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
		          </svg>
		         
		          <input type="password" class="login__input name" name="password_1" placeholder="비밀번호"/>
		        </div>
		        <div class="login__row">
		          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
		            <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
		          </svg>
		          <input type="password" class="login__input pass" name="password_2" placeholder="비밀번호"/>
		        </div>
		        <c:if test="${not empty p_error }">
		         	<div>다시 입력</div>
		        </c:if>
		        <button type="submit" class="login__submit" style="margin-top:40%;">확인</button>
		       
		        
		      </form>
		      </div>
		      </div>
		
		
		
		<!--[if lte IE 8]><script src="res/index_assets/js/ie/respond.min.js"></script><![endif]-->
		<script>
			window.onload = function() { document.body.className = ''; }
			window.ontouchmove = function() { return false; }
			window.onorientationchange = function() { document.body.scrollTop = 0; }
		</script>
	</body>
</html>