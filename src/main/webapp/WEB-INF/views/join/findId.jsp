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
		<h3 style="padding-top: 50px; padding-left: 50px;"><b>아이디 찾기</b></h3>
		<hr width="90%">
		<br>
		<h4 align="center"><b>인증 수단 선택</b></h4>
		<h5 align="center">인증 수단을 선택후 진행 해주세요.</h5><br>
		

		
		<table align="center" id="inputArea">
			<tr>
				<td>
				<input type="radio" id="phonefind" name="findId"/>
				</td>
			</tr>
			<tr>
				<td align="center">* 핸드폰 을 이용한 인증 * </td>
			</tr>
			<tr>
				<td>*휴대전화번호</td>
				<td><input type="tel" class="form-control phonefind" id="phone" placeholder="휴대전화번호 (-) 뺴고 입력" disabled></td>
				<td><button class="ui grey basic button" id="phonebut" disabled >인증번호 발송</button></td>
			</tr>
			<tr hidden id="phonehid">
				<td>*인증번호</td>
				<td colspan="2"><input type="text" class="form-control phonefind" id="CerNum" placeholder="휴대전화 인증번호를 입력해주세요" disabled ></td>
			</tr>
			<tr>
				<td>
					<input type="radio" id="emailfind" name="findId"/>
				</td>  
			</tr>
			<tr>
				<td align="center" colspan="2">* 이메일 을 이용한 인증(회원가입시 기입 자만 해당됩니다.) * </td>
			</tr>
			<tr id="aftertr">
				<td>이메일</td>
				<td colspan="2"><input type="email" class="form-control emailfind" placeholder="이메일을 입력해주세요" id="emailval" disabled ></td>
				<td colspan="2"><input type="button" class="ui grey basic button" value="인증번호 발송" id="emailsend" disabled ></td>
			</tr>
		
			

			
		</table>
		<br><br>
			
		<div id="buttonArea" align="center">

			<button class="huge ui secondary button" id="selectBtn" style="width:200px" type="button">찾기</button>
		</div>
		

		</div>
	<br><br><br>
	
	<script>
	
		$('#emailsend').click(function(){
			
			var email = $('#emailval').val();
			
			console.log(email);
			
			var $tr = $("<tr id='emailCer'><td>이메일 확인</td><td colspan='2'><input type='text' class='form-control' id='CerNum2' placeholder='이메일 인증번호를 입력해주세요'  ></td></tr>")

			$('#aftertr').after($tr);
			var $tr2 = $("<tr id='displaytr'><td></td><td colspan='2'><label id='lable'></label></td> </tr> ");
			var email2 = "아이디찾기";
			$.ajax({
				url:"sendemail.me",
				type:"post",
				data:{email:email,email2:email2},
				success:function(data){
					
					var randomkey = data.random;
					
					console.log(randomkey);
	
					$('#CerNum2').keyup(function(){
					var num = $('#CerNum2').val();
					
					$('#emailCer').after($tr2);
					
					var $label = $('#lable');
					var $text = $('#lable').text();
						
						if(randomkey == num){
							
							$("#CerNum2").css("border-color", "skyblue");
							$label.text("번호가 일치합니다.").css("color","skyblue");
							
							
						}else{
							
							$("#CerNum2").css("border-color", "#ff1d69");
							
							$label.text("번호가 일치하지 않습니다.").css("color","#ff1d69");
							
						
					
						}
						
						
					})
					
					
				}
				
				
				
			});
			
		})
		
		$('#phonefind').click(function(){
			
			
			$("#emailsend").attr("disabled",true);
			$("#phonebut").attr("disabled", false);
			$(".phonefind").attr("disabled" , false);
			$(".emailfind").attr("disabled" , true);
			$(".emailfind").val("");
			
		});
		
		$('#emailfind').click(function(){
			
			$("#emailsend").attr("disabled",false);
			$(".emailfind").attr("disabled" , false);
			$(".phonefind").attr("disabled" , true);
			$("#phonebut").attr("disabled", true);
			$(".phonefind").val("");
			
		});
		
		if($('#CerNum').css('border-color') == 'skyblue'){
		
		}
		
		$("#selectBtn").click(function(){
			
			var phone = $("#phone").val();
			var email = $("#emailval").val();

			console.log(email);
			console.log(phone);
			
			if(phone != ""){
				
			$.ajax({
				
				url:"selectId.me",
				data:{phone:phone},
				type:"post",
				success:function(data){
					
					var userIdlength = data.me.userId.length;
					var userId;
					
						userId = data.me.userId.substring(0,userIdlength - 3);
						
						var userst = userId + "***";
					
					 alert("회원님의 아이디는 " + userst + "입니다");
				
				}
			
			}); 
		
			
			}else if(email != ""){
				
				$.ajax({
					
					url:"selectemialId.me",
					data:{email:email},
					type:"post",
					success:function(data){
						
						var userIdlength = data.me.userId.length;
						var userId;
						
							userId = data.me.userId.substring(0,userIdlength - 3);
							
							var userst = userId + "***";
						
						 alert("회원님의 아이디는 " + userst + "입니다");
					
					}
				
				}); 
				
			}

		
		});
		
		
		$('#phonebut').click(function(){
			
			$('#phonehid').attr("hidden",false);
			
			var sphone1 = $('#sphone1').val();
			var sphone2 = $('#sphone2').val();
			var sphone3 = $('#sphone3').val();
			
			var rphone = $('#rphone').val();
			
			var action = "go";
			
			$('#CerNumtr').attr('hidden',false);
			
			$.ajax({
				
				url:"phoneMe.me",
				data:{rphone:rphone,sphone1:sphone1,sphone2:sphone2,sphone3:sphone3,action:action},
				type:"post",
				success:function(data){
					
					var randomkey = data.random;
					
					console.log(data.random);
					
						var $tr = $('<tr class="randomkeyphone">');
						var $td = $('<td>');
						var $td2 = $('<td>');
						var $label = $('<label>');
						
					$('#CerNum').keyup(function(){
						
						var num = $('#CerNum').val();
								
						console.log(num);
						
						if(randomkey == num){
						   $('.randomkeyphone').remove();
							
							$('#CerNum').css("border-color","skyblue");
							$label.text("번호가 일치합니다").css("color","skyblue");
							
							$td2.append($label);
							$tr.append($td);
							$tr.append($td2);
							
							$('#phonehid').after($tr);
							
								
						
							
							
						}else{
							
							 $('.randomkeyphone').remove();
							 
							 $('#CerNum').css("border-color","#ff1d69");
							 
							 
							 $label.text("번호가 일치하지 않습니다.").css("color","#ff1d69");
								
								$td2.append($label);
								$tr.append($td);
								$tr.append($td2);
								
								$('#phonehid').after($tr);
							 
								
						}
						
							
						
					
						
					});
			
					
	
					
					
					
					
				}
				
			});
			
		});
		
		
	
	
	
	
	</script>

</body>
</html>
