<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	    padding-top:60px;
	    padding-left: 3%;
	    padding-right: 3%;
	}
	
	.returnHomeList{
		margin: 0 auto;
	}
	.returnHomeSearchArea{
		margin-left: 2%;
	}
	.returnHomeSearchArea button{
		
	}
	
	.returnHomeSummary{
		width:28%;
		margin-top:40px;
		margin-bottom:20px;
		margin-right:2%;
		margin-left:2%;
		display: inline-block;
		background:#fff;
		height:250px;
		border:1px solid black;
		
	}
	.returnHomeSummary img{
		width:20px;
		height:20px;
	}
	.returnHomeSummary table{
		width:100%;
		margin:0 auto;
		font-size: 0.8em;
	}
	.contentsTable tr td:first-child{
		color: #000;
		font-size: 20px;
		font-weight: bold;
		padding-left: 5%;
	}
	.contentsTable tr td:nth-child(2){
		color: #000;
		font-size: 20px;
		
		font-weight: bold;
	}
	
	.returnHomeSummary:nth-child(3n-2){
		margin-left: 2%;
	}
	.returnHomeSummary table tr:first-child {
		text-align: center;
		
	}
	.returnHomeSummary table tr:nth-child(2) {
		font-weight: bold;
		font-size: 1.3em;
	}
	.returnHomeSummary table tr:nth-child(3) {
		height:40px;
		vertical-align: bottom;
		
	}
	.returnHomeSummary table tr:nth-child(4) {
		height:40px;
		vertical-align: bottom;
	}
	.returnHomeSummary table tr:nth-child(5) {
		height:40px;
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
	
	#paginationTable td{
		width:30px;
		border:1px solid #66f;
		text-align: center;
	}
	#paginationTable td:first-child, #paginationTable td:last-child{
		width:60px;
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
			<form action="returnHomeMain.rh">
				<c:if test="${ loginUser.classification eq '원장님' ||  loginUser.classification eq '선생님' }">
					<select name="kidsNameList" id="kidsNameList" style="margin-top:5px; height:40px; font-weight: bold; border-radius: 10px;">
							<option value="0">전체 원아 보기</option>
						<c:forEach var="childrenList" items="${childrenNameList}" varStatus="listStatus">
							<option value="${childrenList.childrenNo}"><c:out value="${childrenList.childrenName}" escapeXml="false"/></option>
						</c:forEach>
					</select>
					<button style="width:40px; height:40px; background:#fff 0; border:1px solid #339; border-radius: 20px;"><img src='${ contextPath }/resources/images/search.png' /></button>
				</c:if>
			</form>
		</div>
		<br />
		<div id="returnHomeList" class="returnHomeList">
			<c:if test="${ empty rhList }">
				<div style="padding-top:100px; vertical-align: middle; margin: 0 auto;">
					
					<h1 style="margin:0 auto; font-weight:bold; font-size:30px; text-align: center;">작성된 귀가동의서가 없습니다.</h1>
				</div>
			</c:if>
			<c:forEach var="rhList" items="${ rhList }" varStatus="rhStatus">
				<div class="returnHomeSummary" >
					<form action="selectReturnHomeDetail.rh">
						<input type="hidden" name="homeNo" value="<c:out value='${ rhList.homeNo }'/>"/>
						<table class="contentsTable">
							<tr>
								<td colspan="2" style="background:#aad; padding-right: 5%; vertical-align: middle;">
									
								<p style="font-size: 25px; font-weight: 1700;"><c:out value="${ rhList.childrenName }"/>의 귀가동의서</p></td>
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
								<td><c:out value="${ rhList.parentsName }"/>
								</td>
							</tr>
						</table>
						<input type="text" value="${ rhList.reading }" name="reading" hidden />
						<button onclick="submit" hidden></button>
					</form>
				</div>
			</c:forEach>
		</div>
		<c:if test="${not empty rhList }">
				
		<div id="paginArea" align="center" style="margin-bottom: 50px;">
			<table id="paginationTable"><tr>
				<c:if test="${ pi.currentPage <= 1 }">
					<td>
						<b style="font-size: 18px;">이전</b>&nbsp;
					</td>
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<td>
						<c:url var="blistBack" value="/returnHomeMain.rh">
							<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
						</c:url>
						<a href="${ blistBack }" style="font-size: 18px; ">이전</a> &nbsp;
					</td>
				</c:if>
				
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<td>
							<font color="red" style="font-size: 18px; width:20px;"><b>${ p }</b></font>
						</td>
					</c:if>
					<c:if test="${ p ne pi.currentPage }">
						<td>
							<c:url var="blistCheck" value="returnHomeMain.rh">
								<c:param name="currentPage" value="${ p }"/>
							</c:url>
							<a href="${ blistCheck }" style="font-size: 18px; ">${ p }</a>
						</td>
					</c:if>
				</c:forEach>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<td>
						<c:url var="blistEnd" value="returnHomeMain.rh">
							<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
						</c:url>
						&nbsp; <a href="${ blistEnd }" style="font-size: 18px; ">다음</a>
					</td>
				</c:if>
				<c:if test="${ pi.currentPage >= pi.maxPage }">
					<td>
						&nbsp;<b style="font-size: 18px;">다음</b>
					</td>
				</c:if>
				</div>
			</c:if>
		</tr></table>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
	
	
	$(function(){
		var readingYN = $(".returnHomeSummary input[name=reading][value=Y]");
		readingYN.parent().parent().css({'background':'#f0de99', 'border':'2px solid #753'});
		
		$(".returnHomeSummary").on("click", function(){
			var selectform = this.children[0];
			var reading = selectform.children[2].value;
			var selectBtn = selectform.children[3];
			console.log("reading : " + reading);
			console.log(selectBtn);
			selectBtn.click();
		});
	});
	
	
	
	
	</script>
</body>
</html>



































