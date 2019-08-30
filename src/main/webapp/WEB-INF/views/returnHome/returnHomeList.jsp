<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
</head>
<style>
	.main-panel {
	    position: relative;
	    width: calc(100% - 240px);
	    height: 100vh;
	    min-height: 100%;
	    float: right;
	    transition: all .3s;
	    padding-top:100px;
	    padding-left: 3%;
	    padding-right: 3%;
	}
	
	.returnHomeList{
		margin: 0 auto;
	}
	
	.returnHomeSummary{
		width:30%;
		margin-top:10px;
		margin-bottom:20px;
		margin-right:2%;
		display: inline-block;
		background:#fff;
		height:200px;
	}
	.returnHomeSummary img{
		width:20px;
		height:20px;
	}
	.returnHomeSummary table{
		width:90%;
		margin:0 auto;
		font-size: 0.8em;
	}
	
	.returnHomeSummary:nth-child(3n-2){
		margin-left: 2%;
	}
	.returnHomeSummary table tr:first-child {
		text-align: right;
	}
	.returnHomeSummary table tr:nth-child(2) {
		font-weight: bold;
		font-size: 1.3em;
	}
	.returnHomeSummary table tr:nth-child(3) {
		height:30px;
		vertical-align: bottom;
		
	}
	.returnHomeSummary table tr:nth-child(4) {
		height:30px;
		vertical-align: bottom;
	}
	.returnHomeSummary table tr:nth-child(5) {
		height:30px;
		vertical-align: bottom;
	}
	.returnHomeSummary table tr:last-child{
		height:40px;
		vertical-align: bottom;
	}
	
	.printBtnArea{
		width:100%;
		text-align: right;
	}
	
	.printBtnArea button{
		border-radius: 5px;
		background:#555;
		color:#fff;
		height:40px;
		width:120px;
		
	}

	
	
</style>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">귀가동의서</label>
					</td>
					<td id="writeDelete" style="text-align:right;">
						<!-- 로그인한 사람이 학부모일  경우 작성하기버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) -->
						<c:if test="${ loginUserJob != 1 }">
							<button id="contentsWrite">작성하기</button>
						</c:if>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		
		<div class="returnHomeSearchArea">
			<table style="width:100%">
				<tr>
					<td>
						<select name="kidsNameList" id="kidsNameList">
							<option value="000">전체 원아 보기</option>
							<option value="001">김영지</option>
							<option value="002">민경현</option>
							<option value="003">박찬민</option>
							<option value="004">하민희</option>
							<option value="005">한송이</option>
						</select>
					</td>
					<td style="text-align:right;">
						<input type="date" />
					</td>
				</tr>		
			</table>
		</div>
		<br />
		<div class="returnHomeList">
			<%int num = 4;
			for(int i = 0; i < num; i++){%>
			<div class="returnHomeSummary">
				<table>
					<tr>
						<td colspan="2">kidsName<p></p></td>
					</tr><tr>
						<td colspan="2"> 2019년 8월 14일</td>
					</tr><tr>
						<td width="50%"><img src="${ contextPath }/resources/images/car.png" alt="" />귀가방법</td>
						<td>버스</td>
					</tr><tr>
						<td><img src="${ contextPath }/resources/images/alarm-clock.png" alt="" />시간</td>
						<td>오후 6:30</td>
					</tr><tr>	
						<td><img src="${ contextPath }/resources/images/family.png" alt="" />보호자</td>
						<td>엄마</td>
					</tr><tr>
						<td colspan="2">별님반</td>
					</tr>
				</table>
			</div>
			<%} %>
		</div>
		<div class="printBtnArea">
			<button>출력 및 다운로드</button>
		</div>
		
	</div>
</body>
</html>



































