<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
<!-- 게시글 수정 → db에 update되어 변경 → 변경된 것이 selectList에 업로드 -->
<jsp:include page="../home/header.jsp"/>
</head>
<body>
	<div align="center">
		<div><h1>게시글 수정</h1></div>
		<div>
			<form id="frm" action="noticeUpdate.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="100">순번</th>
							<td width="100">
								<input id="nid" name="nid" readonly="readonly"> ${notice.nid }</td>
							
							<th width="200">작성자</th>
							<td width="200">
								<input id="name" name="name" readonly="readonly"> ${notice.name }</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="10">
								<textarea rows="10" id="title" name="title">${notice.title }</textarea> 
							</td>
							
							<th>내용</th>
							<td colspan="10">
								<textarea rows="10" id="contents" name="contents">${notice.contents }</textarea> 
							</td>

							<th width="100">작성일</th>
							<td width="150">
								<input id="writeDate" name="writeDate"> ${notice.writeDate }</td>
						</tr>					
					</table>
				
				</div>
			
			</form>
		</div>
	</div>
</body>
</html>