<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- 부트스트렙 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>


<!-- 기본 css 연결하기 -->
<link rel="stylesheet" href="../css/board/board_view.css">

<title>{게시판 이름}</title>

</head>
<body>
	<div class="mollang_test">
		<h2 style="margin-bottom: 30px">{게시판 이름}</h2>

		<!-- 제목 쓰기 -->
		<div id="mollang_center">
			<h4 class="card-title mollang_title">Dark card title</h4>

			<!-- 버튼 -->
			<!-- 작성자만 보이기 -->
			<div id="btn_space">
				<button type="button" class="btn btn-secondary" id="mollang_btn">수정</button>
				<button type="button" class="btn btn-secondary" id="mollang_btn">삭제</button>

				<!-- 작성자 외 보이기 -->
				<button type="button" class="btn btn-secondary" id="mollang_btn">신고</button>
			</div>
			
			<!-- 밑줄 추가 -->
			<hr>
		</div>
		<br>


		생각해 보자
		<!-- notice view -->
		<div class="card border-dark mb-3 mollang_content">
			<div class="card-header mollang_center">게시글 내용</div>
			<div class="card-body text-dark">

				<p class="card-text">{게시글 내용}</p>
			</div>
		</div>

		<!-- 좋아요 싫어요. -->
		<div class="mollang_good">
			<!-- 버튼 -->
			<button type="button" class="btn btn-secondary mollang_btn">승인</button>
			<button type="button" class="btn btn-secondary mollang_btn">반려</button>
		</div>


		<!-- 댓글 창 area -->
		<div>
			<jsp:include page="command.jsp" />
		</div>
	</div>
</body>
</html>