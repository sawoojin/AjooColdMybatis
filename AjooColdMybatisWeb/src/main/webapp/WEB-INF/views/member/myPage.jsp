<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	<form action="/member/myPage.do" method="post">
		<ul>
			<li>
				<label for="member-id">아이디</label> 
				${member.memberId }
			</li>			
			<li>
				<label for="member-pw">비밀번호</label> 
				${member.memberPw }
			</li>
			<li>
				<label for="member-name">이름</label> 
				${member.memberName }			
			</li>
			<li>
				<label for="gender">성별</label>							
				남<input type="radio" <c:if test="${member.gender eq 77 }">checked</c:if>>
				여<input type="radio" <c:if test="${member.gender eq 70 }">checked</c:if>>
			</li>
			<li>
				<label for="age">나이</label> 
				${member.age }		
			</li>
			<li>
				<label for="email">이메일</label> 
				${member.email }
			</li>
			<li>
				<label for="phone">전화번호</label> 
				${member.phone }
			</li>
			<li>
				<label for="address">주소</label> 
				${member.address }
			</li>
			<li>
				<label for="hobby">취미</label> 
				${member.hobby }
			</li>
		</ul>
		<a href="/member/modify.do?memberId=${sessionScope.memberId }">정보수정</a><br>
		<a href="/member/delete.do?memberId=${sessionScope.memberId }">회원탈퇴</a><br>
	</form>
</body>
</html>