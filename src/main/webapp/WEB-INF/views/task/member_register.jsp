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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 
<script>
$(document).ready(function(){
	  var fileTarget = $('.filebox .upload-hidden');

	  fileTarget.on('change', function(){  // 값이 변경되면
	    if(window.FileReader){  // modern browser
	      var filename = $(this)[0].files[0].name;
	    } 
	    else {  // old IE
	      var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
	    }
	    
	    // 추출한 파일명 삽입
	    $(this).siblings('.upload-name').val(filename);
	  });
	}); 
</script>
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
         <div class="row 200%">
            <section class="me">
            <div class="box highlight">
            <form method="post" action="fileUpload.do" enctype="multipart/form-data">
               
               <i class="icon major fa-registered"></i>
               <button class="bt2"><i class="fa fa-arrow-right"></i></button>
               <h3>회원등록</h3>
               
               
              <div class="filebox">
 				 <input class="upload-name" value="파일선택" disabled="disabled">
  				<label for="ex_filename">업로드</label> 
  				<input type="file" id="ex_filename" class="upload-hidden"> 
				</div>
				
				</form>
            </div>
           
            </section>
            <form class="me1">
            <section >
            <div class="box">
            <table class="re1">
            <tr>
            <td>기수</td>
            <td>이름</td>
            <td>전화번호</td>
            <td>이메일</td>
            <td>승인</td>
            </tr>
            <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
              <tr>
            <td>1기</td>
            <td>이승기</td>
            <td>01091476976</td>
            <td>lsklsk45@naver.com</td>
            <td><input type="checkbox"></td>
            </tr>
            
            
            </table>
            </div>
           	
            </section>
            <button class="re">등록</button>
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