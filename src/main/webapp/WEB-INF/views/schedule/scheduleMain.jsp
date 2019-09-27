<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	padding-top: 100px;
	padding-left: 3%;
	padding-right: 3%;
}

.pageName label {
	font-weight: bold;
	font-size: 1.5em;
}

.pageName tr td:first-child {
	width: 60%;
}

.pageName img {
	width: 30px;
	height: 30px;
}

.pageName button {
	background: #665b55;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding-top: 5px;
	padding-bottom: 5px;
}

.calendarArea {
	margin: 0 auto;
	text-align: center;
	align: center;
	color: #fff;
}
</style>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<jsp:include page="../common/menubar.jsp" />
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table width=100%>
				<tr>
					<td><img src="${contextPath }/resources/images/schedule.png"
						alt="" /><label
						style="font-weight: bold; font-size: 20px !important;">일정표</label>
					</td>
					<td id="writeDelete" style="text-align: right;">
						<!-- 로그인한 사람이 학부모일  경우 작성하기버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) --> <%-- <c:if test="${ loginUserJob != 1 }">
							<button id="contentsWrite" onclick="writeSchedule();">일정추가</button>
						</c:if> --%>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<div class="calendarArea">
			<jsp:include page="calendar.jsp" />
			<div>

				<!-- 일자 클릭시 메뉴오픈 -->
				<div id="contextMenu" class="dropdown clearfix">
					<ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static; margin-bottom: 5px;">
						<li><a tabindex="-1" href="#">일정 등록하기</a></li>
						<li class="divider"></li>
				</div>
			</div>
		</div>

	<script>
		function writeSchedule(){
			location.href="writeSchedule.pl";
		}
	</script>
</body>
</html>
























