<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<!-- include libraries(jQuery, bootstrap) -->
<!-- <link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet"> -->
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="../summer/summernote-ko-KR.js"></script>


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
<link rel="stylesheet" href="../css/board/board_write.css">

<title>{게시판 이름}</title>

<script>
	$(document).ready(function() {
		$('#summernote').summernote({
			placeholder : 'content',
			minHeight : 370,
			maxHeight : null,
			focus : true,
			lang : 'ko-KR'
		});
	});
</script>
</head>
<body>
	<div class="mollang_test">
		<h2 style="margin-bottom: 30px">게시판 개설 신청</h2>
		<form method="post" action="/write">

			<!-- 제목 쓰기 -->
			<div class="input-group mb-3">

				<input type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default" placeholder="제목">

				<!-- 버튼 -->
				<button type="button" class="btn btn-secondary mollang_btn">글
					등록</button>
				<button type="button" class="btn btn-secondary mollang_btn">취소</button>
			</div>
			<br>

			<!-- 게시판 신청 이름 -->
			<div id="mollang_input_size">
				<h5>게시판 신청 이름&nbsp;&nbsp;&nbsp;</h5>
				<input type="text" class="form-control" id="mollang_input_size"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default"
					placeholder="게시판 신청 이름">
			</div>


			<!-- 글작성 form -->
			<div style="width: 100%; margin: auto;">
				<textarea id="summernote" name="content"></textarea>
			</div>
		</form>
	</div>
</body>
</html>