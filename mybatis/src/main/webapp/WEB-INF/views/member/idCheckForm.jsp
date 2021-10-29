<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복체크</title>
<script type="text/javascript">
	//부모jsp 즉 회원가입 jsp의 id 값을 가져와서 중복체크 화면 아이디 입력란에 넣기
	function parentValue(){
		document.getElementById("userId").value = opener.document.frm.id.value;
	}
	
	//아이디 중복 체크 함수. 
	function idCheck(){
		var id = document.getElementById("userId").value; //중복체크 화면에 입력한 id를 "id"라고 선언.
		
		if(!id){
			alert("아이디를 입력하지 않았습니다."); 
			return false;
		}else{
			//db의 아이디 값과 중복체크 화면에서 입력한 아이디값이 같으면 중복체크 완료
		}
		
	}
</script>
</head>
<jsp:include page="../home/header.jsp"/>
<body onload="parentValue()">
	<div id="chk "align="center">
		<form id="checkForm">
			<input type="text" name="idinput" id="userId">
			<input type="button" value="중복확인" onclick="idCheck()">
		</form>
		<div id = "msg"></div><br>
		<input id="calcelBtn" type="button" value="취소" onclick="location.href='memberJoinForm.do'"><br>
	</div>
</body>
</html>