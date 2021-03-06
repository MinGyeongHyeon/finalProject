<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투약보고서</title>
<%-- <link rel="stylesheet" href="${ contextPath }/resources/css/drugRequest/drugReportWriteCss.css">
 --%>
<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}

#titleArea {
	background: #f5f5f5;
	height: 75px;
}

#title {
	padding: 15px;
}

#profileArea {
	margin-left: 20px;
}

#contentsArea {
	height: 750px;
	background: white;
	font-size:15px;
}

#profileImg {
	width: 70px;
	height: 70px;
	border-radius: 50%;
}

#symptomArea, #dosageArea {
	line-height: 230%;
	font-size: 18px;
	margin-left: 25px;
}

#tableArea {
	border: 0.5px solid #d6d6d6;
	width: 96%;
	height: 300px;
}

tr {
	border: 0.5px solid #d6d6d6;
}

th, td {
	padding-left: 20px;
}

#msgArea {
	float: right;
	margin-right: 10%;
	display: inline;
}

#signArea {
	width: 80px;
	height: 80px;
	float: right;
	display: inline;
	margin-right: 5%;
}
#signImg {
	width:80px;
	height:80px;
}
#a1 {
	height: 65px;
	background: #d9d2d2;
	color: #524c4c;
	font-size: 20px;
	line-height: 20px;
	padding: 19px;
	font-weight: bold;
}

#reportArea {
	height: 370px;
	background: #fcfcfc;
}

#reportArea p {
	font-size:16px
}

#reportArea p, #reportArea textarea {
	margin-left: 25px;
}

#bogoContent {
	width: 96%;
	resize: none;
}

.btns {
	width: 200px;
	height: 50px;
	color: white;
}

#btn1 {
	background: #919191;
	font-weight: bold;
	font-size: 20px;
	height:50px;
	border: 0.5px solid #7d7d7d;
}

#btn2 {
	background: #ff737a;
	font-weight: bold;
	font-size: 20px;
	height:50px;
}

#area3 {
	margin-left: 745px;
    font-size: 20px;
	display: inline;
}

#area4 {
	margin-left: 905px;
	font-size: 20px;
	margin-top:15px;
}
::placeholder {
  font-size: 1.2em;
}
#btnA2 {
	float: right;
	display: inline;
}
#btn2, #btn3 {
	color: #595959;
	border: 0.5px solid #e4e1dd;
	width:100px;
	height:50px;
	font-size:15px;
	display: inline;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<c:set var="today" value="<%=new Date()%>" />
	<fmt:formatDate var="todayToString" pattern="yyyy-MM-dd" value="${ today }" />


	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="fas fa-notes-medical" style="font-size: 20px;"></i>&nbsp;&nbsp;
					<h4 class="page-title">투약보고서</h4>
				</div>
				<hr>
				<div class="page-category">
					<div id="mainArea">
						<div id="titleArea">
							<h1 id="title">
								<b><c:out value="${ d.childrenName }"/>의 투약의뢰서</b>
							</h1>
						</div>
						<div id="contentsArea">
							<br>
							<p style="font-size: 1.15em; margin-left: 20px;">금일 자녀의 투약을
								선생님께 의뢰합니다.</p>
							<hr align="center"
								style="width: 96%; border: none; border: 0.8px dashed lightgray;">
							<div id="symptomArea">
								<i class="fas fa-briefcase-medical"></i>&nbsp;&nbsp;<span><b>증상</b></span>&nbsp;&nbsp;&nbsp;
								<span><c:out value="${ d.symptom }"/></span><br>
							</div>
							<hr align="center"
								style="width: 96%; border: none; border: 0.8px dashed lightgray;">
							<div id="dosageArea">
								<i class="fas fa-pills"></i>&nbsp;&nbsp;<span><b>투약내용</b></span><br>
								<table id="tableArea">
									<tr style="background: #f0f0f0;">
										<th width="30%;">약의 종류</th>
										<td><c:out value="${ d.kinds }"/></td>
									</tr>
									<tr>
										<th>투약 용량</th>
										<td><c:out value="${ d.dosageMl }"/></td>
									</tr>
									<tr>
										<th>투약 횟수</th>
										<td><c:out value="${ d.dosageCount }"/> 회</td>
									</tr>
									<tr>
										<th>투약 시간</th>
										<td><c:out value="${ d.dosageTime }"/></td>
									</tr>
									<tr>
										<th>보관 방법</th>
										<td><c:out value="${ d.dosageKeep }"/></td>
									</tr>
									<tr>
										<th>특이사항</th>
										<td>
											<c:if test="${ !d.dosageProblem }">
												<c:out value="작성된 특이사항이 없습니다."/>
											</c:if>
											<c:if test="${ d.dosageProblem }">
												<c:out value="${ d.dosageProblem }"/>
											</c:if>
										</td>
									</tr>
								</table>
							</div>
							<br>
							<br>
							<div id="check">
								<div id="area3">
									<span>금일 자녀의 투약을 선생님께 의뢰합니다.</span>
								</div>
								<div id="signArea"><img src="<c:out value="${ d.signUrl}" />" id="signImg" /></div>
								<div id="area4">
									<span><b><c:out value="${ d.dosageDate }"/></b></span>
									&nbsp;<span><c:out value="${ d.userName }"/></span>
								</div>
							</div>
						</div>
						<br>
						<div id="a1">
							<i class="fas fa-file-medical"></i>&nbsp;<span>투약보고서</span>
						</div>
						<form method="get" action="insertDosageBogo.ds" onsubmit="return insertBogo()">
						<div id="reportArea">
							<br>
							<p>금일 본 원의 <c:out value="${ d.childrenName }"/> 원아에 대해 의뢰하신 내용대로 투약하였음을 보고합니다.</p>
							<p><fmt:formatDate type="date" value="${today}" pattern="YYYY.MM.dd" /> ${ loginUser.userName }</p>
							<p style="color: #8f8f8f">투약보고서는 실제 투약 후 작성될 수 있으니 참고해 주세요.</p>
							<hr width="96%">
							<p>
								<b>보고사항</b>
							</p>
							<p><c:out value="${ d.bogoContent }"/></p>
							<input type="hidden" value="${ d.dosageNo }" id="dosageNo" name="dosageNo">
						</div>
						<br>
						</form>
						<div id="btnA2">
								<button type="button" class="btn btn-light" id="btn2" onclick="goDeleteOne()">
									<i class="far fa-trash-alt"></i>&nbsp; 삭제
								</button>
								&nbsp;&nbsp;
								<button type="button" class="btn btn-light" id="btn3" onclick="goDrugMainView()">
									<i class="fas fa-list"></i>&nbsp; 목록
								</button>
						</div>
						<br><br>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		function goDrugMainView() {
			location.href = "dosageList.ds";
		}
		function insertBogo(){
			var dosageNo = $("#dosageNo").val();
			console.log(dosageNo);

			var bogoContent = $("#bogoContent").val();
			console.log(bogoContent);

			if(bogoContent == ""){
				alert("보고 내용을 작성해주세요.");
				$("#bogoContent").focus();
				return false;
			}else {
				location.href = "insertDosageBogo.ds?dosageNo="+dosageNo;
			}

		}
		function goDeleteOne(){
			var dosageNo = $("#dosageNo").val();

			if(confirm("투약의뢰서 삭제 시 투약보고서가 함께 삭제됩니다.\n정말 삭제하시겠습니까?") == true){
				location.href="updateStatus.ds?dosageNo=" + dosageNo;
			}else {
				return;
			}

		}
	</script>

</body>
</html>

