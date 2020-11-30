<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<title>Hello, world!</title>


<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

<script src="../js/member/member_mypage.js" defer></script>

<link rel="stylesheet" href="../css/member/member_point_charge.css">
</head>
<body>

	<!-- 전체 영역 잡기 -->
	<div class="mollang_mypage_all">
		<h2>Point 충전</h2>

		<!-- 쪼개기 -->
		<!-- 앞의 패딩을 주기 위해서 영역을 다시 한 번 지정 -->
		<div class="mollang_mypage_all2">
			<!-- 내 정보 영역 -->
			<div class="myclass">

				<div class="myclass_row_between">

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
													id="table_border_none">가격</th>
												<th class="w-50" id="table_border_none">충전 양</th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<td
													class="text-center d-none d-md-table-cell mollang_table_border"
													id="table_border_none">1000 원</td>
												<td style="padding: 0px 0px 0px 0px" id="table_border_none">
													<div class="btn-group btn-group-toggle"
														data-toggle="buttons">
														<!-- 검색 결과 input -->
														<label class="btn btn-secondary" id="mollang_label_100">
															<input type="radio" name="options" id="option1">
															Active
														</label>
													</div>
												</td>
												<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
											</tr>
											<tr>
												<td
													class="text-center d-none d-md-table-cell mollang_table_border"
													id="table_border_none">5000 원</td>
												<td style="padding: 0px 0px 0px 0px">
													<div class="btn-group btn-group-toggle"
														data-toggle="buttons">
														<!-- 검색 결과 input -->
														<label class="btn btn-secondary"> <input
															type="radio" name="options" id="option2"> Radio
														</label>
													</div>
												</td>
												<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
											</tr>
											<tr>
												<td
													class="text-center d-none d-md-table-cell mollang_table_border"
													id="mypage_grade_menu">10000 원</td>
												<td style="padding: 0px 0px 0px 0px">
													<div class="btn-group btn-group-toggle"
														data-toggle="buttons">
														<!-- 검색 결과 input -->
														<label class="btn btn-secondary"> <input
															type="radio" name="options" id="option3"> Radio
														</label>
													</div>
												</td>
												<td class="mollang_font_left_mypage" id="table_border_none">Point</td>
											</tr>

											</div>
										</tbody>
									</table>
									<button type="button"
										class="btn btn-secondary btn-lg flex_glow_mollang">충전하기</button>
								</div>
							</div>

						</form>


					</div>

				</div>


			</div>

		</div>
	</div>
</body>
</html>