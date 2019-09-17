<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보낸 쪽지함</title>

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

#btnArea {
	float: right;
	margin-right: 4%;
}

#btn1 {
	background: #ff7575;
	font-weight: bold;
	color: white;
}

#sel1 {
	width: 15%;
	display: inline;
}

#sel2 {
	width: 20%;
	display: inline;
}

#datepicker {
	float: right;
	width: 15%;
	margin-right: 10px;
}

#dateA {
	display: inline;
}
tbody tr:hover {
	cursor:pointer;
}
#listTitle:hover {
	text-decoration:underline;
}
#listTitle {
	width:40%;
}
#checkA {
	width:10%;
}
#nidA {
	width:10%;
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
				<hr>
				<div class="page-category">
					<div class="inputArea">

						<select class="form-control" id="sel1">
							<option>전체보기</option>
							<option>별님반</option>
							<option>티비반</option>
						</select> &nbsp;&nbsp;&nbsp; <select class="form-control" id="sel2">
							<option>전체 원아보기</option>
							<option>김영지</option>
							<option>한송이</option>
						</select>

						<div id="dateA">
							<input type="button" class="btn btn-default" id="datepicker"
								value="날짜 선택">
						</div>
					</div>
				</div>
				<br>

				<div class="page-category">
					<table class="table table-hover" id="table1">
						<thead>
							<tr>
								<th><input type="checkbox" id="checkAll"></th>
								<th>순번</th>
								<th>제목</th>
								<th>받은 사람 (유치원 명)</th>
								<th>보낸 날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="nList" items="${ nList }">
								<tr>
									<td id="checkA"><input type="checkbox" name="chk"></td>
									<td id="nidA"><c:out value="${ nList.noteNo }"/></td>
									<td id="listTitle"><c:out value="${ nList.noteTitle }" /></td>
									<td><c:out value="${ nList.users.userName }" /> ( <c:out value="${ nList.noteKindergarden.kinderName }"/> )</td>
									<td><c:out value="${ nList.noteDate }" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div id="btnArea">
						<button type="button" class="btn" id="btn1">삭제하기</button>
					</div>
					<br>

					<!-- 페이징 -->
					<div id="paginArea" align="center">
						<c:if test="${ pi.currentPage <= 1 }">이전 &emsp;</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="sentNoteList.nt">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
							</c:url>
							<a href="${ blistBack }">이전</a>
							&emsp;
						</c:if>

						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<font color="#6CC0FF" size="4"><b>[${ p }]</b></font>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="blistCheck" value="sentNoteList.nt">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<a href="${ blistCheck }">${ p }</a>
							</c:if>
						</c:forEach>


						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="sentNoteList.nt">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
							</c:url>
							<a href="${ blistEnd }">&emsp; 다음</a>
						</c:if>
						<c:if test="${ pi.currentPage >= pi.maxPage }"> &emsp; 다음 </c:if>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script>
		$(function() {

			$("#checkAll").click(function() {
				if ($("#checkAll").prop("checked")) {
					$("input[name=chk]").prop("checked", true);
				} else {
					$("input[name=chk]").prop("checked", false);
				}
			})

			/* 쪽지 내용 상세 조회 */
			$("#table1").find("td").click(function(){
				var noteNo = $(this).parents().children("td").eq(1).text();

				console.log(noteNo);
				location.href="selectSentNoteOne.nt?noteNo=" + noteNo;
			});
		});
	</script>

</body>
</html>