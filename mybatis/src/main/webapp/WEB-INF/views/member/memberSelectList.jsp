<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버목록 보기</title>
<link rel="stylesheet" href="css/notice.css">
<jsp:include page="../home/header.jsp"/>
</head>
<body>

	 <c:forEach items="${members }" var="member">
	 	<div align="center">
			<div><h1>멤버 상세 조회</h1></div>
			<div>
				<table border="1">
					<tr>
						<th width="100">아이디</th>
						<td width="100" align="center">${member.id }</td>
					</tr>
					<tr>
						<th width="200">비밀번호</th>
						<td width="200" align="center">${member.password }</td>
					</tr>
					<tr>
						<th width="200">이름</th>
						<td width="200" align="center">${member.name }</td>
					</tr>
					<tr>
						<th width="100">권한</th>
						<td width="100" align="center">${member.author }</td>
					</tr>
				</table>
			</div><br>
		</div>
	 </c:forEach>
</body>
</html>