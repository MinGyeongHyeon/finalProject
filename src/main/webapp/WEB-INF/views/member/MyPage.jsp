<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<style>

.main-panel {
	    position: relative;
	    width: calc(100% - 240px);
	    height: 100vh;
	    min-height: 100%;
	    float: right;
	    transition: all .3s;
	    padding-top:10%;
	    padding-left: 3%;
	    padding-right: 3%;
	}
	

</style>
<body>
	<jsp:include page="../common/menubar.jsp" />

<div class="main-panel">
		
<form method="post" enctype="multipart/form-data" action="Myimgchange.me">
	<input type="hidden" value="${ loginUser.userNo }" name="userNo"/>

				<div align="center">
					<h2 style="font-size:30px;">프로필 설정</h2>
				</div>
				
	<table align="center" style="width:100%">
		
		<tr algin="left ">		
			<td align="center">
			</td>
		</tr>
		<tr>
			
			<td align="center">
			<div class="container imgclass" style="width:30%;" >
			
  			<img class="avatar-img rounded-circle"  style="width:150px; height: 150px;" id="titleImg" style="border:1px solid; align:center" src="${ contextPath }/resources/uploadFiles/${at.changeName}"/>
  			<input type="hidden" value="${ contextPath }/resources/uploadFiles/${at.changeName}"  name="changeName"/>
  			</div>
  			<div id="imghide">

			<input type="file" value="추가" id="selectFile" class="selectFile" onchange="loadImg(this, 1)" name="photo" >
			
			</div>
  			
  			</td>
  		
		</tr>
			
	<tr><td><br /></td></tr>
	<tr>
	<td align="center">
	<button class="btn btn-default" type="button" id="check">저장</button>
	</td>
	</tr>
	
	</table>
</form>

<br />
<hr />
<br />

<h2 align="center"><b>개인 정보 설정</b></h2>

<form action="Myinfochange.me" method="post">
<input type="hidden" name="userNo" value="${ loginUser.userNo }"/>
	<table align="center">
		<tr>
			<td>
			<label for="">이름</label><input type="text" value="${ loginUser.userName }" class="form-control" name="userName"/>
			</td>
		</tr>
		<tr>
			<td>
			<label for="">비밀번호 재설정</label><input type="password" name="userPwd" id="userPwd2" class="form-control"/>
			</td>
		</tr>
		<tr>
			<td>
			<label for="">비밀번호 확인</label><input type="password" name="userPwd2" class="form-control" />
			</td>
		
		</tr>
		<tr>
		<tr><td><br /></td></tr>
		<tr>
			<td align="center">
				<button class="btn btn-default" type="button" id="check2">저장</button>
			</td>
		</tr>
	
	</table>

</form>
		
<hr />
<br />
<br /><br /><br /><br /><br />
</div>
<script>

if('${msg}' != ""){
	
	alert("${msg}");
	
}

	$('#check2').click(function(){
		
		var Pwdlength = $('input[name="userPwd"]').val().length;
		var pwd2length = $('#userPwd2').val().length;

		if($('input[name="userPwd2"]').css('border-color') == 'rgb(255, 29, 105)') {
			
		alert("비밀번호 확인이 맞지 않습니다.");
			
		}else{ 
			
			if(Pwdlength == 0 && pwd2length == 0){
				
				$(this).attr('type','submit');
				
			}else{
				
				if($('input[name="userPwd2"]').css('border-color') == 'rgb(255, 29, 105)'){
					
					alert("비밀번호 확인이 맞지 않습니다.");
					
				}
				
				
			}
			
			
		}
	
	});

$('input[name="userPwd2"]').keyup(function(){
	
	var test =  $('input[name="userPwd2"]').css("border-color");
	
	console.log(test);
	
	var userPwd = $('#userPwd2').val();
	
	console.log(userPwd);
	
	if($(this).val() != userPwd){
		
		$(this).css("border-color","#ff1d69");
		
		$('#check2').attr('type','button');
		
	}else{
		
		$(this).css("border-color","skyblue");
		
		$('#check2').attr('type','submit');
		
	}
	
})

$(function(){
	
	var selectFile = $('#selectFile');
	
	 $('#selectFile').change(function(){
		
		 $('#check').attr("type","submit");
		
	})
	
});

$('#check').click(function(){
	
	if($(this).attr('type') == 'button'){
		
		alert("프로필을 변경해주세요");
		
	}
	
	
	
})


$(function(){
	
	$('#imghide').hide();
	
	$('.imgclass').click(function(){
		$('#selectFile').click();
		
	});
	
	
});

function loadImg(value, num) {
	if(value.files && value.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			switch(num){
				case 1 : $("#titleImg").attr("src", e.target.result); break;
			}
		}

		reader.readAsDataURL(value.files[0]);
	}
}







</script>


</body>
</html>