<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투약의뢰서</title>
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
	height: 55px;
}

#title {
	padding: 15px;
}

#profileArea {
	margin-left: 20px;
}

#contentsArea {
	height: 700px;
	background: white;
}

#profileImg {
	width: 50px;
	height: 50px;
	border-radius: 50%;
}

#symptomArea, #dosageArea {
	line-height: 230%;
	font-size: 14px;
	margin-left: 20px;
}

#tableArea {
	border: 0.5px solid #d6d6d6;
	width: 95%;
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
	width: 70px;
	height: 70px;
	border: solid 1px black;
	float: right;
	display: inline;
	margin-right: 20px;
}

#report {
	width: 100%;
	height: 60px;
	background: #2196f3;
	color: white;
	font-weight: bold;
	font-size: 1.5em;
	text-align: center;
	padding-top: 15px;
}

#report:hover {
	cursor: pointer;
	background: #2183f3;
}

#btn1 {
	background: #666666;
	color: white;
	width: 100px;
}

#btn2, #btn3 {
	color: #595959;
	border: 0.5px solid #e4e1dd;
}

#btnA1 {
	display: inline;
}

#btnA2 {
	float: right;
}

@media only print {
	a[href]::after {
		content: none !important;
	}
	.noprint {
		display:none
	}
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
							<h2 id="title">
								<b>하뽀송의 투약의뢰서</b>
							</h2>
						</div>
						<div id="contentsArea">
							<br>
							<div id="profileArea">
								<i><img src="${ contextPath }/resources/images/woman.png"
									id="profileImg"></i> &nbsp;&nbsp;<b>하뽀송</b>
							</div>
							<br>
							<p style="font-size: 1.15em; margin-left: 20px;">금일 자녀의 투약을
								선생님께 의뢰합니다.</p>
							<hr align="center"
								style="width: 96%; border: none; border: 0.8px dashed lightgray;">
							<div id="symptomArea">
								<i class="fas fa-briefcase-medical"></i>&nbsp;&nbsp;<span><b>증상</b></span>&nbsp;&nbsp;&nbsp;<span>감기</span><br>
							</div>
							<hr align="center"
								style="width: 96%; border: none; border: 0.8px dashed lightgray;">
							<div id="dosageArea">
								<i class="fas fa-pills"></i>&nbsp;&nbsp;<span><b>투약내용</b></span><br>
								<table id="tableArea">
									<tr style="background: #f0f0f0;">
										<th width="30%;">약의 종류</th>
										<td>감기약</td>
									</tr>
									<tr>
										<th>투약 용량</th>
										<td>10 cc/ml</td>
									</tr>
									<tr>
										<th>투약 횟수</th>
										<td>1 회</td>
									</tr>
									<tr>
										<th>투약 시간</th>
										<td>점심 후</td>
									</tr>
									<tr>
										<th>보관 방법</th>
										<td>실온</td>
									</tr>
									<tr>
										<th>특이사항</th>
										<td></td>
									</tr>
								</table>
							</div>
							<br> <br>
							<div id="msgArea">
								<p>투약으로 인한 책임은 의뢰자가 집니다.</p>
								<span>2019.08.30</span>&nbsp;&nbsp;&nbsp;<span><b>하민희</b></span>
							</div>
							<div id="signArea">싸인</div>
							<br>
						</div>
						<div id="report" onclick="goMediReport()">
							<i class="fas fa-plus"></i>&nbsp;&nbsp;<span>투약 보고서 작성</span>
						</div>
						<br>
						<div id="btnA1">
							<button type="button" class="btn" id="btn1" onclick="printPage()">
								<i class="fas fa-print"></i>&nbsp; 출력
							</button>
						</div>
						<div id="btnA2">
							<button type="button" class="btn btn-light" id="btn2">
								<i class="far fa-trash-alt"></i>&nbsp; 삭제
							</button>
							&nbsp;&nbsp;
							<button type="button" class="btn btn-light" id="btn3"
								onclick="goDrugMainView()">
								<i class="fas fa-list"></i>&nbsp; 목록
							</button>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		function goMediReport() {
			location.href = "writeMediReport.pl";
		}
		function goDrugMainView() {
			location.href = "drugMainView.pl";
		}
		function printPage() {
			window.print();
		}
	</script>

</body>
</html>






































