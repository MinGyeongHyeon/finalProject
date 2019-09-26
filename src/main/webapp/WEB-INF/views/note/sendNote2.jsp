<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지 보내기</title>

<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}
#table1 {
	text-align: center;
}
#table1 th{
	font-size:16px;
}
#table1 td{
	font-size:15px;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
<form>
	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="far fa-paper-plane" style="font-size: 20px;"></i>&nbsp;&nbsp;
					<h4 class="page-title">쪽지 보내기</h4>
				</div>
				<hr>
				<div class="page-category">
					<table class="table" id="table1">
						<thead>
							<tr>
								<th><input type="checkbox" id="checkAll"></th>
								<th>대표자 이름</th>
								<th>유치원 이름</th>
								<th width="50%">소재지</th>
								<th width="10%"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="kArr" items="${ kArr }">
								<tr>
									<input type="hidden" id="receiveNum" name="receiveNum" value="${ kArr.kinderNo }">
									<input type="hidden" id="kinderName" name="kinderName" value="${ kArr.kinderName }">
									<input type="hidden" id="userName" name="userName" value="${ kArr.users.userName}">
									<input type="hidden" id="loginUserNo" value="${ loginUser.userNo }">
									<td><input type="checkbox" name="chk" value="${ kArr.kinderNo }" class="kinderNo"></td>
									<td><c:out value="${ kArr.users.userName}" /></td>
									<td><c:out value="${ kArr.kinderName }" /></td>
									<td><c:out value="${ kArr.kinderAddress }" /></td>
									<td class="in"><button type="button" class="btn">쪽지 보내기</button></td>
								</tr>
								<input type="hidden" name="noteTitle" id="noteTitle">
								<input type="hidden" name="noteContent" id="noteContent">
								<input type="hidden" name="receiveNo" id="receiveNo">
							</c:forEach>
						</tbody>
					</table>
					<hr>

				</div>
			</div>
		</div>
	</div>
</form>

	<script>
		$(function(){
			$(".in").click(function(){
				var receiveNo = $(this).parents().children("input").eq(0).val();
				console.log(receiveNo);

				var location = "sendForm.pl?receiveNo=" + receiveNo;

				window.open(location,"testWin","left=570, top=80, width=500, height=510, toolbar=no, scrollbars=no, status=no, resizable=no");

			});
		});

		function insertNote(){

			var receiveNo = $("#receiveNo").val();
			var noteTitle = $("#noteTitle").val();
			var noteContent = $("#noteContent").val();

			console.log("값이 나오닌이이이이이"+receiveNo);
			console.log("값 "+noteTitle);
			console.log("나오닌이이이이이"+noteContent);

			location.href = "sendNote.nt?receiveNo=" + receiveNo + "&noteTitle=" + noteTitle + "&noteContent=" + noteContent;
		}
	</script>

</body>
</html>