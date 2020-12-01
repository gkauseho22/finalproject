<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자_게시판 관리</title>

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

<link rel="stylesheet" href="../css/board/topic_lavel.css">
<link rel="stylesheet" href="../css/board/page.css">

<!-- j Query -->
<script type="text/JavaScript" src="../lib/jquery-3.5.1.js"></script>
<script type="text/JavaScript" src="../lib/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function() {
		//공지사항의 높이값
		var height = $(".notice").height();
		//공지사항의 개수를 알아보기
		var num = $(".rolling li").length;

		//총 높이
		var max = height * num;
		//초기 값 설정
		var move = 0;
		function noticeRolling() {
			move += height;

			// animate를 통해서 부드럽게 top 올리기
			$(".rolling").animate({
				"top" : -move
			}, 600, function() {
				//if문을 통해 최대값보다 top가 올라갔다면 0으로 되돌리기
				if (move >= max) {
					$(this).css("top", 0);
					move = 0;
				}
				;
			});
		}
		;
		//자동롤링 setInterval를 사용해서 1000(1초) 마다 함수 실행
		noticeRollingOff = setInterval(noticeRolling, 6000);

		//마지막에 될 경우 clone을 통해 첫 번째 li 복사
		$(".rolling").append($(".rolling li").first().clone());

	});
</script>


<style>
#form-input {
	width: 700px;
	margin-left: 10px;
	margin-right: 10px;
}

#inlineFormCustomSelectPref {
	width: 150px;
	height: 35px;
}

#inlineFormCustomSelectPrefMBTI {
	width: 220px;
}

#BUTTONMO {
	width: 130px;
	height: 40px;
}

#alertsize {
	padding: 8px 10px;
	width: 150px;
	height: 40px;
	margin-right: 10px;
	text-align: center;
}

#alertsizeinput {
	padding: 8px 10px;
	width: 250px;
	height: 40px;
}
</style>


</head>
<body style="border: 5px solid red; margin-bottom: 500px;">
	
	<div style="border-bottom: 3px solid lightgray;">

		<top style="width:100%"> <jsp:include page="../template/top.jsp" /> </top>
	</div>
	<div class="container">
		<!-- 게시판 Title -->
		<h2 class="#">관리자</h2>
		<!-- 즐찾과 같은높이로 설정 -->
		<div style="width: 100%; float: none; margin: 20px auto">
			<div class="group row">
				<div class="alert alert-secondary text-center" role="alert"
					id="alertsizeinput">자유 게시판</div>
				<input type="text" class="form-control" id="form-input" name="#"
					style="margin-left: 10px" placeholder="공지">
				<button type="button" class="btn btn-secondary" id="BUTTONMO">저장</button>
			</div>
			<div class="group row">
				<div class="alert alert-secondary text-center" role="alert"
					id="alertsizeinput">직군별 게시판</div>
				<input type="password" class="form-control" id="form-input"
					placeholder="공지">
			<button type="button" class="btn btn-secondary" id="BUTTONMO">저장</button>
			</div>
			<div class="group row">
				<div class="alert alert-secondary text-center" role="alert"
					id="alertsizeinput">내일의 후배를 위해 한 마디</div>
				<input type="password" class="form-control" id="form-input"
					placeholder="공지">
				<button type="button" class="btn btn-secondary" id="BUTTONMO">저장</button>
			</div>
			<div class="group row">
				<div class="alert alert-secondary text-center" role="alert"
					id="alertsizeinput">매일 세 마디</div>
				<input type="text" class="form-control" id="form-input" name="#"
					placeholder="공지">
				<button type="button" class="btn btn-secondary" id="BUTTONMO">저장</button>
			</div>
			<div class="group row">
				<div class="alert alert-secondary text-center" role="alert"
					id="alertsizeinput">이거 vs 이거?</div>
				<input type="text" class="form-control" id="form-input" name="#"
					placeholder="공지">
				<button type="button" class="btn btn-secondary" id="BUTTONMO">저장</button>
			</div>
			<div class="group row">
				<div class="alert alert-secondary text-center" role="alert"
					id="alertsizeinput">스터디 그룹 모집</div>
				<input type="text" class="form-control" id="form-input" name="#"
					placeholder="공지">
				<button type="button" class="btn btn-secondary" id="BUTTONMO">저장</button>
			</div>
			<div class="group row">
				<div class="alert alert-secondary text-center" role="alert"
					id="alertsizeinput">게시판 개설 신청</div>
				<input type="text" class="form-control" id="form-input" name="#"
					placeholder="공지">
				<button type="button" class="btn btn-secondary" id="BUTTONMO">저장</button>
			</div>
		</div>
	</div>
</body>
</html>