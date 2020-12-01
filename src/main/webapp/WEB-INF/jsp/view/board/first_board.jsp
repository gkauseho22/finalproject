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

<!-- 이미지 파일 -->
<script src="https://kit.fontawesome.com/45fba14eff.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/board/page.css">

<!-- j Query -->
<script type="text/JavaScript" src="../lib/jquery-3.5.1.js"></script>
<script type="text/JavaScript" src="../lib/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function() {
		//공지사항의 높이값
		var height = $(".notice").height();
		//공지사항의 개수를 알아보기
		var num = $(".rolling li").length;

		//총 높이
		var max = height * num;
		//초기 값 설정
		var move = 0;
		function noticeRolling() {
			move += height;

			// animate를 통해서 부드럽게 top 올리기
			$(".rolling").animate({
				"top" : -move
			}, 600, function() {
				//if문을 통해 최대값보다 top가 올라갔다면 0으로 되돌리기
				if (move >= max) {
					$(this).css("top", 0);
					move = 0;
				}
				;
			});
		}
		;
		//자동롤링 setInterval를 사용해서 1000(1초) 마다 함수 실행
		noticeRollingOff = setInterval(noticeRolling, 6000);

		//마지막에 될 경우 clone을 통해 첫 번째 li 복사
		$(".rolling").append($(".rolling li").first().clone());

	});
</script>

</head>
<body style="border: 5px solid red; margin-bottom: 500px;">
	<div class="container" id="mollang_container">
		<h2 id="h2_mollang_first">매일 세마디</h2>


		<!-- 검색 창 -->
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-default"><i
					class="fas fa-search"></i></span>
			</div>
			<input type="text" class="form-control"
				aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default">


			<!-- 버튼 -->
			<button type="button" class="btn btn-secondary mollang_btn">검색</button>
		</div>

		<!--  한줄 공지 글 -->
		<div class="notice">
			<ul class="rolling">
				<li><a href="#" class="a_m"><i class="fas fa-ad red_m"></i>공지사항
						내용 1 입니다.</a></li>
				<li><a href="#" class="a_m"><i class="fas fa-ad red_m"></i>공지사항
						내용 2 입니다.</a></li>
				<li><a href="#" class="a_m"><i class="fas fa-ad red_m"></i>공지사항
						내용 3 입니다.</a></li>
			</ul>
		</div>
		
		<!-- 한 줄 게시판 -->
		<div class="card shadow">
			<div class="card-body">
				<h4 class="card-title">게시판 이름</h4>
				<table class="table table-hover" id='board_list'>
					<thead>
						<tr>
							<th class="text-center d-none d-md-table-cell">작성일</th>
							<th class="text-center w-50">글 목록</th>
							<th class="text-center d-none d-md-table-cell">작성자</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center d-none d-md-table-cell">yy-mm-dd</td>
							<td><a href='board_read.html'>글 제목 입니다</a></td>
							<td class="text-center d-none d-md-table-cell">홍길동</td>

						</tr>
						<tr>
							<td class="text-center d-none d-md-table-cell">yy-mm-dd</td>
							<td><a href='board_read.html'>글 제목 입니다</a></td>
							<td class="text-center d-none d-md-table-cell">홍길동</td>

						</tr>
						<tr>
							<td class="text-center d-none d-md-table-cell">yy-mm-dd</td>
							<td><a href='board_read.html'>글 제목 입니다</a></td>
							<td class="text-center d-none d-md-table-cell">홍길동</td>

						</tr>
						<tr>
							<td class="text-center d-none d-md-table-cell">yy-mm-dd</td>
							<td><a href='board_read.html'>글 제목 입니다</a></td>
							<td class="text-center d-none d-md-table-cell">홍길동</td>

						</tr>
					</tbody>
				</table>

			</div>
		</div>
		<div class="page_mollang_main">
			<ul class="ul_page">
				<li class="page_mollang"><a href="#">1</a></li>
				<li class="page_mollang"><a href="#">2</a></li>
				<li class="page_mollang"><a href="#">3</a></li>
				<li class="page_mollang"><a href="#">4</a></li>
				<li class="page_mollang"><a href="#">5</a></li>
				<li class="page_mollang"><a href="#">6</a></li>
				<li class="page_mollang"><a href="#">7</a></li>
				<li class="page_mollang"><a href="#">8</a></li>
				<li class="page_mollang"><a href="#">9</a></li>
				<li class="page_mollang"><a href="#">10</a></li>
			</ul>
		</div>

	</div>
</body>
</html>
