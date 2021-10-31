<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 페이지</title>
<link rel="stylesheet" href="css/notice.css">
<script type="text/javascript">
	function noticeEdit(str){
		if(str == 'E'){
			frm.action = "noticeUpdateForm.do";
		}else{
			frm.action = "noticeDelete.do"
		}
		frm.submit();
	}
</script>
</head>
<jsp:include page="../home/header.jsp"/>
<body>
	<div align="center">
		<div><h1>게시글 상세 조회</h1></div>
		<div>
			<table border="1">
				<tr>
					<th width="100">순번</th>
					<td width="100" align="center">${notice.nId }</td>
					<th width="200">작성자</th>
					<td width="200" align="center">${notice.name }</td>
					<th width="200">작성일</th>
					<td width="200" align="center">${notice.writeDate }</td>
					<th width="100">조회수</th>
					<td width="100" align="center">${notice.hit }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="10">${notice.title }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td class="noticeSelectTd" colspan="10" height=300px>${notice.contents }	</td>
				</tr>
			</table>
		</div><br>
		<div>
			<button type="button" onclick="location.href='noticeList.do'">게시글 목록</button> &nbsp;&nbsp;&nbsp;
			<button type="button" onclick="noticeEdit('E')">게시글 수정</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="noticeEdit('D')">게시글 삭제</button>&nbsp;&nbsp;&nbsp;
		</div>
		<div><!-- 숨겨진 폼 만들기 -->
			<form id="frm" action="" method="post">
				<input type="hidden" id="nid" name="nid" value="${notice.nId }">
			</form>
		</div>
	</div>
</body>
</html>