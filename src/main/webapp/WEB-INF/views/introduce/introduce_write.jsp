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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<title>성공회대 총동문회</title>
</head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 
<script type="text/javascript">
   $(function() {
      var editor_object = [];

      nhn.husky.EZCreator.createInIFrame({
         oAppRef : editor_object,
         elPlaceHolder : "smt",
         sSkinURI : "${pageContext.request.contextPath}/resources/smarteditor/SmartEditor2Skin.html",
         htParams : {
            bUseToolbar : true,
            bUseVerticalResizer : false,
            bUseModeChanger : true,
         }
      });

      $("button").click(function() {
         editor_object.getById["smt"].exec("UPDATE_CONTENTS_FIELD",[]);
         $("#board_message").submit();
      })
   
   })
</script>
<script>
var fk=function () {
	var ac="";
	if (matchMedia("screen and (max-width: 840px)").matches) {
		 ac="+"
			 $("#smart_editor2_content").css("width","310px");
		} else {
		  ac="글쓰기"
			  $("#smart_editor2_content").css("width","auto");
		}
}
</script>
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
									<h3 >동문회칙</h3>
					<div id="write">
				</div>
				</div>
				</section>

				<section class="board">

				<form>
					<table class="box highlight" id="board_2">
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input type="text"></td>
							<td style="text-align:right;">작성자</td>
						<td>관리자</td>
						</tr>
						<tr>
							<td class="file_">첨부파일</td>
							<td class="filebox"><button for="ex_file">파일찾기..</button>
 							 <input type="file" id="ex_file"> </td>
							
						</tr>
						<tr>
							<td  colspan="4"><textarea rows="10" cols="100" name="smt" id="smt"></textarea>
							</td>
						
						
						<tr>

						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>


					</table>
					<div id="pa2">
						<ul>
							<li><input type="image" src="${pageContext.request.contextPath}/resources/images/list.jpg" style="border-radius: 3px"></li>
							<li><input type="image" src="${pageContext.request.contextPath}/resources/images/save
							
							.jpg" style="border-radius: 3px"></li>
						</ul>
				</form>
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
	<script src="../assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
</body>
</html>