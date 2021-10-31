<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
<!-- 게시글 수정 → db에 update되어 변경 → 변경된 것이 selectList에 업로드 -->
<jsp:include page="../home/header.jsp"/>
<link rel="stylesheet" href="css/notice.css">ㄴ
</head>
<body>
	<div align="center">
		<div><h1>수정이 완료 되었습니다.</h1></div>
		<div>
			<button type="button" onclick="location.href='noticeList.do'">게시글 목록</button> &nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='home.do'">HOME</button>
		</div>
	</div>
</body>
</html>