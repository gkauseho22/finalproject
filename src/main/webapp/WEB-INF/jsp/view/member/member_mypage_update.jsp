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


<link rel="stylesheet" href="../css/member/member_mypage.css">


<style>
.td_mollang_nickname {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
}

#mypage_nickname_search {
	width: 100%;
}

.mollang_btn {
	width: 140px;
}

.flex_glow_mollang {
	flex-grow: 1;
}

.mollang_center_flex {
	justify-content: center;
}
</style>

</head>
<body>
	<!-- 전체 영역 잡기 -->
	<div class="mollang_mypage_all">
		<h2>My page</h2>

		<!-- 쪼개기 -->
		<!-- 앞의 패딩을 주기 위해서 영역을 다시 한 번 지정 -->
		<div class="mollang_mypage_all2">
			<!-- 내 정보 나타내는 영역 -->
			<div class="myclass_center">
				<!-- 맨위에 가운데 배치되는게 아래로 -->
				<h2>수정하기</h2>
				<div class="card shadow">
					<div class="card-body">
						<table class="table table-hover" id='mypage_table_check'>
							<tbody>
								<tr>
									<td class="text-center d-none d-md-table-cell"
										id="table_border">아이디</td>
									<td id="table_border">@{아이디}</td>
								</tr>
								<tr>
									<td class="text-center d-none d-md-table-cell"
										id="table_border">닉네임</td>
									<td id="table_border" style="padding: 0px 0px 0px 0px">
										<!-- 검색 결과 input -->
										<div class="td_mollang_nickname">
											<input type="text" class="form-control"
												id="mypage_nickname_search"
												aria-label="Sizing example input"
												aria-describedby="inputGroup-sizing-default">

											<!-- 버튼 -->
											<button type="button" class="btn btn-secondary mollang_btn">중복확인</button>
										</div>
									</td>
								</tr>
								<tr>
									<td class="text-center d-none d-md-table-cell"
										id="table_border">비밀번호</td>
									<td id="table_border" style="padding: 0px 0px 0px 0px">
										<!-- 검색 결과 input -->
										<div class="td_mollang_nickname">
											<input type="text" class="form-control"
												id="mypage_nickname_search"
												aria-label="Sizing example input"
												aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
								</tr>
								<tr>
									<td class="text-center d-none d-md-table-cell"
										id="table_border">비밀번호확인</td>
									<td id="table_border" style="padding: 0px 0px 0px 0px">
										<!-- 검색 결과 input -->
										<div class="td_mollang_nickname">
											<input type="text" class="form-control"
												id="mypage_nickname_search"
												aria-label="Sizing example input"
												aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
								</tr>
								<tr>
									<td class="text-center d-none d-md-table-cell"
										id="table_border">내 직업</td>
									<td id="table_border" style="padding: 0px 0px 0px 0px">
										<!-- 대 중 소 -->
										<div class="td_mollang_nickname">
											<input type="text" class="form-control"
												id="mypage_nickname_search"
												aria-label="Sizing example input"
												aria-describedby="inputGroup-sizing-default"> <input
												type="text" class="form-control" id="mypage_nickname_search"
												aria-label="Sizing example input"
												aria-describedby="inputGroup-sizing-default"> <input
												type="text" class="form-control" id="mypage_nickname_search"
												aria-label="Sizing example input"
												aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
								</tr>
								<tr>
									<td class="text-center d-none d-md-table-cell"
										id="table_border">관심 직업</td>
									<td id="table_border" style="padding: 0px 0px 0px 0px">
										<!-- 대 중 소 -->
										<div class="td_mollang_nickname">
											<button type="button"
												class="btn btn-secondary btn-lg flex_glow_mollang">대분류</button>
											<button type="button"
												class="btn btn-secondary btn-lg flex_glow_mollang">중붕류</button>
											<button type="button"
												class="btn btn-secondary btn-lg flex_glow_mollang">소분류</button>
										</div>
									</td>
								</tr>


								<tr>
									<td class="text-center d-none d-md-table-cell"
										id="table_border">mbti</td>
									<td id="table_border" style="padding: 0px 0px 0px 0px">
										<!-- 검색 결과 input -->
										<div class="td_mollang_nickname">
											<input type="text" class="form-control"
												id="mypage_nickname_search"
												aria-label="Sizing example input"
												aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
								</tr>
							</tbody>
						</table>

						<!-- 하단 버튼 목록 1 -->
						<div class="myself_report mollang_center_flex">
							<button type="button"
								class="btn btn-secondary btn-lg flex_glow_mollang">적성
								검사 하러가기</button>
							<button type="button"
								class="btn btn-secondary btn-lg flex_glow_mollang">mbti
								하러 가기</button>
						</div>

						<!-- 하단 버튼 목록 2 -->
						<div class="myself_report mollang_center_flex"
							style="margin-top: 40px">
							<button type="button"
								class="btn btn-secondary btn-lg flex_glow_mollang">저장</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>