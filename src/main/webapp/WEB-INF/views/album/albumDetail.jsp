<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<link rel="stylesheet" href="${ contextPath }/resources/css/albumCss.css">
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	<jsp:include page="../common/teacherHeader.jsp"/>
	
	<!-- 학부모일경우, 학부모가 아닐경우에 따라 사이드 메뉴 종류 변경 -->
	<c:if test="${ loginUserJob != 0 }">
	<jsp:include page="../common/teacherSideMenu.jsp"/>
	</c:if>
	<c:if test="${ loginUserJob == 3 }">
	<jsp:include page="../common/parentsSideMenu.jsp"/>
	</c:if>
	
	
	<div class="contentsArea">
	<div class="albumDetailArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">앨범</label>
					</td>
					<td id="writeDelete" style="text-align:right;">
						<!-- 로그인한 사람이 학부모가 안닐 경우 삭제버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) -->
						<c:if test="${ loginUserJob != 1 }">
							<button id="contentsWrite">삭제</button>
						</c:if>
					</td>
				</tr>
			</table>
		</div>
		<hr style="border:1px solid #f00;"/>
		<div class="albumDetailDiv">
			<div class="albumDetailTitle">
				<table width=95%; style="margin:0 auto;">
				<tr>
					<td>
						<label>물총놀이</label>
					</td>
					<td style="text-align:right;">
						<input type="text" id="tagSearch"/>
						<button id="tagSearchBtn" onclick="tagSearch();">검색</button>
					</td>
				</tr>
				</table>
			</div>
			<div class="albumContentsArea">
				<div class="downloadArea">
					<button id="selectDown">선택 다운로드</button>
					<button id="allDown">전체 다운로드</button>
				</div>
				<div style="width:90%; margin:0 auto;">
					<p>오늘은 아이들이 서로 물총놀이를 함으로써 아이들끼리 더 친해질 수 있는 기회를 가져보았습니다.</p>
				</div>
				<%int sample = 5;
				for(int i = 0; i < sample; i++){%>
				<div class="smallAlbum">
					<input type="checkbox" />
					<div id="thumbnailImg" onclick="" style="background-image: url('${ contextPath }/resources/images/woman.png');
												  background-size:cover;">
					</div>
					<table style="width:90%; margin:0 auto;">
						<tr>
							<td id="tagList">
								<p style="font-size:0.6em;">#민경현, #김진수, #복권석</p>
							</td>
						</tr>
					</table>
					
				</div>
					
					
				<%} %>
			</div>
			<div class="replyArea">
				<h3 style="font-weight:bold; margin-left: 2%;">댓글</h3>
				<table width="95%" style="margin:0 auto;">
					<tr>
						<td rowspan="2">
							<textarea name="replyWrite" id="replyWrite" cols="30" rows="4" style="width:100%; resize:none"></textarea>
						</td>
						<td valign="top">
							<button id="uploadReply">작성</button>
						</td>
					</tr>
					<tr>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
		
	</div>
	</div>
	
	<div class="dummyDiv" style="height:120px"></div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>
