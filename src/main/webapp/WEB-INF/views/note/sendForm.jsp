<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지보내기</title>
<%-- <link rel="stylesheet" href="${ contextPath }/resources/css/note/sentNoteDetailCss.css"> --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/1eba500ac5.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
#table1 {
	margin: 15px;
	line-height: 160%;
}

#content {
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
#title {
	width:378px;
}
</style>

</head>
<body>
	<form>
		<input type="hidden" id="receiveNo" name="receiveNo" value="">
		<div id="textArea">
			<div id="logo">
				<b>KIDSLAND</b>
			</div>
			<br>
			<hr>
<!-- 			<div id="tableA1">
				<table id="table1">
					<tr>
						<th width="50%">받는 사람</th>
						<td id="kinderN">ddd</td>
					</tr>
				</table>
				<hr>
			</div> -->
			<div id="noteArea">
				<div id="tableA2">
					<table id="title2">
						<tr>
							<th width="11%">제목 :</th>
							<td><input type="text" name="title" id="title" required></td>
						</tr>
					</table>
				</div>
				<br>
				<div id="contentA">
					<textarea rows="5" id="content" name="content" placeholder="내용을 입력해주세요." required></textarea>
				</div>
				<hr>
				<div id="btnA">
					<button type="submit" class="btn btn-light btns" id="sendBtn" onclick="send()">전송</button>
				</div>
				<input type="hidden" name="noteNo" id="noteNo" value="${ n.noteNo }">
				<input type="hidden" name="userNo" id="userNo" value="${ loginUser.userNo }">
			</div>
		</div>
	</form>

	<script>
	function getUrlParams() {
    	var params = {};
   		window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
    	return params;
	}

		function send(){
 			oParams = getUrlParams();
			var receiveNo = oParams.receiveNo;

			var title = $("#title").val();
			var content = $("#content").val();

 			$("#noteTitle",opener.document).val(title);
			$("#noteContent",opener.document).val(content);
			$("#receiveNo",opener.document).val(receiveNo);

			opener.parent.insertNote();
			self.close();

		}

		$(function() {
			var kinderName = $("#kinderName", opener.document).val();
			var kinUserName = $("#userName", opener.document).val();
			console.log(kinderName);

			$("#kinderN").text(kinderName + "(" + kinUserName + ")");

			if(kinderName == null){
				$("#kinderN").text("관리자");
			}

		});
	</script>

</body>
</html>