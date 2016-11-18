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
<link
   href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
   rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/member_list.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->

<title>성공회대 총동문회</title>
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="me.js"></script>
<script>
    $(function() {
        $("tbody tr").click(function() {
            location.href = $(this).attr("data-url");
        });
    });
</script>
</head>
<body>
   <div id="page-wrapper">

	<c:import url="../menu.jsp"/>

	<div class="container">
	    <hr />
	    <h1>회원 목록</h1>
	    <hr />
	    <table class="table table-bordered">
	        <thead>
	            <tr>
	            	<th>사진</th>
	                <th>아이디</th>
	                <th>이름</th>
	                <th>기수</th>
	                <th>등급</th>
	                <th>생년월일</th>
	   				<th>이메일</th>
	   				<th>최초 비밀번호 변경</th>             
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="user" items="${ list }">
	                <tr data-url="user_edit.do?id=${ user.u_loginId }">
	                	<c:if test="${empty user.u_photo }">
	                		<td><image style="width:50px;height:50px;" src="${pageContext.request.contextPath}/resources/userImages/no_pic.gif"></td>
	                	</c:if>
	                	<c:if test="${not empty user.u_photo }">
	                		<td><image style="width:50px;height:50px;" src="${pageContext.request.contextPath}/resources/userImages/${user.u_photo}"></td>
	                	</c:if>
	                    <td>${ user.u_loginId }</td>
	                    <td>${ user.u_name }</td>
	                    <td>${ user.u_cNumber }기</td>
	                    <td>${ user.u_status }</td>
	                    <td>${ user.u_birth }</td>
	                    <td>${ user.u_email }</td>
	                    <td>
	                    <c:choose>
					  	  <c:when test="${user.u_count == true }"><image style="width:30px;height:30px;" src="${pageContext.request.contextPath}/resources/images/check.png"></c:when>
 						  <c:otherwise></c:otherwise>
						</c:choose>	                    
	                    </td>
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
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