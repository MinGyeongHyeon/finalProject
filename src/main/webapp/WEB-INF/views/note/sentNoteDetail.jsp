<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보낸 쪽지함</title>
<link rel="stylesheet" href="${ contextPath }/resources/css/note/sentNoteDetailCss.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

				if(confirm("정말 삭제하시겠습니까?") == true){
					location.href="deleteSentNoteOne.nt?noteNo=" + noteNo;
				}else {
					return;
				}

			});

		});
	</script>

</body>
</html>