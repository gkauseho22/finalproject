<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
   integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
   crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
   integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
   crossorigin="anonymous"></script>




<title>Hello, world!</title>
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light fixed-top">
      <div class="collapse navbar-collapse" id="navMenu">
         <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a href="login.html"
               class="btn btn-outline-secondary">로그인</a></li>
            <li class="nav-item"><a href="join.html"
               class="btn btn-outline-secondary">회원가입</a></li>
         </ul>
      </div>
   </nav>
   <!-- 상단 메뉴 부분 -->
   <nav class="navbar navbar-expand-lg navbar-light fixed-top">
      <a class="navbar-brand" href="#" style="font-size: 30px">오늘은</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#navbarNav" aria-controls="navbarNav"
         aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
         <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="#">Mypage</a></li>
            <li class="nav-item"><a class="nav-link" href="#">게시판</a></li>
            <li class="nav-item"><a class="nav-link" href="#">직업 정보</a></li>
            <li class="nav-item"><a class="nav-link" href="#">기업 정보</a></li>
            <li class="nav-item"><a class="nav-link" href="#">노무 정보</a></li>
         </ul>
      </div>

   </nav>
   <!-- top part -->

   <!-- 게시글 리스트 -->
   <div class="container" style="margin-top: 100px">
      <!-- 맨위에 가운데 배치되는게 아래로 -->
      <div class="card shadow">
         <div class="card-body">
            <h4 class="card-title">게시판 이름</h4>
            <table class="table table-hover" id='board_list'>
               <thead>
                  <tr>
                     <th class="text-center d-none d-md-table-cell">글번호</th>
                     <th class="w-50">제목</th>
                     <th class="text-center d-none d-md-table-cell">작성자</th>
                     <th class="text-center d-none d-md-table-cell">작성날짜</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
                  <tr>
                     <td class="text-center d-none d-md-table-cell">10</td>
                     <td><a href='board_read.html'>글 제목 입니다</a></td>
                     <td class="text-center d-none d-md-table-cell">홍길동</td>
                     <td class="text-center d-none d-md-table-cell">2018-12-12</td>

                  </tr>
               </tbody>
            </table>
         </div>
      </div>
   </div>
<div class="container-fluid bg-silver text-black" style="margin-top:50px;padding-top:30px;padding-bottom:30px">
   <div class="container">
      <p>http://www.softcampus.co.kr</p>
      <p>게시판 예제</p>
      <p>사업자번호 : 000-111-222</p>
   </div>
</div>

</body>
</html>