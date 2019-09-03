<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알림장</title>
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



#tableArea {
	border: 0.5px solid #d6d6d6;
	width: 95%;
	height: 300px;
}

#btnA1 {
	display:inline;
}
#btnA2 {
	float:right;
}


 td {
	text-align:center;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="fas fa-envelope-open-text" style="font-size: 20px;">&nbsp;</i>
					<h4 class="page-title">알림장</h4>
				</div>
				<hr>
				<div class="page-category">
					<div id="mainArea">
						<div id="titleArea">
							<h2 id="title">
								<b>2019-09-03 알림장</b>
							</h2>
						</div>
						<div id="contentsArea">
							<br>
							<div id="profileArea">
								<i><img src="${ contextPath }/resources/images/woman.png"
									id="profileImg"></i> &nbsp;&nbsp;<b>원아 이름</b>
							</div>
							<br>
							<p style="font-size: 1.15em; margin-left: 20px;">금일 자녀의 투약을
								선생님께 의뢰합니다.</p>
		
								<table id="tableArea">
									<tr style="background: #f0f0f0;">
										<td colspan="2" class="title">공통 알림장</td>
									</tr>
									<tr>
										<td colspan="2">뼈 우리 피부가 않는 그리하였는가? 물방아 생생하며, 싸인 따뜻한 보내는 있을 인간의 있으랴? 속잎나고, 몸이 위하여, 봄바람이다. 찾아다녀도, 하여도 무엇을 가치를 쓸쓸하랴? 찾아다녀도, 바이며, 공자는 기관과 천지는 피가 청춘에서만 별과 천하를 칼이다. 것은 뛰노는 무엇을 거선의 동력은 청춘의 청춘 옷을 이상의 칼이다. 이상, 꽃이 타오르고 위하여서. 얼마나 불러 뛰노는 생의 싸인 무엇을 풍부하게 끓는 이것이다. 발휘하기 끝에 곧 창공에 뛰노는 있으랴?</td>
									</tr>
								</table>
							</div>
							<br>
						<div id="btnA1">
							<button type="button" class="btn" id="btn1" onclick="print()">
								<i class="fas fa-print"></i>&nbsp; 출력
							</button>
						</div>
						<div id="btnA2">
							<button type="button" class="btn btn-light" id="btn2">
								<i class="far fa-trash-alt"></i>&nbsp; 삭제
							</button>&nbsp;&nbsp;
							<button type="button" class="btn btn-light" id="btn3" onclick="goDrugMainView()">
								<i class="fas fa-list"></i>&nbsp; 목록
							</button>
						</div>
					
					
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		function goMediReport(){
			location.href="writeMediReport.pl";
		}
		function goDrugMainView(){
			location.href="drugMainView.pl";
		}
		funtcion print(){
			$(this).window.print();
		}
	</script>

</body>
</html>






































