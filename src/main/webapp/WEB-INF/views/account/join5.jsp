<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<title>로그인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	.mainArea {
		width:37%;
		height:500px;
		background:white;
		margin: 0 auto;
	}
	.inputArea input {
		width:80%;
		margin:0 auto;
		height:40px;
	}
	#loginBtn {
		width:80%;
		height:50px;
		background:#ff7a7a;
		color:white;
	}
	#loginBtn:hover {
		background:#fc6f6f;
	}
	.linkArea {
		width:80%;
		margin:0 auto;
	}
	.linkArea a:hover {
		cursor:pointer;
		text-decoration:underline;
	}
</style>


</head>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">

<body>
	<%-- <jsp:include page="${ contextPath }/WEB-INF/views/common/joinHeader.jsp"/> --%>
	
	<br><br>
	<div class="mainArea">
		<br><br>
		<h1 align="center"><b>로그인</b></h1>
		<br><br>
		
		<form action="login.me" method="post">
		
		<div class="inputArea">
			<input type="text" class="form-control" name="userId" placeholder="아이디">
			<br>
			<input type="password" class="form-control" name="userPwd" placeholder="비밀번호">
			<br>		
		</div>
		<div style="padding-left:50px">		
			<input type="checkbox" id="check">&nbsp;&nbsp;<label for="check">자동 로그인</label>
		</div>
		<br><br>
		<div id="btnDiv" align="center">
			<button class="ui button" id="loginBtn" type="submit">로그인</button>
		</div>
		<br>
		<div class="linkArea">
			<span><a id="joinLink">회원가입</a></span>
			<span style="float:right"><a id="findIdLink">아이디찾기</a> | <a id="findPwdLink">비밀번호 찾기</a></span>
		</div>
		
		</form>
	</div>
	
	<script>
		
	$('#joinLink').click(function(){
		
		location.href="joinHome.pl"
		
	})
	
	</script>
	
	

</body>
</html>
