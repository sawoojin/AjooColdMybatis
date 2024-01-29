<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
</head>
<body>
	<form action="/member/modify.do" method="post">
		<fieldset>
			<legend>회원 정보 수정</legend>
			<ul>
				<li>
					<label for="member-Id">아이디</label> 
					<input type="text" name="member-id" id="member-id"
					value = "${member.memberId }">
				</li>			
				<li>
					<label for="member-pw">비밀번호</label> 
					<input type="text" name="member-pw" id="member-pw"
					value = "${member.memberPw }">
				</li>
				<li>
					이름 : ${member.memberName }	
				</li>
				<li>
					나이 : ${member.age }
				</li>
				<li>
					<label for="gender">성별</label>						
					<c:if test="${member.gender eq 77 }">남</c:if>
					<c:if test="${member.gender eq 70 }">여</c:if>
				</li>
				<li>
					<label for="email">이메일</label> 
					<input type="text" name="email" id="email"
					value = "${member.email }">
				</li>
				<li>
					<label for="phone">전화번호</label> 
					<input type="text" name="phone" id="phone"
					value = "${member.phone }">
				</li>
				<li>
					<label for="address">주소</label> 
					<input type="text" name="address" id="address"
					value = "${member.address }">
				</li>
				<li>
					<label for="hobby">취미</label> 
					<input type="text" name="hobby" id="hobby"
					value = "${member.hobby }">
				</li>
			</ul>	
		</fieldset>
		<input type="submit" value="수정하기">
		<input type="reset" value="초기화">
	</form>
</body>
</html>