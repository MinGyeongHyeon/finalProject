
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
   <link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>머쉬룸 시스터즈 퐈이야</title>
<style>
.headermain {
	height: 100%;
	width:100%;
	top-margin:5%;
	background-color:none;
	font-family: 'Sunflower', sans-serif;
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
body{

font-family: 'Sunflower', sans-serif;

}


</style>
</head>
<body>
	<form>
		<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />

		
<nav class="navbar navbar-expand-sm" style="background: #fff; color:black!important; border-bottom: 1px solid blue; border-radius:5px">

  <a class="navbar-brand" >KIDS LAND</a>

  <ul class="navbar-nav">
    <li class="nav-item">
      <input type="button" class="nav-link btn btn-default"  onclick="introduce();" value="회사소개"/>
    </li>
    <li class="nav-item">
      <input type="button" class="nav-link btn btn-default" onclick="introduceservice();" value="총계"/>
    </li>
	<li class="nav-item">
      <input type="button" class="nav-link btn btn-default"  value="제휴업체" onclick="start();"/>
    </li>
	<li class="nav-item">
      <input type="button" class="nav-link btn btn-default" onclick="login();" value="로그아웃"/>  
    </li>   
  </ul>
</nav>
			<script>
			function introduce() {
				
			}
			function introduceservice() {
				
			}
			function start() {
				location.href='#';
			}
			function login() {
			
				location.href='loginPage.pl';
			}
		</script>
		
	</form>
</body>
</html>