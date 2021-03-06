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
	height: 500px;
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
		<h3 style="padding-top: 50px; padding-left: 50px;"><b>회원가입</b></h3>
		<hr width="90%">
		<br>
		<h4 align="center"><b>아이디 비밀번호 입력</b></h4>
		<h5 align="center">키즈랜드에서 로그인 시 사용할 아이디와 비밀번호를 입력해 주세요.</h5><br>
		<form action="joinPage4.pl" method="post">
		
		<input type="hidden" name="userName" value="${ m.userName }">
		<input type="hidden" name="email" value="${ m.email }"/>
		<input type="hidden" name="phone" value="${ m.phone }"/>
		
		<table align="center" id="inputArea">
			<tr>
				<td width="200px">아이디</td>
				<td width="350px" height="50px"><input type="text" class="form-control" name="userId" placeholder="아이디"></td>
				<td><input type="button" value="중복확인" class="ui grey basic button" id='idcheck'></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" class="form-control" name="userPwd" id="userPwd" placeholder="비밀번호" disabled></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" class="form-control" id="userPwd2" placeholder="비밀번호 확인" disabled></td>
			</tr>
		</table>
		<br><br>
			
		<div id="buttonArea" align="center">
			<button class="huge ui button"  type="button">이전</button>
			<button class="huge ui secondary button" id="nextBtn" style="width:200px" type="button">다음</button>
		</div>
		
		</form>
	
		</div>
	<br><br><br>
	
	<script>
		
	
		
	
		$('#idcheck').click(function(){
			
			var userId = $('input[name=userId]').val();
			
			console.log(userId);
			$.ajax({
				url:"idcheck.me",
				type:"post",
				data:{userId:userId},
				success:function(data){
					
					console.log(data.idcheck);
					
					if(data.idcheck == 1){
						
						alert("해당 아이디가 존재합니다!");
						
						$('#userPwd').attr('disabled',true);
					    $('#userPwd2').attr('disabled',true);
						
						
					
						
					}else{
						
						alert("사용 가능한 아이디 입니다.");
						
						
					$('#userPwd').attr('disabled',false);
				    $('#userPwd2').attr('disabled',false);
					
						
						
						
					}
					
					
				}

			
				
				
			});
			
			
		});
		
		$('input[type=password]').keyup(function(){
			
			var userPwd = $('#userPwd').val();
			var userPwd2 = $('#userPwd2').val();
			
			if(userPwd != userPwd2){
				
				$('#userPwd2').css("border-color","#ff1d69");
				
				$('#nextBtn').attr('type','button');
				
			}else{
				
				$('#userPwd2').css("border-color","skyblue");
				
				$('#nextBtn').attr('type','submit');
				
			}
			
		});
		
	
		
		$('#nextBtn').click(function(){
			
			
			if($(this).attr('type') == 'button'){
				
				alert("아이뒤 중복 체크 및 비밀번호 확인 을 해주세요.");
			
			}
			
			
		})
		
		
		
	</script>

</body>
</html>
