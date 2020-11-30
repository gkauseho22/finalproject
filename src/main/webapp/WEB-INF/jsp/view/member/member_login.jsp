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

<link rel="stylesheet" href="../css/member/member_login.css">

</head>
<body>
	<!-- 전체 부분 -->
	<!-- 세로 정렬 -->
	<div class="mollang_member">
		<!-- 로그인 부분 -->
		<!-- 가로 정렬 -->
		<div id="mollang_row_center">
			<!-- 세로 정렬 -->
			<div id="mollang_colum_center">
			
			
				<!-- 폼 구분 -->
				<form action="/login" method="post">
					<h2 id="mollang_row_center">로그인</h2>


					<!-- 로그인 부분 -->
					<div class="input-group mb-3" id="mollang_row_center">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-user-alt"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="User Id"
							aria-label="User Id" aria-describedby="basic-addon1" name="user_id">
					</div>

					<!-- 비밀번호 부분 -->
					<div class="input-group mb-3" id="mollang_row_center">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i
								class="fas fa-key"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Pass Word"
							aria-label="Pass Word" aria-describedby="basic-addon1" name="user_pw">
					</div>

					<div class="input-group mb-3" id="mollang_row_center">
						<div>
							<button type="button" class="btn btn-secondary" id="mollang_btn">회원가입</button>
							<button type="button" class="btn btn-secondary" id="mollang_btn">비밀번호</button>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>