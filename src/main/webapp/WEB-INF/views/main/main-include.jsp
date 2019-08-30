<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>머쉬룸 시스터즈 퐈이야</title>
<style>
.nav-area {
	height: 100%;
	width:100%;
	top-margin:5%;
}

.homebar {
	display: table-cell;
	width: 420px;
	height: 50px;
	text-align: center;
	vertical-align: middle;
	font-size: 20px;
	top-margin:0%;
}

.homebar:hover {
	cursor: pointer;
	color: green;
}

#main {
	fond-weight: bold;
	font-size: 50px;
}
form{
background:yellowgreen;
}
</style>
</head>
<body>
	<form>
		<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />
		<div class="nav-area" align="center" style="background-image: URL(${ contextPath }/resources/images/main.PNG); background-size:100% 100%;">
			<br><Br>
			<div class="homebar" id="main" >
				<a href="#">키즈랜드</a>
			</div>
			<div class="homebar" onclick="introduce();">회사소개</div>
			<div class="homebar" onclick="introduceservice();">서비스소개</div>
			<div class="homebar" onclick="start();">시작하기</div>
			<div class="homebar" onclick="login();">로그인</div>
		</div>
		<script>
			function introduce() {
			}
			function introduceservice() {
				
			}
			function start() {
			}
			function login() {
				location.href='loginPage.pl';
			}
		</script>
		
	</form>
</body>
</html>