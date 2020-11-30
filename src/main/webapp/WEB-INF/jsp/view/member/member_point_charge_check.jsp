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
	href="../css/member/member_point_charge_check.css">
</head>
<body>

	<!-- 전체 영역 잡기 -->
	<div class="mollang_mypage_all">
		<h2>Point 충전</h2>

		<h5>선택한 상품</h5>
		<!-- 영역 지정 -->
		<div class="ponit_second">

			<div class="label_mollang_01 label_mollang_go01">@{전에 선택한 Point}</div>
			<div class="label_mollang_02 label_mollang_go01">@{전에 선택한 가격}</div>
			<div class="label_mollang_03 label_mollang_go01">Point</div>

		</div>
		
		<!-- 결제 영역 -->
		<div class="point_three">
		<div class="point_three_first">
		미정 몰라
		</div>
		
		<div class="point_three_second">
		<!-- 버튼 영역 -->
		<button type="button" class="btn btn-secondary" id="mollang_btn">결제하기</button>
		</div>
		</div>
	</div>
</body>
</html>