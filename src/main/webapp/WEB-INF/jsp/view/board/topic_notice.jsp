<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>토픽 게시판</title>

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

<link rel="stylesheet" href="../css/board/topic_lavel.css">
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
		<!-- 게시판 Title -->
		<h2>이거 vs 이거</h2>
		<!-- 게시글 리스트 -->

		<h4>★ 오늘의 인기글</h4>
		<ol>
			<li>게시글 제목 / 작성자</li>
			<li>게시글 제목 / 작성자</li>
			<li>게시글 제목 / 작성자</li>
		</ol>


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



		<!-- 글쓰기 폼 -->
		<form>
			<!-- 글쓰기 창 -->
			<div class="input-group mb-3 topic_width">
				<!-- 글쓰기 목록 -->
				<div class="topic_input">
					<input type="text" class="form-control" id="topic_title"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default">
					<div class="topic_lavel">
						<input type="text" class="form-control" id="topic_menu"
							aria-label="Sizing example input"
							aria-describedby="inputGroup-sizing-default">vs <input
							type="text" class="form-control" id="topic_menu"
							aria-label="Sizing example input"
							aria-describedby="inputGroup-sizing-default">
					</div>
				</div>

				<!-- 버튼 -->
				<button type="button" class="btn btn-secondary mollang_btn">글쓰기</button>
			</div>
		</form>


		<!-- 맨위에 가운데 배치되는게 아래로 -->
		<div class="card shadow">
			<div class="card-body">
				<table class="table table-hover" id='board_list'>
					<thead>
						<tr>
							<th class="text-center d-none d-md-table-cell">글번호</th>
							<th class="w-50">제목</th>
							<th class="text-center d-none d-md-table-cell">참여자 수
							<th class="text-center d-none d-md-table-cell">작성자</th>
							<th class="text-center d-none d-md-table-cell">조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center d-none d-md-table-cell">10</td>
							<td><a href='board_read.html'>글 제목 입니다1</a></td>
							<td class="text-center d-none d-md-table-cell">100</td>
							<td class="text-center d-none d-md-table-cell">관리자</td>
							<td class="text-center d-none d-md-table-cell">131</td>
						</tr>
						<tr>
							<td class="text-center d-none d-md-table-cell">10</td>
							<td><a href='board_read.html'>글 제목 입니다2</a></td>
							<td class="text-center d-none d-md-table-cell">77</td>
							<td class="text-center d-none d-md-table-cell">관리자</td>
							<td class="text-center d-none d-md-table-cell">78</td>
						</tr>
						<tr>
							<td class="text-center d-none d-md-table-cell">10</td>
							<td><a href='board_read.html'>글 제목 입니다2</a></td>
							<td class="text-center d-none d-md-table-cell">871</td>
							<td class="text-center d-none d-md-table-cell">관리자</td>
							<td class="text-center d-none d-md-table-cell">1021</td>
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