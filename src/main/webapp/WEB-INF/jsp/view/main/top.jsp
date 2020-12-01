<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트렙 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

<!-- 가져오기 -->
<link rel="stylesheet" href="../css/top.css">
<title>Insert title here</title>
<!-- 이미지 파일 -->
<script src="https://kit.fontawesome.com/45fba14eff.js"
	crossorigin="anonymous"></script>
	
<!-- 폰트 파일 -->
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@700&display=swap"
	rel="stylesheet">
<script src="../js/top.js" defer></script>


</head>
<body class="body_m">
	<nav class="navbar_m">
	<!-- 영역 고정 영역 -->
		<div class="top_h">
			<span><a href="#" class="a_m">[회원가입]</a> <a href="#" class="a_m">[로그인]</a></span>
		</div>
	<!-- 영역 고정 끝 -->

		<div class="navbar_logo_m">
			<i class="fas fa-cloud-sun"></i> <a href="" class="a_m">오늘은</a>
		</div>
		<ul class="navbar_menu_m">
			<li><a href="" class="a_m">My Page</a></li>
			<li><a href="" class="a_m">게시판</a></li>
			<li><a href="" class="a_m">직업 정보</a></li>
			<li><a href="" class="a_m">기업 정보</a></li>
			<li><a href="" class="a_m">노무 정보</a></li>
		</ul>

		<!-- 즐겨찾기 목록 -->
		<ul class="navbar_star_m">
			<li><a href="" class="a_m">test1</a></li>
			<li><a href="" class="a_m">test2</a></li>
		</ul>
		<!-- navbar_tooleBtn이 오른쪽 정렬이다.
		얘를 끌고가도록 더미를 만들어놓았다. -->
		<ul>
		</ul>
		<!-- <a href="#" class="navbar_toogleBtn a_m"><i
			class="fas fa-user-alt"></i></a> -->
		<!-- 즐겨 찾기 -->
		<a href="#" class="navbar_toogleStar a_m"><i class="fas fa-star"></i></a>
		<a href="#" class="navbar_toogleBtn a_m"><i class="fas fa-bars"></i></a>
	</nav>
</body>
</html>