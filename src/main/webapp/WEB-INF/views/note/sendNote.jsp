<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지 보내기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}
#mainArea {
	height:510px;
	background:white;
}
#text1, #text2 {
	font-size: 15px;
}
#nameArea {
	width:69%;
	display:inline;
}
#inputArea{
	margin-left:3%;
}
#selectBtn {
	background:#ff7575;
	font-weight:bold;
	color:white;
}
#textArea {
	width:67%;
	resize:none;
	margin-left:15.3%;
}
.btns {
	width: 200px;
	height: 50px;
	color: white;
}

#btn1 {
	background: #8f8f8f;
	font-weight: bold;
	border: 0.5px solid #7d7d7d;
}

#btn2 {
	background: #ff7575;
	font-weight: bold;
}
#titleArea {
	margin-left:7.5%;
	margin-bottom:10px;
}
#title {
	width:73%;
	display:inline;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="far fa-paper-plane" style="font-size:20px;"></i>&nbsp;&nbsp;<h4 class="page-title">쪽지 보내기</h4>
				</div>
				<hr>
				<div class="page-category">
					<div id="mainArea">
						<br>
						<div id="inputArea">
							<span id="text1"><b>받는 사람 : </b></span>&nbsp;
							<input type="text" class="form-control" id="nameArea">
							<input type="hidden" id="userList" value="${ kArr }">
							<button type="button" class="btn" id="selectBtn" onclick="return userList()">선택하기</button>
						</div>
						<br>
						<div id="titleArea">
							<span id="text2"><b>제목 : </b></span>&nbsp;
							<input type="text" class="form-control" id="title">
						</div>
						<div>
							<textarea class="form-control" rows="13" id="textArea" placeholder="내용을 입력해 주세요."></textarea>
						</div>
						<br>
						<div id="btnArea" align="center">
							<button type="button" class="btn btns" id="btn1" onclick="goNoteMain()">취소</button>
							&nbsp;&nbsp;
							<button type="submit" class="btn btns" id="btn2">보내기</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script>
		function goUserList(){
			var data = document.querySelector("#userList").value;
			var openWindow = window.open("goUserList.nt?val="+data,"newWindow", "height=500, width=480, resizable=yes" );
		}
		function goNoteMain(){
			location.href="noteMain.pl";
		}
		function userList(){
/*
			$.ajax({
				url:"userList.nt",
				type:"post",
				dataType:"json",
				success:function() {
					window.open("note/userList.jsp","newWindow", "height=500, width=480, resizable=yes" );
				},
				error:function(err){
					console.log("실패!");
				}
			});
 */
			location.href="userList.nt";
		}

	</script>

</body>
</html>