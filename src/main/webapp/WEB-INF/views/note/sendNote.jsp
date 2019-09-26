<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지 보내기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<%-- <link rel="stylesheet" href="${ contextPath }/resources/css/note/sendNoteCss.css"> --%>

<style>




#nameArea {
	width: 100%;
	display: inline;
}

.btns {
	width: 230px;
	height: 50px;
	color: white;
}






#mTable {
	text-align:center;
}



.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}
#mainArea {
	height: 550px;
	background: white;
	width:66%;
	margin:0 auto;
}
#table1 {
	font-size:1.3em;
	width:700px;
}
#inputArea {
	width:700px;
	margin-left:70px;
}
#selectBtn {
	background: #ff7575 !important;
	font-weight: bold !important;
	color: white !important;
	border: none;
	height:40px;
}
#text1{
	font-size: 18px;
}
#titleArea {
	margin-left: 100px;
	margin-bottom: 10px;
}
#title {
	width: 64%;
	display: inline;
}
#content {
	width: 56%;
	resize: none;
	margin-left: 188px;
}
#btn1 {
	background: #8f8f8f;
	font-weight: bold;
	border: 0.5px solid #7d7d7d;
	font-size:18px;
}

#btn2 {
	background: #ff7575;
	font-weight: bold;
	font-size:18px;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
<form onsubmit="return goInsertNote()">
	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="far fa-paper-plane" style="font-size: 20px;"></i>&nbsp;&nbsp;
					<h4 class="page-title">쪽지 보내기</h4>
				</div>
				<hr>
				<div class="page-category">
					<div id="mainArea">
						<br><br>
						<div id="inputArea">
							<table id="table1">
								<tr>
									<th width="120px">받는 사람 : </th>
									<td width="500px"><input type="text" class="form-control" id="nameArea" name="receiveNo"></td>
									<td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" id="selectBtn">선택하기</button></td>
								</tr>
							</table>
						</div>
						<br>
						<div id="titleArea">
							<span id="text1"><b>제목 : </b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" class="form-control" id="title" name="noteTitle">
						</div>
						<div>
							<textarea class="form-control" rows="13" id="content" name="noteContent"
								placeholder="내용을 입력해 주세요."></textarea>
						</div>
						<br>
						<div id="btnArea" align="center">
							<button type="button" class="btn btns" id="btn1"
								onclick="goNoteMain()">취소</button>
							&nbsp;&nbsp;
							<button type="button" class="btn btns" id="btn2" onclick="goInsertNote()">보내기</button>
						</div>
					</div>
					<input type="hidden" name="sendNo" id="sendNo" value="${ loginUser.userNo }">
</form>
					<!-- Modal -->
					<div class="container">
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">받을사람 선택</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
									<div class="modal-body">
										<table class="table table-hover" id="mTable">
											<thead>
												<tr>
													<th><input type="checkbox" id="checkAll"></th>
													<th>대표자 이름</th>
													<th>유치원 이름</th>
													<th>소재지</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="kArr" items="${ kArr }">
													<tr>
														<td><input type="hidden" id="loginUserNo" value="${ loginUser.userNo }"></td>
														<td><input type="checkbox" name="chk" value="${ kArr.kinderNo }" class="kinderNo"></td>
														<td><c:out value="${ kArr.users.userName}" /></td>
														<td><c:out value="${ kArr.kinderName }" /></td>
														<td><c:out value="${ kArr.kinderAddress }" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal" id="select" onclick="insertSendList()">선택하기</button>
									</div>
								</div>

							</div>
						</div>

					</div>


				</div>
			</div>
		</div>
	</div>

	<script>
		function goNoteMain() {
			location.href = "sentNoteList.nt";
		}

		function goInsertNote(){
			var sendNo = $("#sendNo").val();

			console.log(sendNo);

			location.href="insertNote.nt?sendNo="+sendNo;
		}
		function insertSendList(){
			var receiveNo = Array();

			$("input:checkbox[class=kinderNo]:checked").each(function(index){
					receiveNo[index] = $(this).val();
			});
				console.log(receiveNo);

			var objParams = {
					"sendNo": $("#loginUserNo").val(),
					"receiveList" : receiveNo
			};

			$.ajax({
				url:"insertSendList.nt",
				dataType:"json",
				type:"get",
				data:{objParams:objParams},
				success:function(data){
					console.log("성공");
				},
				error:function(err){
					console.log(err);
				}

			});
		}

		$(function() {
			$("#checkAll").click(function() {
				if ($("#checkAll").prop("checked")) {
					$("input[name=chk]").prop("checked", true);
				} else {
					$("input[name=chk]").prop("checked", false);
				}
			});


		});

	</script>

</body>
</html>