<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<h3>회원정보를 입력해주세요</h3>
	<fieldset>
		<legend>회원가입</legend>
		<form action="/member/register.do" method="post">
			<ul>
				<li>
					<label for="memberId">아이디</label> 
					<input type="text" name="memberId" id="memberId">
				</li>			
				<li>
					<label for="memberPw">비밀번호</label> 
					<input type="text" name="memberPw" id="memberPw">
				</li>
				<li>
					<label for="memberName">이름</label> 
					<input type="text" name="memberName" id="memberName">			
				</li>
				<li>
					<label for="gender">성별</label> 
					남<input type="radio" name="gender" id="gender" value="M">		
					여<input type="radio" name="gender" id="gender" value="F">		
				</li>
				<li>
					<label for="age">나이</label> 
					<input type="text" name="age" id="age">			
				</li>
				<li>
					<label for="email">이메일</label> 
					<input type="text" name="email" id="email">
				</li>
				<li>
					<label for="phone">전화번호</label> 
					<input type="text" name="phone" id="phone">
				</li>
				<li>
					<label for="address">주소</label> 
					<input type="text" name="address" id="address">
				</li>
				<li>
					<label for="hobby">취미</label> 
					<input type="text" name="hobby" id="hobby">
				</li>
			</ul>
		<input type="submit" value="가입하기">
		<input type="reset" value="초기화">
	</form>
	</fieldset>
</body>
</html>