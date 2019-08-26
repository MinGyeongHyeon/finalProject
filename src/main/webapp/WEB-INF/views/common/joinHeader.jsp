<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
	#header {
		width:100%;
		height:45px;
		background-color:white;
	}
	.logo {
		position: absolute;
    	top: 0;
    	left: 47%;
    	width: 110px;
    	margin: 0 auto;
    	padding: 15px 10px;
	}
	.navbar-right {
		margin-right: 100px;
	}
</style>

</head>

<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">

<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<div id="header">
		<a class="logo">키즈랜드</a>
		<ul class="nav navbar-nav navbar-right">
			<li><a>회원가입</a></li>
			<li><a>로그인</a></li>			
		</ul>
	</div>
	
</body>
</html>
