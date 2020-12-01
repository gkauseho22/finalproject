<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join section</title>

<link rel="stylesheet" href="../css/section.css">

<%
	String pp = null;
if (pp == null) {
	pp = "joinform";
}
%>
</head>
<body>

	<div id="grid_m">
		<div class="sec_m" style="margin-top: 40px;"><jsp:include
				page='<%=pp + ".jsp"%>' /></div>
		<div class="vl"></div>
		<div class="as_m">
			<jsp:include page="../template/aside.jsp" />
		</div>
	</div>


</body>
</html>