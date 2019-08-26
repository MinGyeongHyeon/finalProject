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
	<jsp:include page="${ contextPath }/WEB-INF/views/common/joinHeader.jsp"/>
	<br><br>
	<div class="mainArea">
		<h3 style="padding-top: 50px; padding-left: 50px;"><b>회원가입</b></h3>
		<hr width="90%">
		<br>
		<h4 align="center"><b>아이디 비밀번호 입력</b></h4>
		<h5 align="center">키즈랜드에서 로그인 시 사용할 아이디와 비밀번호를 입력해 주세요.</h5><br>
		<table align="center" id="inputArea">
			<tr>
				<td width="200px">아이디</td>
				<td width="350px" height="50px"><input type="text" class="form-control" id="userId" placeholder="아이디"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" class="form-control" id="userPwd" placeholder="비밀번호"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" class="form-control" id="userPwd2" placeholder="비밀번호 확인"></td>
			</tr>
		</table>
		<br><br>
			
		<div id="buttonArea" align="center">
			<button class="massive ui button">이전</button>
			<button class="massive ui secondary button" id="nextBtn" style="width:200px">다음</button>
		</div>
	
		</div>
	<br><br><br>

</body>
</html>
