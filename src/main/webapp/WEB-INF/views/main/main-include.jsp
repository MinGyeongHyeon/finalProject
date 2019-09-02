<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>머쉬룸 시스터즈 퐈이야</title>
<style>
.headermain {
	height: 100%;
	width:100%;
	top-margin:5%;
	background-color:none;
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
	color: skyblue;
	border-style:inset;
}

#main {
	fond-weight: bold;
	font-size: 50px;
	width:50px;
	height:50px;
}
form{
background:none;
}

.navbar {
position:fixed;
width:100%;
}

.nav-link:hover{
	background-color:pink;
}


</style>
</head>
<body>
	<form>
		<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />
	<%-- 	<div class="headermain" align="center"">
			<br><Br>
			<div class="homebar" style="background-image: URL(${ contextPath }/resources/images/masssinicon.png); background-size:150% 150%;">
			</div>
			<div class="homebar" onclick="introduce();">회사소개</div>
			<div class="homebar" onclick="introduceservice();">서비스소개</div>
			<div class="homebar" onclick="start();">시작하기</div>
			<div class="homebar" onclick="login();">로그인</div>
		</div> --%>
		
<nav class="navbar navbar-expand-sm" style="background: #fff; color:black!important; border-bottom: 1px solid blue; border-radius:5px">

  <a class="navbar-brand" >KIDS LAND</a>

  <ul class="navbar-nav">
    <li class="nav-item">
      <button class="nav-link" onclick="introduce();">회사소개</button>
    </li>
    <li class="nav-item">
      <button class="nav-link" onclick="introduceservice();">서비스소개</button>
    </li>
	<li class="nav-item">
      <button class="nav-link" onclick="start();">시작하기</button>
    </li>
	<li class="nav-item">
      <button class="nav-link" onclick="login();">로그인</button>
    </li>   
  </ul>
</nav>
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