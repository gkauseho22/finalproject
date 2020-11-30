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

<link rel="stylesheet"
	href="../css/member/member_point_charge_point.css">
</head>
<body>

	<!-- 전체 영역 잡기 -->
	<div class="mollang_mypage_all">
		<h2>Point 충전</h2>

		<!-- 영역 지정 -->
		<div class="ponit_second">

			<div class="label_mollang_01 label_mollang_go01">보유 Point</div>
			<div class="label_mollang_02 label_mollang_go01">@{전에 선택한 가격}</div>
			<div class="label_mollang_03 label_mollang_go01">Point</div>

		</div>
		<!-- 영역 지정 -->
		<div class="ponit_second">

			<div class="label_mollang_01 label_mollang_go01">환전 Point</div>
			<div class="label_mollang_02 label_mollang_go01">@{전에 선택한 가격}</div>
			<div class="label_mollang_03 label_mollang_go01">Point</div>

		</div>
		<div class="mollang_point_text">
			<h4>
				환전 최소 point는 5000 point 입니다.<br> point 환전 수수료는 10% 입니다.
			</h4>
		</div>

		<!-- 영역 지정 -->
		<div class="ponit_second">

			<div class="label_mollang_01 label_mollang_go01">환전 예상 금액</div>
			<div class="label_mollang_02 label_mollang_go01">@{전에 선택한 가격}</div>
			<div class="label_mollang_03 label_mollang_go01">원</div>

		</div>

		<div class="ponit_second">

			<div class="label_mollang_01 label_mollang_go01 label_mollang_last">환전 예상 금액</div>
			<div>
				<div class="form-group" id="mollang_flex_row">
					<select class="form-control" id="exampleFormControlSelect1">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select> <input type="text" class="form-control" id="mollang_margin_005"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default">
				</div>
				<div class="form-group" >
					<input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default">
				</div>


			</div>

		</div>

	</div>
</body>
</html>