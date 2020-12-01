<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 정보</title>

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
.enp_summary {
	background-color: lightgray;
	width: 230px;
	height: 130px;
}

/* job 요약 */
.job_summary {
	background-color: lightgray;
	width: 230px;
	height: 130px;
}


/* 기본 상태 none */
.mollang_check {
	display: none;
}

.mollang_check.active {
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
}
</style>




</head>
<body>

	<div class="container">
		<!-- 게시판 Title -->
		<div class="job_infomamam"
			style="display: flex; justify-content: space-between;">
			<h2 class="#" style="margin: 0 20px 60px 0;">기업 정보</h2>

			<button type="button" class="btn btn-secondary"
				style="height: 40px; width: 100px;">공채 달력</button>
		</div>
		<!-- 기업 정보 / 우수 기업 정보 -->
		<div style="display: flex; flex-direction: row;">
			<h5>★ 우수 기업</h5>
			<h5 class="mollang_plus_btn">더 보기...</h5>
		</div>
		<div
			style="display: flex; flex-direction: row; justify-content: space-around; margin-bottom: 20px;">
			<div class="enp_summary">기업 이름</div>
			<div class="enp_summary">기업 이름</div>
			<div class="enp_summary">기업 이름</div>

			<!-- 더 보기를 눌렀을 경우. -->
		</div>
		<!-- 공백 영역 -->
		<div style="margin: 20px;"></div>
		<div class="mollang_check">
		
		<!-- 얘 기준으로 margin-bottom -->
			<div
				style="display: flex; flex-direction: row; justify-content: space-around; margin-bottom: 20px;" >
				<div class="enp_summary" >기업 이름</div>
				<div class="enp_summary">기업 이름</div>
				<div class="enp_summary">기업 이름</div>

			</div>
			<div
				style="display: flex; flex-direction: row; justify-content: space-around; margin-bottom: 20px;" >
				<div class="enp_summary">기업 이름</div>
				<div class="enp_summary">기업 이름</div>
				<div class="enp_summary">기업 이름</div>

			</div>
		</div>



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
			<h5 class="card-title" style="text-indent: 0.5em; margin-top: 20px">기업
				정보</h5>
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
									<div class="job_summary">기업 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row"><div class="job_summary">기업 이름</div></th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">기업 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">기업 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">기업 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">기업 이름</div>
								</th>

							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">기업 이름</div>
								</th>
							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">기업 이름</div>
								</th>
							</tr>
							<tr>
								<th scope="row">
									<div class="job_summary">기업 이름</div>
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
					<div class="enp_root1_0_1" style="height: 50px;">
						<h2>선택한 기업 이름</h2>
					</div>
					<div class="space" style="height: 1px; background-color: gray;">
					</div>
					<div class="enp_root1_0_1"
						style="background-color:; height: 350px;">
						기업 정보 요약
						<div class="1">내용</div>
					</div>
					<div class="enp_root1_0_2"
						style="background-color:; height: 200px;">
						기업리뷰 ★★★★★
						<div class="3">리스트 항목</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
<script defer>
//버튼 변수 만들기
const mollang_plus_btn = document.querySelector('.mollang_plus_btn');

const mollang_check = document.querySelector(' .mollang_check');

mollang_plus_btn.addEventListener('click', () => {
	mollang_check.classList.toggle('active');
});
</script>
</html>