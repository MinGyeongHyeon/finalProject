<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<style>
.mainArea {
	width: 70%;
	height: 95%;
	background-color: white;
	margin: 0 auto;
}
table tr {
	height:40px;
}
#nextBtn {
	color:white;
	background:#ff7a7a;
}
#nextBtn:hover {
	background:#fc6f6f;
}

</style>

</head>

<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">

<body>
	<%-- <jsp:include page="${ contextPath }/WEB-INF/views/common/joinHeader.jsp"/> --%>
	
	<br><br>
	<div class="mainArea">
		<h3 style="padding-top: 50px; padding-left: 50px;"><b>비밀번호 찾기</b></h3>
		<hr width="90%">
		<br>
		<h4 align="center"><b>비밀번호 재설정</b></h4>
		<h5 align="center">재설정 할 비밀번호를 설정해주세요.</h5><br>
		
		<input type="hidden" id="userId" value="${ selectId }"/>
		
		<table align="center" id="inputArea">
		
			<tr>
				<td align="center">* 비밀번호 재설정 * </td>
			</tr>
			<tr>
				<td>비밀번호 입력</td>
				<td><input type="password" class="form-control phonefind" id="userPwd" placeholder="재설정 할 비밀번호 입력" size="40"></td>
		
			</tr>
			
			<tr id="aftertr">
				<td>비밀번호 확인</td>
				<td colspan="2"><input type="password" class="form-control emailfind" placeholder="비밀번호 확인" id="userPwd2"  ></td>
		
			</tr>
		
			

			
		</table>
		<br><br>
			
		<div id="buttonArea" align="center">
			<button class="huge ui secondary button" id="selectBtn" style="width:200px" type="button">확인</button>
		</div>
		

		</div>
	<br><br><br>
	
	<script>
	
		$('#userPwd2').keyup(function(){
		
			var userPwd = $('#userPwd').val();
			var userPwd2 = $('#userPwd2').val();
			
		if(userPwd != userPwd2){
				
				$('#userPwd2').css("border-color","#ff1d69");
		
				
			}else{
				
				$('#userPwd2').css("border-color","skyblue");
		
				
			}
			
		
		
		});
		
		
		$('#selectBtn').click(function(){
			
			var userPwd = $('#userPwd').val();
			var userPwd2 = $('#userPwd2').val();
			var userPwd3 = $('#userPwd2').css('border-color');
			var userId = $('#userId').val();
			
			console.log(userPwd2);
			
			if(userPwd == "" || userPwd2 == ""){
				
				alert("재설정 할 비밀번호를 입력해주세요.");
				
			}else{
				
			
				if(userPwd3 == 'rgb(135, 206, 235)'){
					
					$.ajax({
						url:"RePwd.me",
						data:{userId:userId,userPwd:userPwd},
						type:"post",
						success:function(data){
							
							console.log(data.updatePwd);
							
							if(data.updatePwd == '1'){
								
								alert("성공적으로 변경 되었습니다. 다음부턴 잊어버리지 마세요 ~!");
								
								location.href="loginPage.pl";
								
							}else{
								
								alert("변경 중 오류가 발생 하였습니다. 다시 시도해주세요");
								
								location.href="loginPage.pl";
								
							}
							
						}
						
						
					});
					
				
				}else{
				
					alert("비밀번호가 일치 하지 않습니다.");
				
				}
			
				
			}
			
		});
		
	
	</script>
	

</body>
</html>
