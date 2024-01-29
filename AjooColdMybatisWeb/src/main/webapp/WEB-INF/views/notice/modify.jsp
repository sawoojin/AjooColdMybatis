<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
</head>
<body>
	<h1>공지사항 수정</h1>
	<form action="/notice/modify.do" method="post">
	<input type="hidden" name="notice-noticeNo" value="${notice.noticeNo }">
		<fieldset>
			<legend>공지사항 수정</legend>
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="notice-subject" value="${notice.noticeSub }">
				</li>
				<li>
					<label>내용</label>
					<textarea rows="10" name="notice-content" cols="40">${notice.noticeCon }</textarea>
				</li>
			</ul>
		</fieldset>
		<div>
			<input type="submit" value="수정하기">
		</div>
	</form>
</body>
</html>