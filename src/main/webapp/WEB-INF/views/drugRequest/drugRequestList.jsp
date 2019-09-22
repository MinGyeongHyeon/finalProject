<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투약의뢰서</title>
<%-- <link rel="stylesheet" href="${ contextPath }/resources/css/drugRequest/drugRequestListCss.css"> --%>

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<style>
.main-panel {
    position: relative;
    width: calc(100% - 240px);
    height: 100vh;
    min-height: 100%;
    float: right;
    transition: all .3s;
}
#sel1 {
	width:15%;
	height:70px;
	display:inline;
}
#sel2 {
	width:20%;
	height:70px;
	display:inline;
}
#datepicker {
	float:right;
	width:15%;
	margin-right:10px;
	height:70px;
	font-size:1.8em;
}
.card {
	width:400px;
	height:450px;
	background:white;
	float: left;
	margin-left:25px;
}
.card:hover {
	background:#fafafa;
	cursor:pointer;
}
#profileImg {
	width:80px;
	height:80px;
	border-radius:50%;
}
#profileArea {
	 float:right;
	 margin-left:50%;
	 font-size:25px;
	 width:80%;
}
#contentArea {
	margin-left:8%;
	line-height:230%;
	font-size:24px;
}
#className {
	margin-left:8%;
	color:#a1a1a1;
}
#btn2 {
	border: 0.5px solid #e4e1dd;
}
#writeBtn {
	margin-right:10px;
	width:15%;
	height:70px;
	margin-left: auto;
	color:white;
	background:#ff7575;
	font-weight:bold;
	font-size:1.8em;
}
#dateA {
	display:inline;
}
.dateT {
	font-size:30px;
}
.page-title {
	font-size:35px !important;
}
#empty {
	margin-left:25%;
}
</style>

<script>
$(function(){
	$("#datepicker").datepicker({
		changeMonth: true,
        changeYear: true,
        nextText: '다음 달',
        prevText: '이전 달'
	});
});
</script>

</head>
<body>
 	<jsp:include page="../common/menubar.jsp"/>

	<fmt:formatDate var="todayToString" pattern="yyyy/MM/dd" value="${ today }" />
	<fmt:formatDate var="tomorrowToString" pattern="yyyy/MM/dd" value="${ tomorrow }" />

	<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<div class="page-header">
						<i class="fas fa-notes-medical" style="font-size:35px;"></i>&nbsp;&nbsp;<h4 class="page-title">투약의뢰서</h4>
						<c:if test="${ loginUser.classification eq '학부모'}">
						<button type="button" class="btn" id="writeBtn" onclick="goDrugRequestWrite()"><i class="fas fa-pen"></i>&nbsp;작성하기</button>
						</c:if>
					</div>
					<hr>
					<div class="page-category">
						<div class="inputArea">
							<c:if test="${ loginUser.classification ne '학부모' }">
							<select class="form-control" id="sel1">
						        <option>전체반</option>
						        <option>별님반</option>
						        <option>티비반</option>
      						</select>
      						&nbsp;&nbsp;&nbsp;
      						<select class="form-control" id="sel2">
						        <option>전체 원아보기</option>
						        <option>김영지</option>
						        <option>한송이</option>
      						</select>
      						</c:if>
      						<div id="dateA">
							<input type="button" class="btn btn-default" id="datepicker" value="날짜 선택">
							</div>
						</div>
						<br><br><br><br>
						<div id="listArea">
							<c:if test="${ empty detailList }">
								<div id="empty">
									<br><br><br><br><br><br><br><br><br><br><br><br>
									<h1 style="font-size:44px;"><b>작성된 투약의뢰서가 없습니다.</b></h1>
								</div>
							</c:if>
							<c:forEach var="l" items="${ detailList }">
							<div class=card>
								<input type="hidden" name="dosageNo" id="dosageNo" value="${ l.dosageNo }">
								<br>
								<div id="profileArea">
									<b><c:out value="${ l.childrenName }"/></b>&nbsp;
									<i><img src="${ contextPath }/resources/images/woman.png" id="profileImg"></i>
								</div>
								<br><br>
								<div id="contentArea">
									<p class="dateT"><b><c:out value="${ l.dosageDate }"/></b></p>
									<i class="fas fa-briefcase-medical"></i>&nbsp;&nbsp;<span><b>증상</b></span>&nbsp;&nbsp;<span><c:out value="${ l.symptom }"/></span><br>
									<i class="far fa-clock"></i>&nbsp;&nbsp;<span><b>투약 시간</b></span>&nbsp;&nbsp;<span><c:out value="${ l.dosageTime }"/></span><br>
									<i class="fas fa-user"></i>&nbsp;&nbsp;<span><b>의뢰자</b></span>&nbsp;&nbsp;<span><c:out value="${ l.userName }"/></span><br>
								</div>
								<br>
								<p id="className"><c:out value="${ l.className }"/></p>
							</div>
							</c:forEach>

						</div>

						<br>
						<c:if test="${ loginUser.classification ne '학부모' }">
						<button type="button" class="btn btn-light" id="btn2">
							<i class="fas fa-print"></i>&nbsp; 출력 및 다운로드
						</button>
						</c:if>




					</div>
				</div>
			</div>

		<!-- 페이징 -->
					<div id="paginArea" align="center">
						<c:if test="${ pi.currentPage <= 1 }">이전 &emsp;</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="dosageList.ds">
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
								<c:url var="blistCheck" value="dosageList.ds">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<a href="${ blistCheck }">${ p }</a>
							</c:if>
						</c:forEach>


						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="dosageList.ds">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
							</c:url>
							<a href="${ blistEnd }">&emsp; 다음</a>
						</c:if>
						<c:if test="${ pi.currentPage >= pi.maxPage }"> &emsp; 다음 </c:if>
					</div>

		</div>

	<script>
		function goDrugRequestWrite(){
			location.href="drugRequestWrite.pl";
		}

    	$(function(){

    		$('.input-group.date').datepicker({
    			calendarWeeks: false,
    			todayHighlight: true,
    			autoclose: true,
    			format: "yyyy/mm/dd",
    			language: "kr"
        	});

    		$("#listArea > div").click(function(){
    			var dosageNo = $(this).children("#dosageNo").val();
    			console.log(dosageNo);
    			location.href="dosageDetail.ds?dosageNo=" + dosageNo;
    		});




    	});


    </script>
</body>
</html>



































