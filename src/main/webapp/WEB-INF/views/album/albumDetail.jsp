<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<style>
	.contentsArea{
		margin-top:100px;
		height:100%;
	}
	
	.albumDetailArea{
		margin:0 auto;
		width:65%;
	}
	
	
	#tagSearchBtn{
		border-radius: 5px;
		border:1px solid #f40;
		background:#f40;
		color:#fff;
		height:30px;
	}
	
	.albumDetailTitle{
		width:100%;
		height:40px;
		background:#fff;
		border-top-left-radius: 10px;
		border-top-right-radius: 10px;
		box-shadow: 0px 0px 5px 2px #f77;
		padding-top:10px;
		padding-bottom: 0px;
		align:center;
		text-align: center;
	}
	
	.albumDetailTitle table{
		font-weight: bold;
	}
	.albumContentsArea{
		width:100%;
		background:#fff;
		box-shadow: 0px 0px 5px 2px #f77;
		padding-top:10px;
		padding-bottom: 0px;
		margin-top:10px;
		
	}
	
	.smallAlbum{
		background:#fff;
		width:20%;
		display: inline-block;
		margin-top: 1%;
		margin-right: 2%;
		margin-bottom: 3%;
		margin-left: 2%;
		
	}
	#writeDelete button{
		border-radius: 5px;
		border:1px solid #f40;
		background:#f40;
		color:#fff;
		height:30px;
	}
	
	#albumTitle{
		font-weight: bold;
	}
	
	#thumbnailImg{
		border:2px solid #ddd;
		margin:0 auto;
		margin-top:5px;
		width:90%;
		height:80px;
	}
	
	.replyArea{
		width:100%;
		background:#fff;
		border-bottom-left-radius: 10px;
		border-bottom-right-radius: 10px;
		box-shadow: 0px 0px 5px 2px #f77;
		padding-top:10px;
		padding-bottom: 20px;
		margin-top:10px;
		
		
	}
	
	#uploadReply{
		border-radius: 5px;
		border:1px solid #f40;
		background:#f40;
		color:#fff;
		height:30px;
	}
</style>
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
				<p>오늘은 아이들이 서로 물총놀이를 함으로써 아이들끼리 더 친해질 수 있는 기회를 가져보았습니다.</p>
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
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>
