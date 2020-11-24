<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 부트스트렙 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>


<!-- 제이쿼리 사용하기 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#accordion").accordion();
	});
</script>
<style>
.ul_m {
	list-style: none;
}
</style>
</head>
<body>
	<div id="accordion">
		<h3>즐겨찾기</h3>
		<div>
			<ul class="ul_m">
				<li>test1</li>
				<li>test2</li>
			</ul>

		</div>
		<h3>직군별 게시판</h3>
		<div>
			<ul class="ul_m">
				<li>연구 / 개발</li>
				<li>사회 / 복지</li>
				<li>금융 / 보험</li>
				<li>교육</li>
				<li>경찰 / 소방 / 교도</li>
				<li>법률</li>
				<li>음식</li>
				<li>보건 / 의료</li>
				<li>군인</li>
				<li>스포츠 / 레크레이션</li>
				<li>예술 / 디자인</li>
				<li>방송</li>
				<li>미용 / 예식</li>
				<li>항공 / 여행 / 숙박</li>
				<li>제조 / 생산</li>
				<li>종교</li>
			</ul>
		</div>
		<h3>커스텀 게시판</h3>
		<ul class="ul_m">
			<li>커스텀1</li>
			<li>커스텀2</li>
		</ul>
	</div>
	<ul class="ul_m">
		<li>내일의 후배를 위해 한 마디</li>
		<li>매일 세 마디</li>
		<li>이거 vs 이거?</li>
		<li>스터디 그룹 모집</li>
		<li>게시판 개설 신청</li>
	</ul>
</body>
</html>