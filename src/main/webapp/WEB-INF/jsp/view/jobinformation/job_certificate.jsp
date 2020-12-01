<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자격증</title>

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

/*게시판 짤거다 이거건들면...다이다이 */
.main_common {
	display: flex;
	border:;
	width: 100%;
	height: 650px;
}

.main1 {
	border:;
	margin-right: 20px;
	overflow: scroll;
	width: 300px;
	height: 600px;
}

.main2 {
	border:;
	width: 780px;
	height: 600px;
}

/* job 요약 */
.job_summary {
	background-color: lightgray;
	width: 230px;
	height: 130px;
}
</style>


</head>
<body>

	<div class="container">
		<!-- 게시판 Title -->
		<div class="job_infomamam" style="display: flex">
			<h2 class="#" style="margin: 0 20px 60px 0;">직업 정보</h2>
			<button type="button" class="btn btn-secondary"
				style="height: 40px; margin-right: 20px;">직업 정보</button>
			<button type="button" class="btn btn-secondary"
				style="height: 40px; margin-right: 20px;">직업 훈련</button>
			<button type="button" class="btn btn-secondary"
				style="height: 40px; width: 100px;">자격증</button>
		</div>
		<div></div>

		<h4>★ 오늘 뜨는 직업</h4>
		<ol>
			<li>rank</li>
			<li>rank</li>
			<li>rank</li>
		</ol>

		<!-- 검색 창 -->
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-default"><i
					class="fas fa-search"></i></span>
			</div>
			<input type="text" class="form-control"
				aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default">


			<!-- 버튼 -->
			<button type="button" class="btn btn-secondary mollang_btn">글쓰기</button>

		</div>
		<div class="space" style="height: 1px; background-color: lightgray;"></div>
		<!-- 즐찾과 같은높이로 설정 -->
		<div style="width: 100%; height: 100%; float: none; margin: 20px auto">
			<h5 class="card-title" style="text-indent: 0.5em; margin-top: 20px">자격증</h5>
			<!-- content -->
			<div class="main_common">
				<div class="main1">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">
									<div class="job_summary">자격증 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row"><div class="job_summary">자격증 이름</div></th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">자격증 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">자격증 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">자격증 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">자격증 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">자격증 이름</div>
								</th>
							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">자격증 이름</div>
								</th>
							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">자격증 이름</div>
								</th>
							</tr>
						</tbody>
					</table>
					<div class="next_list">
						<div class="d-none d-sm-block">
							<ul class="pagination justify-content-center">
								<li class="page-item"><a href="#" class="btn btn-secondary"><</a></li>
								<li class="page-item"><a href="#" class="btn btn btn-light">1</a>
								</li>
								<li class="page-item"><a href="#" class="btn btn btn-light">2</a>
								</li>
								<li class="page-item"><a href="#" class="btn btn btn-light">3</a>
								</li>
								<li class="page-item"><a href="#" class="btn btn btn-light">4</a>
								</li>
								<li class="page-item"><a href="#" class="btn btn btn-light">5</a>
								</li>
								<li class="page-item"><a href="#" class="btn btn-secondary">></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="main2"
					style="display: inline-block; width: 72%; background-color: lightgray;">
					<div class="job_root1_0_1" style="height: 50px;">
						<h2>자격증 이름</h2>
					</div>
					<div class="space" style="height: 1px; background-color: gray;">
					</div>
					<div class="job_root1_0_2"
						style="background-color:; height: 120px;">자격증 정보
					<div class="1">내용</div> 
						</div>
					<div class="job_root1_0_3"
						style="background-color:; height: 200px;">자격증 지원 자격
						<div class="2">내용</div> 
						</div>			
					<div class="job_root1_0_4"
						style="background-color:; height: 230px;">자격증 지원 자격
						<div class="3">내용</div> 
						</div>		
				</div>

			</div>
		</div>
	</div>
</body>
</html>