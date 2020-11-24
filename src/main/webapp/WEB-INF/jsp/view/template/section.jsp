<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	String pp = null;
if (pp == null) {
	pp = "../board/topic_view";
}
%>
<link rel="stylesheet" href="../../css/section.css">



</head>
<body>
	<!-- 세션 영역 -->
	<div id="grid_m" style="border: 3px solid pink">
		<div class="sec_m">
			<jsp:include page='<%=pp + ".jsp"%>' />
		</div>
		<div class="vl"></div>
		<div class="as_m" style="border: 3px solid gray">
			<jsp:include page="aside.jsp" />
		</div>
	</div>

</body>
</html>