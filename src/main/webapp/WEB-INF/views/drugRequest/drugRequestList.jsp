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
	height:50px;
	display:inline;
	font-size:18px;
}
#sel2 {
	width:15%;
	height:50px;
	display:inline;
	font-size:18px;
}
#datepicker {
	float:right;
	width:13%;
	margin-right:10px;
	height:50px;
	font-size:18px;
	background: #555;
	color:white;
}
.card {
	width:290px;
	height:350px;
	background:#fcfcea !important;
	float: left;
	margin-left:23px;
}
.cardY {
	width:290px;
	height:350px;
	background:white !important;
	float: left;
	margin-left:23px;
}
.card:hover, .cardY:hover {
	background:#fafafa !important;
	cursor:pointer;
}
#profileImg {
	width:60px;
	height:60px;
	border-radius:50%;
}
#profileArea {
	 float:right;
	 margin-left:50%;
	 font-size:25px;
	 width:50%;
}
#contentArea {
	margin-left:8%;
	line-height:230%;
	font-size:20px;
	padding-top:6px;
}
#className {
	margin-left:8%;
	color:#a1a1a1;
}
#btn2 {
	border: 0.5px solid #e4e1dd;
	margin-left:50px;
	height:50px;
}
#writeBtn {
	margin-right:10px;
	width:13%;
	height:50px;
	margin-left: auto;
	color:white;
	background:#ff7575;
	font-size:18px;
}
#dateA {
	display:inline;
}
.dateT {
	font-size:20px;
}

#empty {
	margin-left:40%;
}
#bName {
	font-size:20px;
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
						<i class="fas fa-notes-medical" style="font-size:20px;"></i>&nbsp;&nbsp;<h4 class="page-title">투약의뢰서</h4>
						<c:if test="${ loginUser.classification eq '학부모'}">
						<button type="button" class="btn" id="writeBtn" onclick="goDrugRequestWrite()"><i class="fas fa-pen"></i>&nbsp;작성하기</button>
						</c:if>
					</div>
					<hr>
					<div class="page-category">
						<br><br>
						<div id="listArea">
							<c:if test="${ empty detailList }">
								<div id="empty">
									<br><br><br><br><br><br>
									<h1 style="font-size:20px;"><b>작성된 투약의뢰서가 없습니다.</b></h1>
								</div>
							</c:if>
							<c:forEach var="l" items="${ detailList }">
							<c:choose>
							<c:when test="${ l.reading eq 'Y' }">
								<div class=cardY>
								<input type="hidden" name="dosageNo" id="dosageNo" value="${ l.dosageNo }">
								<br>
								<div id="profileArea">
									<b id="bName"><c:out value="${ l.childrenName }"/></b>&nbsp;
										<i><img src="${ contextPath }/resources/images/p.jpg" id="profileImg"></i>
								</div>
								<div id="contentArea">
									<p class="dateT"><b><c:out value="${ l.dosageDate }"/></b></p>
									<i class="fas fa-briefcase-medical"></i>&nbsp;&nbsp;<span><b>증상</b></span>&nbsp;&nbsp;<span><c:out value="${ l.symptom }"/></span><br>
									<i class="far fa-clock"></i>&nbsp;&nbsp;<span><b>투약 시간</b></span>&nbsp;&nbsp;<span><c:out value="${ l.dosageTime }"/></span><br>
									<i class="fas fa-user"></i>&nbsp;&nbsp;<span><b>의뢰자</b></span>&nbsp;&nbsp;<span><c:out value="${ l.userName }"/></span><br>
								</div>
								<br>
								<p id="className"><c:out value="${ l.className }"/></p>
								<input type="hidden" value="${ l.reading }" id="reading">
								</div>
							</c:when>
							<c:otherwise>
							<div class=card>
								<input type="hidden" name="dosageNo" id="dosageNo" value="${ l.dosageNo }">
								<br>
								<div id="profileArea">
									<b id="bName"><c:out value="${ l.childrenName }"/></b>&nbsp;
										<i><img src="${ contextPath }/resources/images/p.jpg" id="profileImg"></i>
								</div>
								<div id="contentArea">
									<p class="dateT"><b><c:out value="${ l.dosageDate }"/></b></p>
									<i class="fas fa-briefcase-medical"></i>&nbsp;&nbsp;<span><b>증상</b></span>&nbsp;&nbsp;<span><c:out value="${ l.symptom }"/></span><br>
									<i class="far fa-clock"></i>&nbsp;&nbsp;<span><b>투약 시간</b></span>&nbsp;&nbsp;<span><c:out value="${ l.dosageTime }"/></span><br>
									<i class="fas fa-user"></i>&nbsp;&nbsp;<span><b>의뢰자</b></span>&nbsp;&nbsp;<span><c:out value="${ l.userName }"/></span><br>
								</div>
								<br>
								<p id="className"><c:out value="${ l.className }"/></p>
								<input type="hidden" value="${ l.reading }" id="reading">
							</div>
							</c:otherwise>
							</c:choose>
							</c:forEach>

						</div>

						<br>




					</div>
				</div>
			</div>
						<c:if test="${ loginUser.classification ne '학부모' }">
						<button type="button" class="btn btn-light" id="btn2" onclick="printAndDown()">
							<i class="fas fa-print"></i>&nbsp; 출력 및 다운로드
						</button>
						</c:if>

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
					<br><br>

		</div>

	<script>
		function goDrugRequestWrite(){
			location.href="drugRequestWrite.pl";
		}
 		function getUrlParams() {
    		var params = {};
   			window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
    		return params;
		}

    	$(function(){
    		oParams = getUrlParams();

			if(oParams.check == 'Y'){
				alert("삭제되었습니다.");
			}

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

     		if($("#reading").val() == 'Y'){
    			$(this).parents().addClass("class", "read");
    		}


    	});

    	function printAndDown(){
    		window.open("printAndDown.ds");
    	}


    </script>
</body>
</html>

