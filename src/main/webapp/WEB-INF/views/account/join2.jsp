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
	height: 90%;
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
		<h4 align="center"><b>기본 정보 입력</b></h4>
		<h5 align="center">본인의 이름과 휴대전화번호 및 이메일을 모두 정확하게 입력해 주세요.</h5><br>
		
		<form action="joinPage3.pl" method="post">
		
		<table align="center" id="inputArea">
			<tr>
				<td width="200px">*이름</td>
				<td width="350px" height="50px" colspan="2"><input type="text" class="form-control" name="userName" placeholder="이름"></td>
			</tr>
			<tr>
				<td>*휴대전화번호</td>
				<td><input type="tel" class="form-control" name="phone" placeholder="휴대전화번호"></td>
				<td><button class="ui grey basic button">인증번호 발송</button></td>
			</tr>
			<tr>
				<td>*인증번호</td>
				<td colspan="2"><input type="text" class="form-control" id="CerNum" placeholder="휴대전화 인증번호를 입력해주세요"></td>
			</tr>
			<tr>
				<td align="center">* 추가 입력 사항 * </td>
			</tr>
			<tr id="aftertr">
				<td>이메일</td>
				<td colspan="2"><input type="email" class="form-control" name="email" placeholder="이메일을 입력해주세요" id="emailval"></td>
				<td colspan="2"><input type="button" class="ui grey basic button" value="인증" id="emailsend"></td>
			</tr>
		
			

			
		</table>
		<br><br>
			
		<div id="buttonArea" align="center">
			<button class="huge ui button">이전</button>
			<button class="huge ui secondary button" id="nextBtn" style="width:200px" type="submit">다음</button>
		</div>
		
	</form>
		</div>
	<br><br><br>
	
	<script>
		$('#emailsend').click(function(){
			
			var email = $('#emailval').val();
			
			
			
			var $tr = $("<tr id='emailCer'><td>이메일 확인</td><td colspan='2'><input type='text' class='form-control' id='CerNum2' placeholder='이메일 인증번호를 입력해주세요'  ></td></tr>")

			$('#aftertr').after($tr);
			var $tr2 = $("<tr id='displaytr'><td></td><td colspan='2'><label id='lable'></label></td> </tr> ");
			
			$.ajax({
				url:"sendemail.me",
				type:"post",
				data:{email:email},
				success:function(data){
					
					var randomkey = data.random;
					
					console.log(randomkey);
					
				
					

					
					
					$('#CerNum2').keyup(function(){
					var num = $('#CerNum2').val();
					
					$('#emailCer').after($tr2);
					
					var $label = $('#lable');
					var $text = $('#lable').text();
						
						if(randomkey == num){
							
							$("#CerNum2").css("border-color", "blue");
							$label.text("번호가 일치합니다.").css("color","blue");
							
							
							
						
							
						}else{
							
							$("#CerNum2").css("border-color", "red");
							
							$label.text("번호가 일치하지 않습니다.").css("color","red");
							
						
					
						}
						
						
					})
					
					
				}
				
				
				
			});
			
		})
		
	
	
	
	
	</script>

</body>
</html>
