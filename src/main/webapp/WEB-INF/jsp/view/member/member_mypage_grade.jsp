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
<link rel="stylesheet" href="../css/member/member_mypage_grade.css">

<script src="../js/member/member_mypage.js" defer></script>

</head>
<body>

	<!-- 전체 영역 잡기 -->
	<div class="mollang_mypage_all">
		<h2>등급 안내</h2>

		<!-- 쪼개기 -->
		<!-- 앞의 패딩을 주기 위해서 영역을 다시 한 번 지정 -->
		<div class="mollang_mypage_all2">
			<!-- 내 정보 영역 -->
			<div class="myclass">



				<!-- 내 정보 나타내는 영역 -->
				<div class="myclass_center">
					<!-- 테이블 시작 -->
					<form>


						<!-- 맨위에 가운데 배치되는게 아래로 -->
						<div class="card shadow">
							<div class="card-body">

								<table class="table table-hover" id='mypage_table_check'>

									<thead>
										<tr>
											<th class="text-center d-none d-md-table-cell"
												id="table_border_none">등급</th>
											<th class="w-50" id="table_border_none">획득 Point</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td
												class="text-center d-none d-md-table-cell mollang_table_border"
												id="mypage_grade_menu"><i class="fas fa-crown"></i>Master</td>
											<td style="padding: 0px 0px 0px 0px">
												<!-- 검색 결과 input -->
												<div class="td_mollang_nickname">
													<input type="text" class="form-control"
														id="mypage_nickname_search"
														aria-label="Sizing example input"
														aria-describedby="inputGroup-sizing-default">
												</div>
											</td>
											<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
										</tr>
										<tr>
											<td
												class="text-center d-none d-md-table-cell mollang_table_border"
												id="mypage_grade_menu"><i class="fas fa-star"></i>Star</td>
											<td style="padding: 0px 0px 0px 0px">
												<!-- 검색 결과 input -->
												<div class="td_mollang_nickname">
													<input type="text" class="form-control"
														id="mypage_nickname_search"
														aria-label="Sizing example input"
														aria-describedby="inputGroup-sizing-default">
												</div>
											</td>
											<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
										</tr>
										<tr>
											<td
												class="text-center d-none d-md-table-cell mollang_table_border"
												id="mypage_grade_menu"><i class="fas fa-network-wired"></i>Lv. 10</td>
											<td style="padding: 0px 0px 0px 0px">
												<!-- 검색 결과 input -->
												<div class="td_mollang_nickname">
													<input type="text" class="form-control"
														id="mypage_nickname_search"
														aria-label="Sizing example input"
														aria-describedby="inputGroup-sizing-default">
												</div>
											</td>
											<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
										</tr>
										<!-- 자동 추가 부분 -->
										<tr>
											<td
												class="text-center d-none d-md-table-cell mollang_table_border"
												id="mypage_grade_menu">Lv. 9</td>
											<td style="padding: 0px 0px 0px 0px">
												<!-- 검색 결과 input -->
												<div class="td_mollang_nickname">
													<input type="text" class="form-control"
														id="mypage_nickname_search"
														aria-label="Sizing example input"
														aria-describedby="inputGroup-sizing-default">
												</div>
											</td>
											<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
										</tr>
										<tr>
											<td
												class="text-center d-none d-md-table-cell mollang_table_border"
												id="mypage_grade_menu">Lv. 8</td>
											<td style="padding: 0px 0px 0px 0px">
												<!-- 검색 결과 input -->
												<div class="td_mollang_nickname">
													<input type="text" class="form-control"
														id="mypage_nickname_search"
														aria-label="Sizing example input"
														aria-describedby="inputGroup-sizing-default">
												</div>
											</td>
											<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
										</tr>
										<tr>
											<td
												class="text-center d-none d-md-table-cell mollang_table_border"
												id="mypage_grade_menu">Lv. 7</td>
											<td style="padding: 0px 0px 0px 0px">
												<!-- 검색 결과 input -->
												<div class="td_mollang_nickname">
													<input type="text" class="form-control"
														id="mypage_nickname_search"
														aria-label="Sizing example input"
														aria-describedby="inputGroup-sizing-default">
												</div>
											</td>
											<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
										</tr>
										<tr>
											<td
												class="text-center d-none d-md-table-cell mollang_table_border"
												id="mypage_grade_menu">Lv. 6</td>
											<td style="padding: 0px 0px 0px 0px">
												<!-- 검색 결과 input -->
												<div class="td_mollang_nickname">
													<input type="text" class="form-control"
														id="mypage_nickname_search"
														aria-label="Sizing example input"
														aria-describedby="inputGroup-sizing-default">
												</div>
											</td>
											<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
										</tr>
									</tbody>
								</table>

								<button type="button"
									class="btn btn-secondary btn-lg flex_glow_mollang">변경하기</button>
							</div>
						</div>

					</form>


				</div>
			</div>

		</div>
	</div>
</body>
</html>