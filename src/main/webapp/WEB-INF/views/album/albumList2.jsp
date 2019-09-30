<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<link rel="stylesheet" href="${ contextPath }/resources/css/albumCss.css">
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
	
	.summaryDiv{
		display: inline-block;
		background:#fff;
		width:30%;
		height:250px;
		margin-left: 1%;
		margin-right: 1%;
		margin-top: 3%;
	}
	.summaryDiv table{
		width:100%;
		height:100%;
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
		height:40px;
		font-size: 0.8em;
		vertical-align: bottom;
		
	}
	.tqtq{
		width:100%;
		height:100%;
	
	}
	
	.card {
	border: 1px solid #e4e1dd;
	margin-bottom: 20px;
	background-color: white;
    width: 100%;
	border-radius: 3px;
	margin-right: 20px;
	float: left;
	position: relative;
}

.summaryDiv:hover {
	background: #fafafa;
	cursor: pointer;
}
</style>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel"  id="firstContentArea">
		<div class="pageName">
			<table>
				<tr>
					<td>
						<p style="font-weight:bold; font-size:30px;"><i class="far fa-images"></i>앨범</p>
					</td>
					<td id="writeDelete" style="text-align:right;">
						<!-- 로그인한 사람이 학부모가 안닐 경우 삭제버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) -->
						<c:if test="${loginUser.classification eq '선생님'}">
							<button id="contentsWrite" style="margin-right:150">작성하기</button>
						</c:if>
					</td>
				</tr>
			</table>
		</div>	
		<hr />
		<div class="albumListDiv">
			</div>
			<br />
		<c:forEach var="a" items="${album}">
		<div class="summaryDiv" style="wdith:50%">
			<div class="card">
				
					</div>
				</div>
		</c:forEach>
			</div>
		</div>
	<jsp:include page="../common/footer.jsp"/>
	<script>
	$("#contentsWrite").click(function(){
			location.href="albumWhoIn.ab";
		});
	
	$(".card").click(
			function() {
				var bid = $(this).children().children().find("td").eq(0).text();
				console.log(bid);
				location.href = "selectOnt.ab?bid=" + bid;
			});
	</script>
		
</body>


</html>
