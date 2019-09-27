<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일지 관리</title>

<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}

#writeBtn {
	margin-right: 10px;
	width: 12%;
	margin-left: auto;
	font-size: 16px;
	float: right;
	display: inline;
	background:#555 !important;
	color:white;
	height:50px;
}

#sel1, #sel2 {
	width: 15%;
	height: 50px;
	display: inline;
	font-size:16px;
}
#table1 {
	text-align: center;
}
#table1 th {
	font-size:16px;
}
tbody tr:hover {
	cursor:pointer;
}
#listTitle:hover {
	text-decoration:underline;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<fmt:formatDate value="${ l.journalDate }" pattern="yyyy년 MM월 dd일"/>

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="far fa-clipboard" style="font-size: 20px;"></i>&nbsp;&nbsp;
					<h4 class="page-title">일지관리</h4>
				</div>
				<hr>
				<div class="page-category">
					<div class="inputArea">
						<select class="form-control" id="sel1">
							<option>종류</option>
							<option>일지</option>
							<option>주간일지</option>
						</select> &nbsp;&nbsp;&nbsp; <select class="form-control" id="sel2">
							<option>전체반</option>
							<option>햇님반</option>
							<option>별님반</option>
						</select>
						<!--
						<button type="button" class="btn btn-light" id="writeBtn">
							<i class="fas fa-pen"></i>&nbsp; 작성하기
						</button>
						 -->
						<button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" id="writeBtn">
						작성하기</button>
    						<div class="dropdown-menu">
      							<a class="dropdown-item" href="writeJournal.pl">일지 작성하기</a>
      							<a class="dropdown-item" href="#">주간일지 작성하기</a>
    						</div>

					</div>

					<br> <br>
					<div id="tableA">
						<table class="table table-hover" id="table1">
							<thead>
								<tr>
									<th>종류</th>
									<th>글 제목</th>
									<th>작성 날짜</th>
									<th>반</th>
									<th>작성자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="l" items="${ jList }">
									<tr>
										<input type="hidden" value="${ l.journalNo }" id="journalNo">
										<td class="in">일지</td>
										<td class="in" id="listTitle"><fmt:formatDate value="${ l.journalDate }" pattern="yyyy년 MM월 dd일"/> 일지</td>
										<td class="in"><c:out value="${ l.journalDate }"/></td>
										<td class="in"><c:out value="${ l.className }"/></td>
										<td class="in"><c:out value="${ l.userName }"/></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>


									<!-- 페이징 -->
					<div id="paginArea" align="center">
						<c:if test="${ pi.currentPage <= 1 }">이전 &emsp;</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="journalMain.jn">
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
								<c:url var="blistCheck" value="journalMain.jn">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<a href="${ blistCheck }">${ p }</a>
							</c:if>
						</c:forEach>


						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="journalMain.jn">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
							</c:url>
							<a href="${ blistEnd }">&emsp; 다음</a>
						</c:if>
						<c:if test="${ pi.currentPage >= pi.maxPage }"> &emsp; 다음 </c:if>
					</div>


			</div>
		</div>
	</div>

	<script>
		$(function(){

			$(".in").click(function(){
				var journalNo = $(this).parents().children("input").val();

				console.log(journalNo);

				location.href="selectJournalOne.jn?journalNo=" + journalNo;

			});

		});
	</script>

</body>
</html>