<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
<link rel="stylesheet" href="css/notice.css">
<!-- 게시글 수정 → db에 update되어 변경 → 변경된 것이 selectList에 업로드 -->
<jsp:include page="../home/header.jsp"/>
</head>
<body>
	<div align="center">
		<div><h1>게시글 수정</h1></div>
		<div>
			<form id="frm" action="noticeUpdate.do" method="post">
			<table border="1">
				<tr>
					<th width="100">순번</th>
					<td width="100" align="center">
						<input type="text" id="nid" name="nid" value="${notice.nId }" readonly="readonly"></td>
					<th width="200">작성자</th>
					<td width="200" align="center">
						<input type="text" id="id" name="id" value="${notice.name }" readonly="readonly"></td>
					<th width="200">작성일</th>
					<td width="200" align="center">
						<input type="text" id="writeDate" name="writeDate" value="${notice.writeDate }" readonly="readonly"></td>
					<th width="100">조회수</th>
					<td width="100" align="center">
						<input type="text" id="hit" name="hit" value="${notice.hit }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="10">
						<input type="text" id="title" name="title" value="${notice.title }"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="10">
						<textarea rows="10" cols="100" id="contents" name="contents">${notice.contents }</textarea>
					</td>
				</tr>
			</table>
				<input type="submit" value="저 장"> &nbsp;&nbsp;&nbsp;
				<input type="reset" value="취 소"> &nbsp;&nbsp;&nbsp;
				<input type="button" value="목 록" onclick="location.href='noticeList.do'">
			</form>
		</div><br>
		
	</div>
</body>
</html>