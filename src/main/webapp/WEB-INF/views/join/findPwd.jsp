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
#fondIdtd{
	padding-left:5%; 
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
		<h4 align="center"><b>아이디 입력</b></h4>
		<h5 align="center">회원가입시 기입한 아이디를 입력해주세요.</h5><br>
		
	
		<table align="center" id="inputArea">
	
	
			<tr>
				<td colspan="1">*아이디</td>
				<td colspan="1"><input type="tel" class="form-control phonefind" id="findId" placeholder="아이디 입력"></td>
			</tr>
			
			<tr>
				<td>아이디가 기억나지 않으세요?</td>
				<td id="fondIdtd"><a href="findid.pl">아이디 찾기</a></td>
			</tr>
			

			
		</table>
		<br><br>
			
		<div id="buttonArea" align="center">

			<button class="huge ui secondary button" id="selectBtn" style="width:200px" type="button">다음</button>
		</div>
		


		</div>
	<br><br><br>
	
	<script>
		
	$('#selectBtn').click(function(){
		
		var findId = $('#findId').val();
		
		console.log(findId);
		
		$.ajax({
			
			url:"findPwdId.me",
			data:{findId:findId},
			type:"post",
			success:function(data){
				
				if(data.id != null){
					
					console.log(data);
					
					location.href="findPwd2.pl?userId=" + data.id.userId;
					
					
				}else{
					
					
					alert("아이디가 없습니다. 다시 확인해주세요");
					
				}
				
				
			}
		
			
		});
		
	});
	
	
	</script>

</body>
</html>
