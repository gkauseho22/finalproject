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


<link rel="stylesheet" href="../css/template.css">
</head>
<body style="margin-left: 5%; padding-right: 8%">
	<div style="border-bottom: 3px solid lightgray;">

		<top style="width:100%"> <jsp:include page="top.jsp" /> </top>
	</div>
	<div>
		<section style="width: 100%">
			<jsp:include page="section.jsp" />
		</section>
	</div>
	<!-- css error -->
	<%-- <div>
		<footer style="width: 100%">
			<jsp:include page="footer.jsp" />
		</footer>
	</div> --%>
</body>
</html>