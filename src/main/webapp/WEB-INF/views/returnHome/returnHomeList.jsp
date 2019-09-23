<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

	.pageName label{
		font-weight: bold;
		font-size: 1.5em;
		color:#000;
	}
	
	.pageName tr td:first-child{
		width:60%;
		vertical-align:middle;
	}
	
	.pageName img{
		width:30px;
		height:30px;
	}
	
	.pageName button{
		background:#665b55;
		color:#fff;
		border:none;
		border-radius: 5px; 
		padding-top:5px;
		padding-bottom: 5px;
	}
	
</style>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<img src="${contextPath }/resources/images/house.png" alt="" />
						<label style="font-weight:bold;">귀가동의서</label>
					</td>
					<td id="writeDelete" style="text-align:right;">
		                <c:if test="${ loginUser.usingStatus ne 1 }">
							<!-- 로그인한 사람이 학부모일  경우 작성하기버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) -->
			                <c:if test="${ loginUser.classification eq '학부모' }">
								<button id="contentsWrite" onclick="location.href='returnHomeWrite.rh'">작성하기</button>
			                </c:if>
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
						<c:if test="${ loginUser.classification eq '원장님' ||  loginUser.classification eq '선생님' }">
							<select name="kidsNameList" id="kidsNameList">
									<option value="000">전체 원아 보기</option>
								<c:forEach var="childrenList" items="${list}" varStatus="listStatus">
									<option value="00${listStatus.count }"><c:out value="${childrenList.childrenName}" escapeXml="false"/></option>
								</c:forEach>
							</select>
						</c:if>
					</td>
					<td style="text-align:right;">
						<input type="date" />
					</td>
				</tr>		
			</table>
		</div>
		<br />
		<div class="returnHomeList">
			<c:forEach var="rhList" items="${ rhList }" varStatus="rhStatus">
				<div class="returnHomeSummary" >
					<form action="selectReturnHomeDetail.rh">
						<input type="hidden" name="homeNo" value="<c:out value='${ rhList.homeNo }'/>"/>
						<table>
							<tr>
								<td colspan="2"><c:out value="${ rhList.childrenName }"/><p></p></td>
							</tr><tr>
								<td colspan="2"><c:out value="${ rhList.writeDate }"/></td>
							</tr><tr>
								<td width="50%"><img src="${ contextPath }/resources/images/car.png" alt="" />귀가방법</td>
								<td><c:out value="${ rhList.homeWay }"/></td>
							</tr><tr>
								<td><img src="${ contextPath }/resources/images/alarm-clock.png" alt="" />시간</td>
								<td><c:out value="${ rhList.homeTime }"/></td>
							</tr><tr>	
								<td><img src="${ contextPath }/resources/images/family.png" alt="" />보호자</td>
								<td><c:out value="${ rhList.parentsName }"/></td>
							</tr>
						</table>
						<button onclick="submit" hidden></button>
					</form>
				</div>
			</c:forEach>
		</div>
		
		<div id="paginArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1 }">
				<c:url var="blistBack" value="/returnHomeMain.rh">
					<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
				</c:url>
				<a href="${ blistBack }">[이전]</a> &nbsp;
			</c:if>
			
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="red" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="returnHomeMain.rh">
						<c:param name="currentPage" value="${ p }"/>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			</c:forEach>
			
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="returnHomeMain.rh">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
				</c:url>
				<a href="${ blistEnd }">&nbsp; [다음]</a>
			</c:if>
			<c:if test="${ pi.currentPage >= pi.maxPage }">
				&nbsp; [다음]
			</c:if>
		</div>
		
		
		<div class="printBtnArea">
			<button>출력 및 다운로드</button>
		</div>
		
	</div>
	
	<script>
	$(document).ready(function(){
		$(".returnHomeSummary").on("click", function(){
			var selectform = this.children[0];
			var selectBtn = selectform.children[2];
			console.log(selectBtn);
			selectBtn.click();
		});
	});
	
	
	</script>
</body>
</html>



































