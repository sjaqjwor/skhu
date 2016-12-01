<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<link
   href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
   rel="stylesheet">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/assets/css/member_list.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->

<title>성공회대 총동문회</title>
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="me.js"></script>
<script>
   $(function() {
      $("#sendmail").click(function() {
         if (!confirm("메일을 보냅니다.")) {
            preventDefault();
         } else {
            document.form.submit();
            //#mailform.submit();
         }
      });
      $("#cancel").click(function() {
         if (!confirm("이전화면으로 돌아갑니다.")) {
            preventDefault();
         } else {
            //이전화면으로
         }
      });
   });
</script>
</head>
<body>
   <div id="page-wrapper" style="margin-bottom: 30px;">

      <c:import url="../menu.jsp" />
      <c:choose>
         <c:when test="${ uid eq \"error\" }">
               <h2 style="float:center;">이게뭐시당가</h2>
         </c:when>
         <c:otherwise>
            <div class="container">
               <hr />
               <h1>메일 전송</h1>
               <hr />

               <table class="table table-bordered" style="margin-top: 15px;">

                  <tr>
                     <td>보내는사람</td>
                     <td>${ user.u_name }</td>
                  </tr>

                  <tr>
                     <td><textarea rows="50" cols="50"></textarea></td>
                  </tr>
               </table>
               <hr />

               <button id="cancel" class="btn" style="float: right;">취소</button>
               <button id="sendmail" class="btn" style="float: right;">메일보내기</button>
               </form>
            </div>
         </c:otherwise>
      </c:choose>


   </div>


   <!-- Scripts -->

   <script
      src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/jquery.dropotron.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
   <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
</body>
</html>