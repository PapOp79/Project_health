<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage</title>

	<script>
		function deletechk(){
			if(confirm("정말로 회원탈퇴를 하시겠습니까?") == true){
			location.href="delete";		
			} else {
				alert("♥");
			location.href="index";
			}
			
		}
		
		function submitform(){
			var pw = document.getElementById('modifyPw').value;
			var pwchk = document.getElementById('modifyPwChk').value;
			if(pw == pwchk){
				document.getElementById('modifyform').submit();				
			} else{
				alert("비밀번호 다시 입력")
				document.getElementById('modifyPw').value="";
				document.getElementById('modifyPwChk').value="";
				document.getElementById('modifyPw').focus();
			}
			
		}
	
	</script>

</head>
<body>

	<%@ include file="include/header.jspf"%>

	<div style="position: relative; top: -70px;">

		<img src="resources/static/img/index-background.png"
			style="width: 100%; height: 100%; flex: auto;">
	</div>

	<div style="background-color: rgba(17, 17, 17, 0.8); width: 450px; height: 600px; border-color: #fe6000; border-style: double; position: absolute; top: 50%; left: 50%; margin-top: -300px; margin-left: -225px;">
	
		<form  id="modifyform" action="modify-controller" method="post" style="align-content: center; margin-top: 20px; margin-left: 30px;">
			<input class="gray_textbox" style="width:85%; height:30px; align-self: center;"
			type="text" id="modifyId" name="modifyId" readonly="readonly" value="${user_id } "><br>
			<input class="gray_textbox" 
			type="password" id="modifyPw" name="modifyPw" placeholder="비밀번호" 
			style="width:85%; height:30px; align-self: center;"><br>
			<input class="gray_textbox" 
			type="password" id="modifyPwChk" name="modifyPwChk" placeholder="비밀번호 확인" 
			style="width:85%; height:30px; align-self: center;"><br>
			<input class="gray_textbox" 
			type="text" id="modifyName" name="modifyName" placeholder="이름" 
			style="width:85%; height:30px; align-self: center;"><br>
			<input class="gray_textbox" 
			type="text" id="modifyEmail" name="modifyEmail" placeholder="이메일" 
			style="width:85%; height:30px; align-self: center;"><br>
			
			
			<button class="orange_btn" 
			type="button" id="modify-btn" style="width:40%; align-self: center;" onclick="submitform()"> 정보 수정 
			</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="orange_btn" 
			type="button" id="delete-btn" style="width:40%; align-self: center;" onclick="deletechk();"> 회원 탈퇴 
			</button>
		</form>
	</div>


	<%@ include file="include/footer.jspf"%>

</body>
</html>