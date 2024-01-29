<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 페이지</title>
</head>
<body>
	<h1>에러 메시지입니다</h1>
	<h2>서비스 실패!</h2>
	<h2>${msg }</h2>
	

	<c:if test="${msg eq null }">
		<h2>NullPointerExcepion 발생</h2>
	</c:if>

</body>
</html>