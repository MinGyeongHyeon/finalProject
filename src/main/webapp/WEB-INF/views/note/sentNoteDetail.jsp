<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보낸 쪽지함</title>
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

#textArea {
	width: 96%;
	height: 410px;
	background: white;
	box-shadow: 5px 5px 10px black, 0 0 15px lightgray;
}

#tableA1 {
	padding-top: 10px;
	padding-left: 10px;
/* 	line-height: 250%; */
	background: #536dad;
/* 	border:2px solid #e8e3ba; */
	height:85px;
	color: #f5f5f5;
	font-size:18px;
	font-weight:bold;
}
#titleArea {
	text-align:center;
	font-weight:bold;
	font-size:20px;
	padding-top:20px;

}
#contentArea {
	width:80%;
	height:200px;
	margin:0 auto;
	font-size:18px;
	font-weight:bold;
}
#noteArea {
	height:330px;
	background:#f5f5f5;
/* 	background:#fffce3;
	color:#6b6437; */
}
#btnA {
	float:right;
	margin-right:2%;

}
#table1 {
	display:inline;
}
#btn1 {
	float:right;
	margin-right:2%;
	color:white;
}
#btn1:hover {
	color:#f5f5f5;
	cursor:pointer;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="fas fa-envelope-open-text" style="font-size: 20px;"></i>&nbsp;&nbsp;
					<h4 class="page-title">보낸 쪽지함</h4>
				</div>
				<hr><br><br>
				<div class="page-category">
					<div id="textArea">
						<div id="tableA1">
							<i class="fas fa-times" id="btn1"></i>
							<table id="table1">
								<tr>
									<th>받는 사람 :</th>
									<td>${ n.users.userName }( ${ n.noteKindergarden.kinderName }
										)</td>
								</tr>
								<tr>
									<th>보낸 날짜 :</th>
									<td>${ n.noteDate }</td>
								</tr>
							</table>
						</div>
						<div id="noteArea">
						<div id="titleArea">
							${ n.noteTitle }
						</div>
						<br>
						<div id="contentArea">
							${ n.noteContent }
						</div>
						<div id="btnA">
								<button type="button" class="btn btn-light" id="btn2">
									<i class="far fa-trash-alt"></i>&nbsp; 삭제
									<input type="hidden" value="${ n.noteNo }" id="noteNo">
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(function(){
			$("#btn1").click(function(){
				location.href="sentNoteList.nt";
			});
			$("#btn2").click(function(){
				var noteNo = $("#noteNo").val();
				console.log(noteNo);
				//location.href="deleteSentNoteOne.nt?noteNo=" + noteNo;
			});
		});
	</script>

</body>
</html>