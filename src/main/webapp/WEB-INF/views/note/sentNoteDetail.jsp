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

#beforeBtn {
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
	width: 58px;
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
						<th width="55%">받는 사람</th>
						<td>${ n.users.userName }</td>
					</tr>
					<tr>
						<th>보낸 날짜</th>
						<td>${ n.noteDate }</td>
					</tr>
				</table>
				<hr>
			</div>
			<div id="noteArea">
				<div id="tableA2">
					<table id="title2">
						<tr>
							<th width="42%">제목 :</th>
							<td>${ n.noteTitle }</td>
						</tr>
					</table>
				</div>
				<br>
				<div id="contentA">
					<textarea rows="5" id="contents" disabled>${ n.noteContent }</textarea>
				</div>
				<hr>
				<div id="pageBtns">
					<button class="pageBtn" id="beforeBtn">< 이전</button>
					<button class="pageBtn" id="nextBtn">다음 ></button>
				</div>
				<br>
				<div id="btnA">
					<button type="button" class="btn btn-light btns" id="deleteBtn">삭제</button>
				</div>
				<input type="hidden" name="noteNo" id="noteNo" value="${ n.noteNo }">
				<input type="hidden" name="userNo" id="userNo" value="${ loginUser.userNo }">
			</div>
		</div>
	</form>

	<script>
		$(function() {

			$("#deleteBtn").click(function() {
				var noteNo = $("#noteNo").val();
				console.log(noteNo);

 				if (confirm("정말 삭제하시겠습니까?") == true) {
					$("#noteNo", parent.opener.document).val(noteNo);
					var url = "deleteSentNoteOne.nt?noteNo=" + noteNo;
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