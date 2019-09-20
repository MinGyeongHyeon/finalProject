<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	.pageName table{
		font-weight: bold;
		font-size: 1.5em;
	}
	
	.pageName tr td:first-child{
		width:60%;
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
	.summaryDiv{
		display: inline-block;
		background:#fff;
		width:30%;
		height:180px;
		margin-left: 1%;
		margin-right: 1%;
		margin-top: 3%;
	}
	.summaryDiv table{
		width:100%;
		
	}
	
	.summaryDiv img{
		width:40px;
		height:40px;
		border-radius: 20px;
	}
	
	.summaryDiv tr:first-child {
		text-align: right;
	}
	
	.summaryDiv tr:nth-child(2) {
		font-weight: bold;
		font-size: 1.2em;
	}
	
	.summaryDiv tr:last-child{
		height:70px;
		font-size: 0.8em;
		vertical-align: bottom;
		
	}
	
	.printBtn{
		background:#F95;
		color:#fff;
/* 		font-weight: bold;
		border-radius: 5px;
		border: none;
		width:80px;
		padding-top: 5px;
		padding-bottom: 5px; */
	}
	
	.summaryDiv:hover {
	background:#fafafa;
	cursor:pointer;
}
	
</style>

<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
	<input type="text" id="userNo2" value="${ loginUser.userNo }" hidden>
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<img src="${ contextPath }/resources/images/homework.png" alt="" />
						<label style="font-weight:bold;">알림장</label>
					</td>
					<td style="text-align:right">
						<button class="btn btn-warning" onclick="goSomeoneWrite()">여러명 보내기</button>
						<button class="btn btn-warning" onclick="goAnnouncementWrite()">작성하기</button>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<div class="searchArea">
			<select name="Classroom" class="searchclassroom">
				<option value="00">전체반 보기</option>
				<option value="01">별님반</option>
				<option value="02">햇님반</option>
				<option value="03">킨더반</option>
				<option value="04">천진반</option>
			</select>
			&nbsp;
			<select name="kinderName" class="searchKinderName">
				<option value="00">전체 원아 보기</option>
				<option value="01">김영지</option>
				<option value="02">민경현</option>
				<option value="03">박찬민</option>
				<option value="04">하민희</option>
				<option value="05">한송이</option>
			</select>
			&nbsp;
			<input type="date" name="searchDate" class="searchDate"/>
		</div>
		<div class="homeworkDiarySummary">
			<!-- <div class="summaryDiv"> -->
			<c:forEach var="l" items="${nList}">
			<div class="summaryDiv">
				<div class="card">
				<table class="tq">
						<tr class="first">
							<td class="tqtq"><c:out value="${l.boardNum}" /></td>
						</tr>
						<tr>
							<td><c:out value="${l.className}"/>교사</td>
							<td width="30px;">
							<img src="${ contextPath }/resources/images/woman.png" alt="" /></td>
						</tr>
						<tr>
							<td class="titleView"><c:out value="${l.boardTitle}"/></td>
						</tr>
						<tr>
							<td><c:out value="${l.boardContent}"/></td>
						</tr>
						<tr>
							<td><c:out value="${l.writeDate}" /></td>
						</tr>
						
				</table>
			</div>	
			</div>
		</c:forEach>
			<!-- </div> -->
		</div>
		<div id="paginArea" align="center">
						<c:if test="${ pi.currentPage <= 1 }">이전 &emsp;</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="homeworklist.hw">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
							</c:url>
							<a href="${ blistBack }">이전</a>
							&emsp;
						</c:if>

						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<font color="#6CC0FF" size="4"><b>[${ p }]</b></font>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="blistCheck" value="homeworklist.hw">
									<c:param name="currentPage" value="${ p }" />
								</c:url>
								<a href="${ blistCheck }">${ p }</a>
							</c:if>
						</c:forEach>


						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="homeworklist.hw">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
							</c:url>
							<a href="${ blistEnd }">&emsp; 다음</a>
						</c:if>
						<c:if test="${ pi.currentPage >= pi.maxPage }"> &emsp; 다음 </c:if>
					</div>
		<button class="btn btn-light"><i class="fas fa-print"></i>&nbsp;&nbsp;출력 및 다운로드</button>
		
	</div>
		<script>
	/* 	function goAnnouncementWrite(){
			location.href="WriteAnnounce.pl";
		}
		
		function goWhoAreYou(){

			location.href="WriteAnnounce.pl";
		} */
		
		$(".card").click(function(){
			var bid = $(this).children().children().eq(0).children().children("td").eq(0).text();
			console.log(bid);
			location.href="homeworkDetail.hw?bid="+bid;
		});
	
	</script>
</body>
</html>






































