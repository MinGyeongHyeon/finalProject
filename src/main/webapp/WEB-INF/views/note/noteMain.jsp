<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>받은 쪽지함</title>
<%-- <link rel="stylesheet" href="${ contextPath }/resources/css/note/sentNoteBoxCss.css"> --%>

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
	width:13%;
	display: inline;
	height:50px;
	font-size:15px;
}

#datepicker {
	float: right;
	width: 13%;
	margin-right: 10px;
	height:50px;
	font-size:15px;
	background:#555;
	color:#fafafa;
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
					<i class="far fa-envelope-open" style="font-size: 20px;"></i>&nbsp;&nbsp;
					<h4 class="page-title">받은 쪽지함</h4>
				</div>
				<hr>
				<div class="page-category">
					<div class="inputArea">

						<select class="form-control" id="sel1">
							<option>전체보기</option>
							<option>별님반</option>
							<option>티비반</option>
						</select>

						<div id="dateA">
							<input type="button" class="btn" id="datepicker" value="날짜 선택">
						</div>
					</div>
				</div>
				<br>

				<div class="page-category">
					<table class="table table-hover" id="table1">
						<thead>
							<tr>
								<th><input type="checkbox" id="checkAll"></th>
								<th>제목</th>
								<th>보낸 사람 (유치원 명)</th>
								<th>보낸 날짜</th>
								<th>확인 여부</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="rList" items="${ rList }">
								<tr>
									<input type="hidden" id="checked" value="${ rList.checked }">
									<td id="checkA"><input type="checkbox" name="chk" class="noteNo" value="${ rList.noteNo }"></td>
									<input type="hidden" id="nidA" value="${ rList.noteNo }">
									<%-- <td><input type="hidden" id="nidA" value="${ nList.noteNo }"></td> --%>
									<%-- <td id="nidA"><c:out value="${ nList.noteNo }"/></td> --%>
									<td class="in" id="listTitle"><c:out value="${ rList.noteTitle }" /></td>
									<td class="in">
										<c:out value="${ rList.users.userName }" />
										<c:if test="${ loginUser.userNo eq 0}">
										 ( <c:out value="${ rList.noteKindergarden.kinderName }"/> )
										 </c:if>
									</td>
									<td class="in"><c:out value="${ rList.noteDate }" /></td>
									<td class="in">
										<c:choose>
										    <c:when test="${ rList.checked eq 'Y'}">읽음</c:when>
										    <c:when test="${ rList.checked eq 'N'}">읽지않음</c:when>
										</c:choose>
									</td>
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
							<c:url var="blistBack" value="recieveNoteList.nt">
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
								<c:url var="blistCheck" value="recieveNoteList.nt">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<a href="${ blistCheck }">${ p }</a>
							</c:if>
						</c:forEach>


						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="recieveNoteList.nt">
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
		function getUrlParams() {
    		var params = {};
   			window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
    		return params;
		}

		$(function() {

			oParams = getUrlParams();

			if(oParams.check == 'Y'){
				alert("삭제되었습니다.");
			}

			$("#checkAll").click(function() {
				if ($("#checkAll").prop("checked")) {
					$("input[name=chk]").prop("checked", true);
				} else {
					$("input[name=chk]").prop("checked", false);
				}
			})

			$(".in").click(function(){
				var noteNo = $(this).parents().children("input").eq(1).val();

				console.log(noteNo);

				var location = "selectRecieveNoteOne.nt?noteNo=" + noteNo;

				obj = window.open(location,"testWin","left=570, top=80, width=500, height=550, toolbar=no, scrollbars=no, status=no, resizable=no");


				//location.href="selectRecieveNoteOne.nt?noteNo=" + noteNo;
			});


		});
	</script>

</body>
</html>