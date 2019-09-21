<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
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
</style>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel"  id="firstContentArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">앨범</label>
					</td>
					<td id="writeDelete" style="text-align:right;">
						<!-- 로그인한 사람이 학부모가 안닐 경우 삭제버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) -->
						<c:if test="${ loginUserJob != 1 }">
							<button id="contentsWrite">작성하기</button>
						</c:if>
					</td>
				</tr>
			</table>
		</div>	
		<hr />
		<div class="albumListDiv">
			<div class="dateSearchArea">
				<input type="date" /> ~ <input type="date" /> &nbsp;
				<button onclick="albumListSearch();">검색</button>
			</div>
			<br />
			<div class="albumList">
				<%int sample = 5;
				for(int i = 0; i < sample; i++){%>
				<div class="smallAlbum">
					<div id="thumbnailImg"  style="background-image: url('${ contextPath }/resources/images/woman.png');
												  background-size:cover;">
					</div>
					<table style="width:90%; margin:0 auto;">
						<tr>
							<td colspan="2" rowspan="2">
								<label for="" id="albumTitle">물총놀이</label><br /><p> </p>	
							</td>
						</tr>
						<tr>
						</tr>
						<tr>
							<td style="text-align:left; font-size: 0.7em;">
								<label for="" id="albumDate">2019.8.13</label>
							</td>
							<td style="text-align:right; font-size:0.7em">
								<img src="${ contextPath }/resources/images/camera.png" alt="" width="10px"/><label for="">11</label>
							</td>
						</tr>
					</table>
				</div>
				<%} %>
			</div>
			
		</div>
	<jsp:include page="../common/footer.jsp"/>
	</div>
	<script>
	$("#contentsWrite").click(function(){
			location.href="albumWrite.ab";
		});
	</script>
		
</body>


</html>
