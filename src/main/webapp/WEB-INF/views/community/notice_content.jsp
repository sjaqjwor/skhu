<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />

<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 
	
<title>성공회대 총동문회</title>
</head>
<script type="text/javascript">  
$(function(){
    var $win = $(window);
    var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
 
    /*사용자 설정 값 시작*/
    var speed          = "fast";     // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
    var easing         = 'swing'; // 따라다니는 방법 기본 두가지 linear, swing
    var $layer         = $('.me'); // 레이어 셀렉팅
    var layerTopOffset = 0;   // 레이어 높이 상한선, 단위:px
    $layer.css('position', 'relative');
    /*사용자 설정 값 끝*/
 
    // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
    if (top > 0 )
        $win.scrollTop(layerTopOffset+top);
   
 
    //스크롤이벤트가 발생하면
    $(window).scroll(function(){
        yPosition = $win.scrollTop();
        if (yPosition < 0)
        {
            yPosition = 0;
        }
        $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
    });
});
</script> 
<body>
	<div id="page-wrapper">

	<c:import url="../menu.jsp"/>
	
		<section id="banner"> </section>

		<!-- Highlights -->
		<section class="wrapper style1">
		<div class="container">
			<div class="row 200%">
			<section class="me">
				<div class="box highlight">
				<div id="right_section">
				<i class="icon major fa-smile-o"></i>
				<ul>
				<h3 id="h_3">Community</h3>
				<li>자유게시판</li>
				<li>공지사항</li>
				</ul>
				</div>
				</div>
				</section>
				<section class="board">
				<div class="box highlight">
					<div class="boad">
						<h3>공지사항</h3>
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
							<td colspan="4">안녕하세요 저는 이승기 입니다</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td>이승기</td>
							<td>작성일</td>
							<td>16.9.25</td>
						</tr>
						<tr>
							<td>첨부파일</td>
						</tr>
						<tr>
							<td colspan='4'
								style='padding-top: 20px; height: 200px; word-break: break-all;'>
								안녕하세요</br> 저는 이승기입니다. 현제 성공회대 소프트웨어공학과 12학번으로 재학중입니다. 또한 소프트웨어 공학과 축구
								주장으로도 활동하고 있습니다.</br> 잘부탁드립니다.</br> 감사합니다.</br> 수고하세요</br>
								안녕하세요</br> 저는 이승기입니다. 현제 성공회대 소프트웨어공학과 12학번으로 재학중입니다. 또한 소프트웨어 공학과 축구
								주장으로도 활동하고 있습니다.</br>
								안녕하세요</br> 저는 이승기입니다. 현제 성공회대 소프트웨어공학과 12학번으로 재학중입니다. 또한 소프트웨어 공학과 축구
								주장으로도 활동하고 있습니다.</br>
								안녕하세요</br> 저는 이승기입니다. 현제 성공회대 소프트웨어공학과 12학번으로 재학중입니다. 또한 소프트웨어 공학과 축구
								주장으로도 활동하고 있습니다.</br>
							</td>
						</tr>
						
						<tr>
						
						<td colspan="4">
							<textarea  maxlength="6000"style="resize:none;width:70%; margin-top:2%; margin-left:3%;overflow: hidden;line-height: 14px;height: 60px;"></textarea>
							<div class="my_up">
								<a>등록</a>
							</div>
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