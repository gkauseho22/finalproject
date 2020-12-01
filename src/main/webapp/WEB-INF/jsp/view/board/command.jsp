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
<!-- 기본 css 연결하기 -->
<link rel="stylesheet" href="../css/board/command.css">
<link rel="stylesheet" href="../css/board/page.css">

</head>
<body>
	<div>
		<h5>댓글</h5>
		<hr>
		<!-- 댓글 등록 하기 -->
		<form action="test" method="post">
			<div class="mollang_first">
				<textarea class="form-control" id="command_write"
					aria-label="With textarea"></textarea>
				<!-- 등록 버튼 -->
				<button type="button" class="btn btn-secondary">댓글</button>
			</div>
		</form>

		<!-- 댓글 나타내기 -->
		<table class="table table-hover" id='board_list'>
					<thead>
						<tr>
							<th class="text-center d-none d-md-table-cell">닉네임</th>
							<th class="w-50">제목</th>
					<th class="text-center d-none d-md-table-cell">작성날짜</th>
				</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center d-none d-md-table-cell">닉네임1</td>
							<td><a href='board_read.html'>글 제목 입니다</a></td>
							<td class="text-center d-none d-md-table-cell">2018-12-12</td>

						</tr>
						<tr>
							<td class="text-center d-none d-md-table-cell">둘리</td>
							<td><a href='board_read.html'>글 제목 입니다</a></td>
							<td class="text-center d-none d-md-table-cell">2018-12-12</td>

						</tr>
					</tbody>
				</table>
	</div>
</body>
</html>