<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/register.css" />
<title>성공회대 총동문회</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 
<script>
function checkFileType(filePath) {
    var fileFormat = filePath.split(".");
    if (fileFormat.indexOf("xlsx") > -1) {
        return true;
    } else {
        return false;
    }
}
	
function upload() {
    var file = $("#excelFile").val();
    if (file == "" || file == null) {
    	alert("파일을 선택해주세요.");
        return false;
    } else if (!checkFileType(file)) {
    	alert("엑셀 파일만 업로드 가능합니다.");
        return false;
    }
    if (confirm("업로드 하시겠습니까?")) {
    	$("#excelForm").submit();        
	}
}

function register(){
	$('#userForm').submit();
}
</script>
</head>
<body>
   <c:import url="../menu.jsp"/>
    
      <div class="container">
      	<hr />
	   		 <h1>회원 등록</h1>
	    <hr />
	    
               
			<form id="excelForm" enctype="multipart/form-data" method="post" action="upload.do" >
        		<input id="excelFile" type="file" name="excelFile"/>
        		<button id="uploadButton" type="button" onclick="upload()" class="btn btn-success" style="margin-bottom: 5px;">업로드</button>
    		</form>
    		
    		<form:form id="userForm" method="post" action="register.do" modelAttribute="userForm" >
    		<table class="table table-bordered" style="margin-top:15px; margin-bottom:15px;">
	        <thead>
	            <tr>
	            	<th style="width:50px;">번호</th>
	            	<th style="width:70px;">이름</th>
	                <th style="width:50px;">기수</th>
	                <th style="width:100px;">등급</th>
	   				<th style="width:100px;">생년월일</th>
	   				<th>핸드폰</th>
	   				<th>이메일</th>
	   				<th>주소</th>
	   				<th style="width:100px;">직장전화</th>
	   				<th style="width:100px;">직장지위</th>           
	            </tr>
	        </thead>
	        <c:forEach var="item" items="${userForm.users}" varStatus="status">
	        		<tr>
	        			<td align="Center">${status.count }</td>
	        			<td><input name="users[${status.index }].u_name" value="${item.u_name }" style="width:100%; border: 0; text-align: center"/></td>
		                <td><input name="users[${status.index }].u_cNumber" value="${item.u_cNumber }" style="width:100%; border: 0; text-align: center"/></td>
		                <td><input name="users[${status.index }].u_status" value="${item.u_status }" style="width:100%; border: 0; text-align: center"/></td>
	   					<td><input name="users[${status.index }].u_birth" value="${item.u_birth }" style="width:100%; border: 0; text-align: center"/></td>
	   					<td><input name="users[${status.index }].u_phone" value="${item.u_phone }" style="width:100%; border: 0; text-align: center"/></td>
	   					<td><input name="users[${status.index }].u_email" value="${item.u_email }" style="width:100%; border: 0; text-align: center"/></td>
	   					<td><input name="users[${status.index }].u_address" value="${item.u_address }" style="width:100%; border: 0; text-align: center"/></td>
	   					<td><input name="users[${status.index }].u_jobPhone" value="${item.u_jobPhone }" style="width:100%; border: 0; text-align: center"/></td>
	   					<td><input name="users[${status.index }].u_jobStatus" value="${item.u_jobStatus }" style="width:100%; border: 0; text-align: center"/></td>
	                </tr>
	        </c:forEach>
                  
                  
            </table> 
            <hr/>
               <div id="buttonParty">
	               <input type="submit" name="btn" onclick="register()" style="background-color:white
		               ;border:1px solid #ccc9c9; color:black;" value="회원등록" >
               </div>
            </form:form>   

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