<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투약의뢰서</title>
<%-- <link rel="stylesheet" href="${ contextPath }/resources/css/drugRequest/drugRequestDetailCss.css"> --%>

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

#report {
	width: 100%;
	height: 70px;
	background: #e0dada;
	color: #524c4c;
	font-weight: bold;
	font-size: 1.7em;
	text-align: center;
	padding-top: 15px;
}

#report:hover {
	cursor: pointer;
	background: #d9d2d2;
}

#btn1 {
	background: #666666;
	color: white;
	width: 100px;
	height:50px;
	display: inline;
	font-size:16px;
}

#btn2, #btn3 {
	color: #595959;
	border: 0.5px solid #e4e1dd;
	width:100px;
	height:50px;
	font-size:15px;
	display: inline;
}

#btnA1 {
	display: inline;
}

#btnA2 {
	float: right;
	display: inline;
}

@media only print {
	a[href]::after {
		content: none !important;
	}
	.noprint {
		display: none;
	}
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
#signImg {
	width:80px;
	height:80px;
}
</style>


</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="fas fa-notes-medical" style="font-size: 20px;"></i>&nbsp;&nbsp;
					<h4 class="page-title">투약의뢰서</h4>
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
							<div id="profileArea">
								<c:choose>
									<c:when test="${ empty at.changeName }">
										<i><img src="${ contextPath }/resources/images/woman.png" id="profileImg"></i>
									</c:when>
									<c:when test="${ not empty at.changeName }">
										<i><img src="${ contextPath }/resources/uploadFiles/${at.changeName}" id="profileImg" class="avatar-img rounded"></i>
									</c:when>
								</c:choose>
								&nbsp;&nbsp;<b><c:out value="${ d.childrenName }"/></b>
							</div>
							<br>
							<p style="font-size: 1.15em; margin-left: 20px;">금일 자녀의 투약을
								선생님께 의뢰합니다.</p>
							<hr align="center"
								style="width: 96%; border: none; border: 0.8px dashed lightgray;">
							<div id="symptomArea">
								<i class="fas fa-briefcase-medical"></i>&nbsp;&nbsp;<span><b>증상</b></span>
								&nbsp;&nbsp;&nbsp;<span><c:out value="${ d.symptom }"/></span><br>
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

							<div id="check">
								<div id="area3">
									<span>금일 자녀의 투약을 선생님께 의뢰합니다.</span>
								</div>
								<div id="signArea">
									<img src="<c:out value="${ d.signUrl}" />" id="signImg" />
								</div>
								<div id="area4">
									<span><b><c:out value="${ d.dosageDate }"/></b></span>&nbsp;<span><c:out value="${ d.userName }"/></span>
								</div>
							</div>
						</div>
						<div class="noprint">

							<c:if test="${ loginUser.classification ne '학부모' }">
							<div id="report" onclick="goMediReport()">
								<i class="fas fa-plus"></i>&nbsp;&nbsp;<span>투약 보고서 작성</span>
							</div>
							<br>
							<div id="btnA1">
								<button type="button" class="btn" id="btn1"
									onclick="printPage()">
									<i class="fas fa-print"></i>&nbsp; 출력
								</button>
							</div>
							</c:if>
							<c:if test="${ loginUser.classification eq '학부모' }">
							<br>
							</c:if>
							<div id="btnA2">
								<button type="button" class="btn btn-light" id="btn2" onclick="goDeleteOne()">
									<i class="far fa-trash-alt"></i>&nbsp; 삭제
								</button>
								&nbsp;&nbsp;
								<button type="button" class="btn btn-light" id="btn3" onclick="goDrugMainView()">
									<i class="fas fa-list"></i>&nbsp; 목록
								</button>
							</div>
							<br>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<input type="hidden" value="${ d.dosageNo }" id="dosageNo" name="dosageNo">

	<script>
		function goMediReport() {
			var dosageNo = $("#dosageNo").val();
			console.log(dosageNo);
			location.href = "mediReport.ds?dosageNo=" + dosageNo;
		}
		function goDrugMainView() {
			location.href = "dosageList.ds";
		}
		function printPage() {
			window.print();
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






































