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
<link
   href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
   rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main2.css" />
<title>성공회대 총동문회</title>
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
            <li><a href="#">업무<span class="badge">3</span></a>
              <ul>
                <li><a href="#">쪽지함<span class="badge">2</span></a></li>
                <li><a href="#">회원등록</a></li>
                <li><a href="#">아이디변경<span class="badge">1</span></a></li>
              </ul></li>
         </ul>
         </nav>

      </div>

      <section id="banner"> </section>

      <!-- Highlights -->
      <section class="wrapper style1">
      <div class="container">
         <div class="row 200%">
            <section class="4u 12u(narrower)">
            <div class="box highlight">
               <i class="icon major fa-search"></i>
               <h3>검색</h3>
               <form>
                  <select id="myOption">
                  <option>기수</option>
                  <option>자유게시판</option>
                  <option>공지사항</option>
                  </select>
                  <input type="text" id="search_"
                      />
                  <input type="image" src="${pageContext.request.contextPath}/resources/images/search.jpg" id="my_"
                      />
               </form>
            </div>
            </section>
            <section class="4u 12u(narrower)">
            <div class="box highlight">
               <i class="icon major fa-pencil"></i>
               <h3>공지사항</h3>
               <li>2016 동계 해외교류 봉사프로...</li> <br />
               <li>지진발생시 행동요령</li> <br />
               <li>[학부] 2016학년도 2학기 수...</li> <br />
            </div>
            </section>
            <section class="4u 12u(narrower)">
            <div class="box highlight">
               <i class="icon major fa-smile-o"></i>
               <h3>자유게시판</h3>
               <li>반응형 웹사이트 만들기...</li> <br />
               <li>신성철 동문 잘생기지 않..</li> <br />
               <li>10월달 함께 맞는비 모임..</li> <br />
            </div>
            </section>
         </div>
      </div>
      </section>
      <!-- Footer -->
      <div id="footer">

         <!-- Icons -->
         <ul class="icons">
            <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon fa-facebook"><span
                  class="label">Facebook</span></a></li>
            <li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
            <li><a href="#" class="icon fa-linkedin"><span
                  class="label">LinkedIn</span></a></li>
            <li><a href="#" class="icon fa-google-plus"><span
                  class="label">Google+</span></a></li>
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
   <script src="${pageContext.request.contextPath}/resources/res/assets/js/main.js"></script>
</body>
</html>