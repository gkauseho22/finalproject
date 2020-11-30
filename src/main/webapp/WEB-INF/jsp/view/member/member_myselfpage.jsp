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
<link rel="stylesheet" href="../css/member/member_myselfpage.css">

</head>
<body>

	<!-- 제일 윗 부분 -->
	<h3>My Page</h3>
	<!-- 전체 부분 -->
	<!-- 세로 정렬 -->
	<div class="mollang_member">
		<!-- 로그인 부분 -->
		<!-- 가로 정렬 -->
		<div id="mollang_row_center">
			<!-- 세로 정렬 -->
			<div id="mollang_colum_center">

				<!-- form 영역 -->
				<form>

					<h3>자기소개서 등록은 제작자만 가능합니다.</h3>
					<h4>* 승인까지 약 1 ~ 2 영업일 소요합니다.</h4>

					<table class="table table-hover" id='mypage_table_check'>
						<tbody>
							<tr>
								<td
									class="text-center d-none d-md-table-cell mollang_table_border"
									id="table_border">재직중인 기업</td>
								<td id="table_border" style="padding: 0px 0px 0px 0px">
									<!-- 재직중인 기업 -->
									<div class="td_mollang_nickname">
										<input type="text" class="form-control"
											id="mypage_nickname_search" aria-label="Sizing example input"
											placeholder="재직중인 기업"
											aria-describedby="inputGroup-sizing-default">

									</div>
								</td>
							</tr>
							<tr>
								<td
									class="text-center d-none d-md-table-cell mollang_table_border"
									id="table_border">본인 인증</td>
								<td id="table_border" style="padding: 0px 0px 0px 0px">
									<!-- 검색 결과 input -->
									<div class="td_mollang_nickname">
										<input type="text" class="form-control"
											id="mypage_nickname_search" aria-label="Sizing example input"
											placeholder="본인 인증"
											aria-describedby="inputGroup-sizing-default">

										<!-- 버튼 -->
										<button type="button" class="btn btn-secondary mollang_btn">인증</button>
									</div>
								</td>
							</tr>
							<tr>
								<td
									class="text-center d-none d-md-table-cell mollang_table_border"
									id="table_border">재직 증명서</td>
								<td id="table_border" style="padding: 0px 0px 0px 0px">
									<!-- 검색 결과 input -->
									<div class="td_mollang_nickname">
										<input type="text" class="form-control"
											id="mypage_nickname_search" aria-label="Sizing example input"
											placeholder="재직 증명서"
											aria-describedby="inputGroup-sizing-default">

										<!-- 버튼 -->
										<button type="button" class="btn btn-secondary mollang_btn">인증</button>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<!-- 버튼 -->
					<div class="flex_center">
						<button type="button" class="btn btn-secondary mollang_btn">등록</button>
					</div>
				</form>


			</div>
		</div>
	</div>
</body>
</html>