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
#sel1 {
	width:15%;
	display:inline;
}
#sel2 {
	width:20%;
	display:inline;
}
#btn1 {
	float:right;
	width:15%;
	margin-right:10px;
}
#list1 {
	width:230px;
	height:270px;
	background:white;
}
#list1:hover {
	background:#fafafa;
	cursor:pointer;
}
#profileImg {
	width:50px;
	height:50px;
	border-radius:50%;
}
#profileArea {
	 float:right;
	 margin-right:10px;
}
#contentArea {
	margin-left:20px;
	line-height:230%;
	font-size:13px;
}
#className {
	margin-left:20px;
	color:#a1a1a1;
}

</style>

</head>
<body>	
 	<jsp:include page="../common/menubar.jsp"></jsp:include>
 	
	<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<div class="page-header">
						<i class="fas fa-notes-medical" style="font-size:20px;"></i>&nbsp;&nbsp;<h4 class="page-title">투약의뢰서</h4>
					</div>
					<hr>
					<div class="page-category">
						<div class="inputArea">
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
      						
							<button type="button" class="btn btn-default" id="btn1">
								<i class="far fa-calendar"></i>&nbsp; 날짜 선택
							</button>      						
						</div>
						<br>
						<div id="listArea">
						
							<div id="list1" onclick="showDrugDetail()">
								<br>
								<div id="profileArea">								
									<b>하뽀송</b>&nbsp;&nbsp;
									<i><img src="${ contextPath }/resources/images/woman.png" id="profileImg"></i>
								</div><br><br><br>
								<div id="contentArea">								
									<h3><b>2019년 8월 30일</b></h3>
									<i class="fas fa-briefcase-medical"></i>&nbsp;&nbsp;<span>증상</span>&nbsp;&nbsp;<span>감기</span><br>
									<i class="far fa-clock"></i>&nbsp;&nbsp;<span>투약 시간</span>&nbsp;&nbsp;<span>점심 후</span><br>
									<i class="far fa-user"></i>&nbsp;&nbsp;<span>의뢰자</span>&nbsp;&nbsp;<span>하민희</span><br>
								</div>
								<br>
								<p id="className">별님반</p>
							</div>
							
						</div>
						
						<br>
						<button type="button" class="btn btn-light" id="btn2">
							<i class="fas fa-print"></i>&nbsp; 출력 및 다운로드
						</button>
						
					</div>
				</div>
			</div>
		</div>
	
	
	<jsp:include page="../common/footer.jsp"/>
	
	<script>
		function showDrugDetail(){
			location.href="drugDetailList.pl";
		}
	</script>
</body>
</html>



































