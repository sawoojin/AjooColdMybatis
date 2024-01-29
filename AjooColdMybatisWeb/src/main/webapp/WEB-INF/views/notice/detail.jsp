<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세조회</title>
</head>
<body>
	<h1>공지사항 상세</h1>
	<ul>
		<li>
			<label>글번호</label>
			<span>${notice.noticeNo }</span>
		</li>
		<li>
			<label>작성일</label>
			<span>${notice.noticeDate }</span>
		</li>
		<li>
			<label>글쓴이</label>
			<span>${notice.noticeWrit }</span>
		</li>
		<li>
			<label>제목</label>
			<span>${notice.noticeSub }</span>
		</li>
		<li>
			<label>내용</label>
			<span>${notice.noticeCon }</span>
		</li>
	</ul>
	<a href="/notice/list.do">목록으로 이동</a>
	<a href="/notice/modify.do?noticeNo=${notice.noticeNo }">수정하기</a>
	<a href="javascript:void(0)" onclick="deleteCheck();">삭제하기</a>
	<script>
		function deleteCheck() {
			if(confirm("정말 지워?")) {
				var noticeNo = "${notice.noticeNo }";
				location.href = "delete.do?noticeNo="+noticeNo;
			}
		}
	</script>
</body>
</html>