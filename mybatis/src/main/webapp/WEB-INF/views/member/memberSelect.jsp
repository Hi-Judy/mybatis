<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 한 명 보기</title>
<link rel="stylesheet" href="css/notice.css">
<jsp:include page="../home/header.jsp"/>
</head>
<body>
	<div align="center">
			<div><h1>멤버 상세 조회</h1></div>
			<div>
				<table border="1">
					<tr>
						<th width="100">아이디</th>
						<td width="100" align="center">${member.id }</td>
					</tr>
					<tr>
						<th width="200">이름</th>
						<td width="200" align="center">${member.name }</td>
					</tr>
					<tr>
						<th width="200">주소</th>
						<td width="200" align="center">${member.address }</td>
					</tr>
					<tr>
						<th width="100">전화번호</th>
						<td width="100" align="center">${member.tel }</td>
					</tr>
				</table>
			</div><br>
			<div>
			<button type="button" onclick="location.href='home.do'">HOME</button> &nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='noticeList.do'">게시글 목록</button>
			</div>
		</div>
</body>
</html>