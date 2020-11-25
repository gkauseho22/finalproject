<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>{게시판 이름}</title>
</head>
<body>
<c:forEach var="boardList" items="${boardList}">
    ${boardList.list_title} <b/>
    ${boardList.add_file} <b/>
    ${boardList.list_content} <b/>
</c:forEach>
</body>
</html>