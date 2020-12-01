<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 폰트 파일 -->
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@700&display=swap"
	rel="stylesheet">
	
	<script src="https://kit.fontawesome.com/45fba14eff.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="../css/template.css">
</head>
<body style="margin-left: 5%; padding-right: 8%">

<div style="border-bottom: 3px solid lightgray;">
	
		<top style="width:100%; margin-bottem:"> <jsp:include page="../template/top.jsp" /> </top>
	</div>
	<div>
		<section style="width: 100%;">
			<jsp:include page="joinsection.jsp" />		<!--content join -->
		</section>
	</div>
	<div>
		<footer style="width: 100%">
			<jsp:include page="../template/footer.jsp" />
		</footer>
	</div>



</body>
</html>