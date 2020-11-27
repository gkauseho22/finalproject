<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="http://poiemaweb.com/assets/css/ajax.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>{게시판 이름}</title>

    <script>
        $(document).ready(function (){
            $(".result").click(function () {
                abc();
            })

            function abc() {
                $.ajax({
                    url:"jsonresult",
                    type:"post",
                    dataType : "json",
                    success : function (boardList){
                        for (var i=0;i<boardList.length;i++){
                            $("#boardList").append(boardList[i].list_content);
                        }
                    }


                })
            }
        })
        /*function abc()
        {
            $.ajax({
                url:"result",
                type:"get",
                dataType:"json",
                success: function (data){
                    for (var i =0; i<data.length; i++){
                        $("#boardList").append(data[i].list_title+"<br>")
                        .append(data[i].list_title+"<br>")
                        .append(data[i].list_content+"<br>")
                        .append(data[i].add_file+"<br>")
                    }
                }
            })
        }*/


    </script>
</head>
<body>
    <button type="button" class="result">에이잭사</button>
    <div id="boardList">

    </div>
</body>
</html>