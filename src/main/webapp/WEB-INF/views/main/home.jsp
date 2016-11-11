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
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<link
   href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
   rel="stylesheet">
<title>성공회대 총동문회</title>
</head>
<body>
   <div id="page-wrapper">
	<c:import url="../menu.jsp"/>

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
   <script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
</body>
</html>