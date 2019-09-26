<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>받은 쪽지</title>
<%-- <link rel="stylesheet" href="${ contextPath }/resources/css/note/sentNoteDetailCss.css"> --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/1eba500ac5.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
#table1 {
	margin: 15px;
	line-height: 160%;
}

#contents {
	background: white;
	resize: none;
	width: 380px;
	height: 250px;
}

#contentA {
	margin: 0 auto;
	width: 380px;
	height: 250px;
}

#tableA2 {
	margin-left: 15px;
}

.pageBtn {
	background: none;
	border: none;
	font-size: 13px;
}

#nextBtn {
	float: right;
	margin-right: 20px;
}

#preBtn {
	float: left;
	margin-left: 20px;
}

#logo {
	float: right;
	margin-right: 20px;
	margin-top: 10px;
}

#tableA1 {
	margin-top: 10px;
}

#btnA {
	width: 121px;
	margin: 0 auto;
}

.btns {
	background: none;
	border: 1px solid #f0f0f0;
}
</style>

</head>
<body>
	<form>
		<div id="textArea">
			<div id="logo">
				<b>KIDSLAND</b>
			</div>
			<br>
			<hr>
			<div id="tableA1">
				<table id="table1">
					<tr>
						<th width="55%">보낸 사람</th>
						<td>${ note.users.userName }</td>
					</tr>
					<tr>
						<th>받은 날짜</th>
						<td>${ note.noteDate }</td>
					</tr>
				</table>
				<hr>
			</div>
			<div id="noteArea">
				<div id="tableA2">
					<table id="title2">
						<tr>
							<th width="42%">제목 :</th>
							<td>${ note.noteTitle }</td>
						</tr>
					</table>
				</div>
				<br>
				<div id="contentA">
					<textarea rows="5" id="contents" disabled>${ note.noteContent }</textarea>
				</div>
				<hr>
				<div id="pageBtns">
					<button class="pageBtn" id="preBtn" onclick="pre();">< 이전</button>
					<button class="pageBtn" id="nextBtn" onclick="next();">다음 ></button>
				</div>
				<br>
				<div id="btnA">
					<button type="button" class="btn btn-light btns" id="deleteBtn">삭제</button>
					<button type="button" class="btn btn-light btns" id="replyBtn"
						onclick="reply()">답장</button>
				</div>
				<input type="hidden" name="noteNo" id="noteNo" value="${ note.noteNo }">
			</div>
		</div>
	</form>

	<script>
		function reply() {
			var url = "userList.nt?";
			opener.window.location = url;
			close();

			//location.href = "userList.nt?userNo=" + userNo;
		}
		function pre(){

			var noteNo = $("#noteNo").val();
			console.log(noteNo);

			var noteNo2 = noteNo + 1;
			console.log(noteNo2);

			location.href="selectRecieveNoteOne.nt?noteNo=" + noteNo2;

		}
		$(function() {

			$("#deleteBtn").click(function() {
				var noteNo = $("#noteNo").val();
				console.log(noteNo);

 				if (confirm("정말 삭제하시겠습니까?") == true) {
					$("#noteNo", parent.opener.document).val(noteNo);
					var url = "deleteRecieveNoteOne.nt?noteNo=" + noteNo;
					opener.window.location = url;
					close();

				} else {
					return;
				}

			});

		});
	</script>

</body>
</html>