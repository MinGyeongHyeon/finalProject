<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<!-- fontawesome -->
<link href="/happyPlaystage/css/common/all.min.css" rel="stylesheet">
<script src="/happyPlaystage/js/common/all.min.js"></script>
<title>home</title>

<style>
body {
	background:lightgray;
}
.mainArea {
	background: white;
	width: 60%;
	height: 500px;
	margin: 0 auto;
}
#title {
	margin-left: 25px;
	padding-top: 20px;
}
#to1 {
	display:inline;
}
#to2 {
	width:50%;
	display:inline;
}
#comment {
	width:75%;
	height:230px;
}
</style>

</head>

<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">

<body>
	<br><br>
	<div class="mainArea">
		<h2 id="title">쪽지보내기</h2>
		<hr style="width: 97%">
		<div align="center">
		<h4 style="margin-left:25px;" id="to1"><b>받는 사람 : </b></h4>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" class="form-control" id="to2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="ui orange button">선택하기</button>
		<br><br><br>
		<textarea class="form-control" rows="5" id="comment" placeholder="내용을 입력해주세요."></textarea>
		</div>
		<br>
		<button class="ui orange button" style="float:right; margin-right:50px;">보내기</button>
				
	</div>

</body>
</html>
