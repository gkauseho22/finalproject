<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>joinform</title>

	<meta name="viewport"
		  content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
		  href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		  integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
		  crossorigin="anonymous">

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
	<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
			crossorigin="anonymous"></script>


	<!-- j Query -->
	<script type="text/JavaScript" src="../lib/jquery-3.5.1.js"></script>
	<script type="text/JavaScript" src="../lib/jquery-3.5.1.min.js"></script>

	<style>
		#form-input {
			width: 350px;
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
			width: 150px;
			height: 40px;
		}
	</style>

</head>
<body style="margin-left: 5%; padding-right: 8%">

<!-- content view -->
<div class="container">
	<!-- 맨위에 가운데 배치되는게 아래로 -->
	<div class="card shadow">
		<div class="card-body">
			<h2 class="#">회원 가입</h2>
			<!-- 즐찾과 같은높이로 설정 -->
			<div class="row" style="width: 100%">
				<div style="width: 64%; float: none; margin: 20px auto">
					<form action="/joinPro" method="post" name="insertjoin">
						<div class="form-group row ">
							<div class="alert alert-secondary text-center" role="alert"
								 id="alertsizeinput">아이디</div>
							<input type="text" class="form-control" id="form-input" name="user_id"
								   style="margin-left: 10px" placeholder="4~15자리까지 입력해주세요">
							<button type="button" class="btn btn-secondary" id="BUTTONMO">중복확인</button>
						</div>
						<div class="form-group row">
							<div class="alert alert-secondary text-center" role="alert"
								 id="alertsizeinput">비밀번호</div>
							<input type="password" class="form-control" id="form-input" name="user_pw"
								   placeholder="4~15자리까지 입력해주세요">
						</div>
						<div class="form-group row">
							<div class="alert alert-secondary text-center" role="alert"
								 id="alertsizeinput">비밀번호확인</div>
							<input type="password" class="form-control" id="form-input"
								   placeholder="4~15자리까지 입력해주세요">
							<i class="far fa-check-circle" style="font-size: 30px; margin-top: 5px; color:lightgray"></i> <!--check icon  -->
						</div>
						<div class="form-group row">
							<div class="alert alert-secondary text-center" role="alert"
								 id="alertsizeinput">닉네임</div>
							<input type="text" class="form-control" id="form-input" name="user_name"
								   placeholder="4~15자리까지 입력해주세요">
							<button type="button" class="btn btn-secondary" id="BUTTONMO">중복확인</button>
						</div>
						<div class="form-group row">
							<div class="alert alert-secondary text-center" role="alert"
								 id="alertsize">내직업</div>
							<select class="custom-select my-1 mr-sm-2"
									id="inlineFormCustomSelectPref">
								<option selected>대분류</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select> <select class="custom-select my-1 mr-sm-2"
											  id="inlineFormCustomSelectPref">
							<option selected>중분류</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select> <select class="custom-select my-1 mr-sm-2"
										  id="inlineFormCustomSelectPref" name="user_job">
							<option selected>소분류</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
						</div>
						<div class="form-group row">
							<div class="alert alert-secondary text-center" role="alert"
								 id="alertsize">관심직업</div>
							<select class="custom-select my-1 mr-sm-2"
									id="inlineFormCustomSelectPref">
								<option selected>대분류</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select> <select class="custom-select my-1 mr-sm-2"
											  id="inlineFormCustomSelectPref">
							<option selected>중분류</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select> <select class="custom-select my-1 mr-sm-2"
										  id="inlineFormCustomSelectPref" name="inter_job1">
							<option selected>소분류</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
						</div>

						<div class="form-group row">
							<div class="alert alert-secondary" id="alertsize">관심직업</div>
							<select class="custom-select my-1 mr-sm-2"
									id="inlineFormCustomSelectPref">
								<option selected>대분류</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select> <select class="custom-select my-1 mr-sm-2"
											  id="inlineFormCustomSelectPref">
							<option selected>중분류</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select> <select class="custom-select my-1 mr-sm-2"
										  id="inlineFormCustomSelectPref" name="inter_job2">
							<option selected>소분류</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
						</div>

						<div class="form-group row">
							<div class="alert alert-secondary text-center" role="alert"
								 id="alertsize">관심직업</div>
							<select class="custom-select my-1 mr-sm-2"
									id="inlineFormCustomSelectPref">
								<option selected>대분류</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select> <select class="custom-select my-1 mr-sm-2"
											  id="inlineFormCustomSelectPref">
							<option selected>중분류</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select> <select class="custom-select my-1 mr-sm-2"
										  id="inlineFormCustomSelectPref" name="inter_job3">
							<option selected>소분류</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
						</div>

						<div class="form-group row">
							<div class="alert alert-secondary text-center" role="alert"
								 id="alertsize">MBTI</div>

							<select class="custom-select mr-sm-2"
									id="inlineFormCustomSelectPrefMBTI" name="mbti=mbti">
								<option selected>List</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
							<button type="button" class="btn btn-secondary" id="BUTTONMO">MBTI
								하러가기</button>
						</div>
						<div class="form-group row-center text-center">
							<button type="submit" id="join-submit" class="btn btn-secondary">
								회원가입<i class="fa fa-check spaceLeft"></i>
							</button>
							<button type="reset" class="btn btn-secondary">
								가입취소<i class="fa fa-times spaceLeft"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>