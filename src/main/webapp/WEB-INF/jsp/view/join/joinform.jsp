<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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

    <!-- 이미지 파일 -->
    <script src="https://kit.fontawesome.com/45fba14eff.js"
            crossorigin="anonymous"></script>

    <style>
        #form-input-id, #form-input-password01, #form-input-password02, #form-input-name {
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
                    <form action="postjoin" method="post" name="insertjoin">
                        <div class="form-group row ">
                            <div class="alert alert-secondary text-center" role="alert"
                                 id="alertsizeinput">아이디
                            </div>
                            <input type="text" class="form-control" id="form-input-id" name="user_id"
                                   style="margin-left: 10px" placeholder="4~15자리까지 입력해주세요" oninput="user_form_id()">
                            <!-- 중복 되었을 경우 버튼 변경 -->
                            <div id="check_id_mollang">
                                <button type="button" class="btn btn-secondary" id="BUTTONMO" onclick="user_check_id()">
                                    중복확인
                                </button>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="alert alert-secondary text-center" role="alert"
                                 id="alertsizeinput">비밀번호
                            </div>
                            <input type="password" class="form-control" id="form-input-password01"
                                   placeholder="4~15자리까지 입력해주세요" name="user_pw" oninput="checkPass01()">
                        </div>
                        <div class="form-group row">
                            <div class="alert alert-secondary text-center" role="alert"
                                 id="alertsizeinput">비밀번호확인
                            </div>
                            <input type="password" class="form-control" id="form-input-password02"
                                   placeholder="4~15자리까지 입력해주세요" oninput="checkPass02()">
                            <!-- 비밀번호 일치 되었을 경우 이미지 생성-->
                            <div id="check_pass"></div>
                        </div>
                        <div class="form-group row">
                            <div class="alert alert-secondary text-center" role="alert"
                                 id="alertsizeinput">닉네임
                            </div>
                            <input type="text" class="form-control" id="form-input-name" name="user_name"
                                   placeholder="4~15자리까지 입력해주세요" oninput="user_form_name()">
                            <!-- 닉네임 일치 되었을 경우 -->
                            <div id="check_name_mollang">
                                <button type="button" class="btn btn-secondary" id="BUTTONMO"
                                        onclick="user_check_name()">중복확인
                                </button>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="alert alert-secondary text-center" role="alert"
                                 id="alertsize">내직업
                            </div>
                            <select class="custom-select my-1 mr-sm-2"
                                    id="inlineFormCustomSelectPref" name="user_job">
                                <option selected>대분류</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select> <select class="custom-select my-1 mr-sm-2"
                                              id="inlineFormCustomSelectPref" name="user_job">
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
                                 id="alertsize">관심직업
                            </div>
                            <select class="custom-select my-1 mr-sm-2"
                                    id="inlineFormCustomSelectPref" name="inter_job1">
                                <option selected>대분류</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select> <select class="custom-select my-1 mr-sm-2"
                                              id="inlineFormCustomSelectPref" name="inter_job1">
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
                                    id="inlineFormCustomSelectPref" name="inter_job2">
                                <option selected>대분류</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select> <select class="custom-select my-1 mr-sm-2"
                                              id="inlineFormCustomSelectPref" name="inter_job2">
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
                                 id="alertsize">관심직업
                            </div>
                            <select class="custom-select my-1 mr-sm-2"
                                    id="inlineFormCustomSelectPref" name="inter_job3">
                                <option selected>대분류</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select> <select class="custom-select my-1 mr-sm-2"
                                              id="inlineFormCustomSelectPref" name="inter_job3">
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
                                 id="alertsize">MBTI
                            </div>

                            <select class="custom-select mr-sm-2"
                                    id="inlineFormCustomSelectPrefMBTI" name="mbti_mbti">
                                <option selected>List</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                            <button type="button" class="btn btn-secondary" id="BUTTONMO">MBTI
                                하러가기
                            </button>
                        </div>
                        <div class="form-group row-center text-center">
                            <button type="button" id="join-submit" class="btn btn-secondary" onclick="sucee()">
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

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
    /* 중복 값 검사 가능 변수 */
    var check_id = "0";
    var check_pass = "0";
    var check_name = "0";


    //아이디 중복 체크 하기
    function user_check_id() {
        const user_id = $('#form-input-id').val();

        $.ajax({
            url: "member_join_check_id",
            data: {User_id: user_id},
            dataType: "text",
            success: function (data) {
                alert(data);
                if (data == 'null') {
                    check_id = "1";
                    $('#check_id_mollang').empty();
                    $('#check_id_mollang').append("<i class='far fa-check-circle' style='font-size: 30px; margin-top: 5px; color:#00FF1F'></i>");
                } else {
                    check_id = "0";
                    $('#check_id_mollang').empty();
                    $('#check_id_mollang').append("<i class='far fa-times-circle' style='font-size: 30px; margin-top: 5px; color:#f00'></i>");
                }
            }
        })
    }

    //이름? 닉네임 중복 확인
    function user_check_name() {
        const User_name = $('#form-input-name').val();


        $.ajax({
            url: "member_join_check_name",
            data: {User_name: User_name},
            dataType: "text",
            success: function (data) {
                alert(data);
                if (data == 'null') {
                    check_name = "1";
                    $('#check_name_mollang').empty();
                    $('#check_name_mollang').append("<i class='far fa-check-circle' style='font-size: 30px; margin-top: 5px; color:#00FF1F'></i>");
                } else {
                    check_name = "0";
                    $('#check_name_mollang').empty();
                    $('#check_name_mollang').append("<i class='far fa-times-circle' style='font-size: 30px; margin-top: 5px; color:#f00'></i>");
                }
            }
        })
    }

    var pass01 = "";
    var pass02 = "";

    //비밀번호 중복 체크 하기
    function checkPass01() {
        pass01 = $('#form-input-password01').val();
        if (pass01 == pass02) {
            check_pass = "1";
            $('#check_pass').append("<i class='far fa-check-circle' style='font-size: 30px; margin-top: 5px; color:#00FF1F'></i>");
        } else {
            check_pass = "0";
            $('#check_pass').empty();
        }
    }

    function checkPass02() {
        pass02 = $('#form-input-password02').val();
        //비밀번호 체크
        if (pass01 == pass02) {
            check_pass = "1";
            $('#check_pass').append("<i class='far fa-check-circle' style='font-size: 30px; margin-top: 5px; color:#00FF1F'></i>");
        } else {
            check_pass = "0";
            $('#check_pass').empty();
        }
    }

    function user_form_id() {
        check_id = "0";
        $('#check_id_mollang').empty();
        $('#check_id_mollang').append("<button type='button' class='btn btn-secondary' id='BUTTONMO' onclick='user_check_id()' >중복확인</button>");
    }

    function user_form_name() {
        check_name = "0";
        $('#check_name_mollang').empty();
        $('#check_name_mollang').append("<button type='button' class='btn btn-secondary' id='BUTTONMO' onclick='user_check_name()' >중복확인</button>");
    }

    function sucee() {

        if(check_id == "1" && check_pass == "1" && check_name == "1") {
            alert("회원가입에 성공");
            document.insertjoin.submit();
        }
        else {
            alert('회원가입을 정상적으로 입력 바랍니다.');
        }

    }

</script>

</body>
</html>