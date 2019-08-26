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
	.contentsArea{
		margin-top:60px;
		min-height: 660px;
	}
	
	.drugRequestArea{
		width:65%;w
		min-height: 560px;
		margin:0 auto;
	}
	
	.drugRequestList{
		margin: 0 auto;
	}
	
	.drugRequestSummary{
		width:30%;
		margin-top:10px;
		margin-bottom:20px;
		margin-right:2%;
		display: inline-block;
		background:#fff;
		height:200px;
	}
	
	.drugRequestSummary table{
		width:90%;
		margin:0 auto;
		font-size: 0.8em;
	}
	
	.drugRequestSummary:nth-child(3n-2){
		margin-left: 2%;
	}
	.drugRequestSummary table tr:first-child {
		text-align: right;
	}
	.drugRequestSummary table tr:nth-child(2) {
		font-weight: bold;
		font-size: 1.3em;
	}
	.drugRequestSummary table tr:nth-child(3) {
		height:30px;
	}
	.drugRequestSummary table tr:nth-child(4) {
		height:30px;
	}
	.drugRequestSummary table tr:nth-child(5) {
		height:30px;
	}
	.drugRequestSummary table tr:last-child{
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
	<jsp:include page="../common/teacherHeader.jsp"/>
	<jsp:include page="../common/teacherSideMenu.jsp"/>
	
	<div class="contentsArea">
	<div class="drugRequestArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">투약의뢰서</label>
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
		
		<div class="drugSearchArea">
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
		<div class="drugRequestList">
			<%int num = 5;
			for(int i = 0; i < num; i++){%>
			<div class="drugRequestSummary">
				<table>
					<tr>
						<td colspan="2">kidsName<p></p></td>
					</tr><tr>
						<td colspan="2"> 2019년 8월 14일</td>
					</tr><tr>
						<td width="40%">증상</td>
						<td>기침</td>
					</tr><tr>
						<td>투약시간</td>
						<td>식후 30분</td>
					</tr><tr>	
						<td>의뢰자</td>
						<td>박찬민</td>
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
	</div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>



































