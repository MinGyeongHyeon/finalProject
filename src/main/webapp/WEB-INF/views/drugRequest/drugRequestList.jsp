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
	display:inline;
}
#sel2 {
	width:20%;
	display:inline;
}
#datepicker {
	float:right;
	width:15%;
	margin-right:10px;
}
#list1 {
	width:400px;
	height:420px;
	background:white;
}
#list1:hover {
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
	 margin-right:10px;
	 font-size:25px;
}
#contentArea {
	margin-left:20px;
	line-height:230%;
	font-size:24px;
}
#className {
	margin-left:20px;
	color:#a1a1a1;
}
#btn2 {
	border: 0.5px solid #e4e1dd;
}
#writeBtn {
	margin-right:10px;
	width:15%;
	margin-left: auto;
	color:white;
	background:#ff7575;
	font-weight:bold;
}
#dateA {
	display:inline;
}
.dateT {
	font-size:30px;
}
/* #listArea {
	margin-top:40px;
}
#inputArea {
	height:50px;
} */
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
						<br><br><br>
						<div id="listArea">

							<c:forEach var="dList" items="${ dList }">
							<div id="list1" onclick="showDrugDetail()">
								<br>
								<div id="profileArea">
									<b>하뽀송</b>&nbsp;
									<i><img src="${ contextPath }/resources/images/woman.png" id="profileImg"></i>
								</div>
								<br><br><br><br>
								<div id="contentArea">
									<p class="dateT"><b><c:out value="${ dList.dosageDate }"/></b></p>
									<i class="fas fa-briefcase-medical"></i>&nbsp;&nbsp;<span><b>증상</b></span>&nbsp;&nbsp;<span><c:out value="${ dList.symptom }"/></span><br>
									<i class="far fa-clock"></i>&nbsp;&nbsp;<span><b>투약 시간</b></span>&nbsp;&nbsp;<span><c:out value="${ dList.dosageTime }"/></span><br>
									<i class="fas fa-user"></i>&nbsp;&nbsp;<span><b>의뢰자</b></span>&nbsp;&nbsp;<span>하민희</span><br>
								</div>
								<br>
								<p id="className">별님반</p>
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
		</div>


	<script>
		function showDrugDetail(){
			location.href="drugDetailList.pl";
		}
		function goDrugRequestWrite(){
			location.href="drugRequestWrite.pl";
		}

	</script>

	<script>
    	$(function(){
    		$('.input-group.date').datepicker({
    			calendarWeeks: false,
    			todayHighlight: true,
    			autoclose: true,
    			format: "yyyy/mm/dd",
    			language: "kr"
        	});
    	});
    </script>
</body>
</html>



































