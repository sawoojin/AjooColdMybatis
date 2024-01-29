<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아주 마이바티스 메인</title>
</head>
<body>
	<c:if test="${sessionScope.memberId eq null }">
	<form action="/member/login.do" method = "post">
		<fieldset>
			<legend>로그인</legend>
				<input type="text" name="memberId" placeholder="아이디 입력"><br>
				<input type="password" name="memberPw" placeholder="비밀번호 입력">
		</fieldset>
		<div>
			<input type="submit" value="로그인">
			<a href="/member/register.do">회원가입</a>
		</div>
	</form>	
	</c:if>
	<c:if test="${sessionScope.memberId ne null }">
		${memberName }님 환영합니다!<br>
		<a href="/member/logout.do">로그아웃</a>
		<a href="/member/myPage.do">마이페이지</a>
	</c:if>
</body>
</html>