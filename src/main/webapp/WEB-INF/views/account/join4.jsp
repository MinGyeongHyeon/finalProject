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
.img {
	width:200px;
	height:200px;
	border-radius:50%;
}
#img1, #img2, #img3 {
	float:left;
}
.imgArea {
	text-align:center;
}

</style>

</head>

<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">

<body>
	<jsp:include page="${ contextPath }/WEB-INF/views/common/joinHeader.jsp"/>
	<br><br>
	<div class="mainArea">
		<h3 style="padding-top: 50px; padding-left: 50px;"><b>역할 등록</b></h3>
		<hr width="90%">
		<br>
		<h4 align="center"><b>본인의 역할을 선택해주세요!</b></h4><br><br>
		
		<div id="imgArea" align="center" style="margin-left:14%">
			<div id="img1" style="margin-right:10px">
				<i><img class="img" src="${ contextPath }/resources/images/account/img1.PNG"></i>	
				<h4><b>부모님</b></h4>
			</div>
			<div id="img2" style="margin-right:10px">
				<i><img class="img" src="${ contextPath }/resources/images/account/img2.jpg"></i>
				<h4><b>선생님</b></h4>
			</div>
			<div id="img3">			
				<i><img class="img" src="${ contextPath }/resources/images/account/img3.jpg"></i>
				<h4><b>원장님</b></h4>			
			</div>
		</div>
		
	<br><br><br><br>

</body>
</html>
