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
</style>

</head>
<body>
<!-- 	<div class="main-panel">
		<i class="fas fa-notes-medical"></i>투약의뢰서
		
	</div>
 -->	
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
      						
      						<select class="form-control" id="sel2">
						        <option>전체 원아보기</option>
						        <option>김영지</option>
						        <option>한송이</option>
      						</select>
      						
							<button type="button" class="btn btn-default" id="btn1">
								<i class="far fa-calendar"></i>&nbsp; 날짜 선택
							</button>      						
						</div>
						
						<button type="button" class="btn" id="btn2">출력 및 다운로드</button>
						
					</div>
				</div>
			</div>
		</div>
	
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>



































