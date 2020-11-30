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

<link rel="stylesheet" href="../css/member/member_mypage.css">
<script src="../js/member/member_mypage.js" defer></script>

</head>
<body>

	<!-- 전체 영역 잡기 -->
	<div class="mollang_mypage_all">
		<h2>My page</h2>

		<!-- 쪼개기 -->
		<!-- 앞의 패딩을 주기 위해서 영역을 다시 한 번 지정 -->
		<div class="mollang_mypage_all2">
			123
			<!-- 내 정보 영역 -->
			<div class="myclass">

				<!-- 내 정보 윗 부분 -->
				<div class="myclass_top">
					<h4>내 정보</h4>

					<!-- 수정하기 -->
					<button type="button" class="btn btn-secondary" id="mollang_btn">수정
						하기</button>
				</div>


				<!-- 내 정보 나타내는 영역 -->
				<div class="myclass_center">
					<!-- 맨위에 가운데 배치되는게 아래로 -->
					<div class="card shadow">
						<div class="card-body">
							<table class="table table-hover"
								id='mypage_table_check'>
								<tbody>
									<tr>
										<td class="text-center d-none d-md-table-cell"
											id="mypage_menu">아이디</td>
										<td id="table_border">@{아이디}</td>
									</tr>
									<tr>
										<td class="text-center d-none d-md-table-cell"
											id="table_border">닉네임</td>
										<td id="table_border">@{닉네임}</td>
									</tr>
									<tr>
										<td class="text-center d-none d-md-table-cell"
											id="table_border">내 직업</td>
										<td id="table_border">@{내 직업}</td>
									</tr>
									<tr>
										<td class="text-center d-none d-md-table-cell"
											id="table_border">관심 직업</td>
										<td id="table_border">@{관심 직업}</td>
									</tr>
									<tr>
										<td class="text-center d-none d-md-table-cell"
											id="table_border">mbti</td>
										<td id="table_border">@{mbti}</td>
									</tr>
									<tr>
										<td class="text-center d-none d-md-table-cell"
											id="table_border">등급</td>
										<td id="table_border">@{등급}</td>
										<td id="table_border_none">321</td>
									</tr>
									<tr>
										<td class="text-center d-none d-md-table-cell"
											id="table_border">보유 point</td>
										<td id="table_border">@{point}</td>
										<td id="table_border_none">123</td>
									</tr>
								</tbody>
							</table>


						</div>
					</div>
				</div>
			</div>


			<!-- 내 자기 소개서 -->
			<div class="myself_report">
				<!-- 내 자기 소개서 윗 부분 -->
				<div class="myclass_top">
					<h4 class="mypage_01">내 자기 소개서</h4>

					<!-- 자기 소개서 등록 -->
					<button type="button" class="btn btn-secondary" id="mollang_btn">자기
						소개서 등록</button>
				</div>

				<textarea class="form-control mypage_selfpage_onoff" id="text_bold"
					rows="5"></textarea>
			</div>

			<!-- 추천 직업 -->
			<div class="myself_report">
				<!-- 추천직업 윗 부분 -->
				<div class="myclass_top">
					<h4 class="mypage_02">추천 직업</h4>

					<!-- 직업 검사 하러 가기 -->
					<button type="button" class="btn btn-secondary" id="mollang_btn">직업
						검사 하러가기</button>
				</div>

				<textarea class="form-control mypage_selfpage_onoff02"
					id="text_bold" rows="5"></textarea>
			</div>


			<!-- 차트 영역 -->
			<div class="mollang_chart">
				<div>차트 영역 입니다. 1</div>
				<div>차트 영역 입니다. 2</div>
			</div>

			<!-- 추천 자격증 -->
			<div class="myself_report">
				<!-- 추천 자격증 윗 부분 -->
				<div class="myclass_top">
					<h4 class="mypage_03">추천 자격증</h4>
				</div>

				<textarea class="form-control mypage_selfpage_onoff03"
					id="text_bold" rows="5"></textarea>
			</div>
		</div>
	</div>
</body>
</html>