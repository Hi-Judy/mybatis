<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	//회원가입 입력값들 검사, 아이디 중복 체크
	function MemberValidation(){
		var id = frm.id.value;
		var pw = frm.password.value;
		var pw1 = frm.passwordcheck.value;
		
		if(!id){
			alert("아이디를 입력하세요.");
			frm.id.focus();
			return false;
		}
		
		//if(frm.idDuplication.value != "idCheck"){
		//	alert("아이디 중복 체크를 해주세요.");
		//	return false;
		//}
		
		if(!pw || !pw1){
			alert("비밀번호를 입력하세요");
			frm.password.focus();
			return false;
		}

		if(pw == pw1){
			frm.submit();
		}else{
			alert("비밀번호가 일치하지 않습니다.")
			frm.password.focus();
			return false;
		}
	}
	
	//아이디 중복체크 화면 열기
	//function openIdCheck(){
	//	window.open("/idCheckForm.jsp");
	//}

	
</script>
</head>
<jsp:include page="../home/header.jsp"/>
<body>
	<div align="center">
		<div><h1>회원가입</h1></div>
		<div>
			<form id="frm" name="frm" action="memberJoin.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="200">ID</th>
							<td width="300">
								<input type="text" id="id" name="id" required="required">
								<input type="button" value="중복확인" onclick="location.href='idCheckForm.do'">
								<input type="hidden" id="idDuplication" name="idDuplication" value="idUncheck">
							</td>	
						</tr>
						<tr>
							<th width="200">PASSWORD</th>
							<td width="300">
								<input type="password" id="password" name="password" required="required">
							</td>	
						</tr>
						<tr>
							<th width="200">PASSWORD CHECK</th>
							<td width="300">
								<input type="password" id="passwordcheck" name="passwordcheck" required="required">
							</td>	
						</tr>
						<tr>
							<th width="200">NAME</th>
							<td width="300">
								<input type="text" id="name" name="name">
							</td>	
						</tr>
						<tr>
							<th width="200">PHONE</th>
							<td width="300">
								<input type="text" id="tel" name="tel">
							</td>	
						</tr>
						<tr>
							<th width="200">ADDRESS</th>
							<td width="300">
								<input type="text" id="address" name="address">
							</td>	
						</tr>
					</table>
				</div><br>
					<input type="hidden" id="author" name="author" value="USER"> <!-- 회원가입하면 default로 user 로 저장됨  -->
					<input type="button" value="회원가입" onclick="MemberValidation()"> &nbsp;&nbsp;&nbsp;
					<input type="reset" value="취소">
			</form>
		</div>
	</div>
</body>
</html>