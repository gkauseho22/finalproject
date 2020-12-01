<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<link rel="stylesheet" href="../css/section.css">

	<c:set var="pp" value="${pp}"/>
	<c:if test="${pp eq null}">
		<c:set var="pp" value="../main/main.jsp"/>
	</c:if>


</head>
<body>

	<!-- 관리자부분은 사이드가 없으므로 여기부분을 on / off 처리 해야 한다. -->
	<!-- 세션 영역 -->
	<div id="grid_m" style="border: 3px solid pink">
		<div class="sec_m">
			<jsp:include page='${pp}' />
		</div>
		<div class="vl"></div>
		<div class="as_m" style="border: 3px solid gray">
			<jsp:include page="aside.jsp" />
		</div>
	</div>

</body>
</html>