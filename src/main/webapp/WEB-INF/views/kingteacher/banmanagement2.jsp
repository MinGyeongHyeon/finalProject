<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
#banmanagement {
	background: white;
	width: 60%;
	text-align: center;
	border: 1px solid black;
}

#content {
	float: right;
	margin-right: 10%;
	margin-left: 3%;
	margin-top: 3.5%;
	background: white;
	width: 80%;
}

p {
	color: blue;
	margin-left: 5%;
}

table {
	width: 100%;
	margin: 0 auto;
}

table th {
	background: lightgray;
	color: white;
	padding: 10px;
	font-weight: bold;
}

#saveBtn {
	margin-left: 42%;
	width: 15%;
	height: 4%;
	background: orange;
	color: white;
	border-radius: 15px;
}

#plusBtn {
	margin-left: 50%;
	background: lightblue;
	color: white;
	barder-radius: 15px;
}

h1 {
	margin-left: 5%;
}
</style>
</head>
<header>
	<jsp:include page="../common/kingteachersidebar.jsp" />
</header>
<body>
<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />
	<div id="content">
		<div>
			<h1>반 추가</h1>
			<hr>
		</div>
		<div id="banmanagement">
			<h3>반 이름</h3>
			<input type="text" placeholder="내용을 입력해주세요.">
			<hr>
		</div>
		<br>
		<br>
		<br>
		<button id="cancle">취소</button>
		<button id="saveBtn">저장</button>
		<br>
		<br>
		<br>
	</div>
	
</body>
</html>